param([string]$BaseUrl='http://127.0.0.1:8087')
$ErrorActionPreference='Stop'
function Assert($condition,$message){if(-not $condition){throw $message}}
$start=Invoke-RestMethod "$BaseUrl/api/eimpf/activity?after=0"
$bundle=Get-Content "$PSScriptRoot/../ui/template.json" -Raw | ConvertFrom-Json
$bundle.identifier.value=[guid]::NewGuid().ToString()
$body=[System.Text.Encoding]::UTF8.GetBytes(($bundle | ConvertTo-Json -Depth 35))
$saved=Invoke-WebRequest "$BaseUrl/api/eimpf/documents" -Method Post -ContentType 'application/fhir+json' -Body $body
$requestId=($saved.Headers['X-Request-ID'] -join '')
$log=Invoke-RestMethod "$BaseUrl/api/eimpf/activity?after=$($start.lastId)"
$trace=@($log.events | Where-Object {$_.requestId -eq $requestId})
Assert ($trace.Count -ge 8) 'Anfrage nicht vollständig protokolliert'
Assert (@($trace | Where-Object {$_.component -eq 'MOCK' -and $_.message -like '*Upload erfolgreich*'}).Count -eq 1) 'Mock-Ablage fehlt'
Assert (@($trace | Where-Object {$_.component -eq 'REFCLIENT' -and $_.message -like '*CDA erzeugt*'}).Count -eq 1) 'Reale CDA-Erzeugung fehlt'
Assert ($trace[-1].message -match 'HTTP 201.*ms') 'HTTP-Status/Laufzeit fehlen'
Assert (@($log.events | Where-Object {$_.id -le $start.lastId}).Count -eq 0) 'Cursor liefert alte Ereignisse'
$again=Invoke-RestMethod "$BaseUrl/api/eimpf/activity?after=$($log.lastId)"
Assert ($again.events.Count -eq 0) 'Protokollabfrage erzeugt eigene Ereignisse'
$id=[guid]::NewGuid().ToString()
try{Invoke-WebRequest "$BaseUrl/api/eimpf/documents/$id/cda" | Out-Null; throw 'Fehlendes Dokument akzeptiert'}catch{Assert ([int]$_.Exception.Response.StatusCode -eq 404) 'HTTP 404 erwartet'}
$failed=Invoke-RestMethod "$BaseUrl/api/eimpf/activity?after=$($log.lastId)"
Assert (@($failed.events | Where-Object {$_.component -eq 'MOCK' -and $_.level -eq 'ERROR'}).Count -eq 1) 'Mock-Fehler fehlt'
Assert (@($failed.events | Where-Object {$_.message -match 'HTTP 404'}).Count -eq 1) 'Anfragefehler fehlt'
Assert (-not (($trace | ConvertTo-Json -Depth 6) -match 'Musterpatient|6122031523|<ClinicalDocument')) 'Dokumentinhalte im Protokoll'
Write-Output 'PASS: tatsächliche Refclient-/Mock-Aktivitäten, gemeinsame Anfrage-ID, Status/Laufzeit, Cursor, Fehlerpfad und keine Selbstprotokollierung.'
