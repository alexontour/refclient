param([string]$BaseUrl='http://127.0.0.1:8087')
$ErrorActionPreference='Stop'
function Assert($condition,$message){if(-not $condition){throw $message}}
function Search($criteria){Invoke-RestMethod "$BaseUrl/api/eimpf/patients/search" -Method Post -ContentType 'application/fhir+json' -Body ([Text.Encoding]::UTF8.GetBytes(($criteria|ConvertTo-Json -Depth 8)))}
$start=Invoke-RestMethod "$BaseUrl/api/eimpf/activity"
$one=Search @{resourceType='Patient';identifier=@(@{value='1001210995'})}
Assert ($one.total -eq 1 -and $one.entry[0].resource.name[0].given[0] -eq 'Max') 'Eindeutige Kennungssuche fehlgeschlagen'
Assert ($one.entry[0].resource.identifier.Count -eq 2) 'ZPI-Testkennungen fehlen'
$bundle=Get-Content "$PSScriptRoot/../ui/template.json" -Raw|ConvertFrom-Json
$patientEntry=$bundle.entry|Where-Object {$_.resource.resourceType -eq 'Patient'}
$patientEntry.resource=$one.entry[0].resource
$patientEntry.resource.id='1'
$cda=Invoke-WebRequest "$BaseUrl/api/v1/Composition" -Method Post -ContentType 'application/fhir+json' -Body ([Text.Encoding]::UTF8.GetBytes(($bundle|ConvertTo-Json -Depth 35)))
Assert ($cda.Content.Contains('1001210995') -and $cda.Content.Contains('ZPI-TEST-1')) 'ZPI-Testkennungen nicht in echtes CDA übernommen'
$many=Search @{resourceType='Patient';name=@(@{family='muster'})}
Assert ($many.total -eq 3) 'Präfix-/Mehrtreffersuche fehlgeschlagen'
$and=Search @{resourceType='Patient';name=@(@{family='Musterpatient';given=@('Max')});birthDate='1995-09-21'}
Assert ($and.total -eq 1) 'Kriterien nicht gemeinsam angewendet'
$missing=Search @{resourceType='Patient';identifier=@(@{value='0000000000'})}
Assert ($missing.total -eq 0 -and $missing.type -eq 'searchset') 'Unbekannte Kennung muss null Treffer liefern'
try{Search @{resourceType='Patient'}|Out-Null;throw 'Leere Suche akzeptiert'}catch{Assert ([int]$_.Exception.Response.StatusCode -eq 400) 'Leere Suche muss HTTP 400 liefern'}
$log=Invoke-RestMethod "$BaseUrl/api/eimpf/activity?after=$($start.lastId)"
$events=@($log.events|Where-Object {$_.component -eq 'MOCK' -and $_.message -like 'ZPI/PDQ-Mock*'})
Assert ($events.Count -ge 9) 'ZPI-/PDQ-Ereignisse fehlen'
Assert (-not (($events|ConvertTo-Json -Depth 5) -match '1001210995|Musterpatient')) 'Patientendaten im ZPI-Protokoll'
Write-Output 'PASS: ZPI/PDQ-Mock, eindeutige und mehrdeutige Suche, AND-Kriterien, Nulltreffer, leere Suche, Testkennungen und spezifisches Protokoll.'
