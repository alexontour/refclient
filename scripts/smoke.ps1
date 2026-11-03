param([string]$BaseUrl='http://127.0.0.1:8087')
$ErrorActionPreference='Stop'
function Assert($condition,$message){if(-not $condition){throw $message}}
$health=Invoke-RestMethod "$BaseUrl/health"
Assert ($health.mode -eq 'external-mock' -and $health.cda -eq 'real-husky') 'Echte CDA-Logik nicht aktiv'
$page=Invoke-WebRequest "$BaseUrl/"
Assert ($page.Content.Contains('Impfdokument erstellen')) 'eImpfpass-UI fehlt'
$vaccines=Invoke-RestMethod "$BaseUrl/api/eimpf/vaccines"
Assert ($vaccines.Count -gt 10) 'Impfstoffkatalog fehlt'
$bundle=Get-Content "$PSScriptRoot/../ui/template.json" -Raw | ConvertFrom-Json
$bundle.identifier.value=[guid]::NewGuid().ToString()
$immunization=($bundle.entry | Where-Object {$_.resource.resourceType -eq 'Immunization'}).resource
$immunization.lotNumber='SMOKE-'+[guid]::NewGuid().ToString().Substring(0,8)
$body=$bundle | ConvertTo-Json -Depth 35
$bytes=[System.Text.Encoding]::UTF8.GetBytes($body)
$preview=Invoke-WebRequest "$BaseUrl/api/v1/Composition" -Method Post -ContentType 'application/fhir+json' -Body $bytes
[xml]$cda=$preview.Content
Assert ($cda.DocumentElement.LocalName -eq 'ClinicalDocument') 'Kein echtes CDA-Dokument'
Assert ($preview.Content.Contains($immunization.lotNumber)) 'Charge fehlt im CDA'
$saved=Invoke-RestMethod "$BaseUrl/api/eimpf/documents" -Method Post -ContentType 'application/fhir+json' -Body $bytes
$parsed=($saved.bundle.entry | Where-Object {$_.resource.resourceType -eq 'Immunization'}).resource
Assert ($parsed.lotNumber -eq $immunization.lotNumber) 'CDA-Rücklesen verliert Charge'
Assert ($parsed.vaccineCode.coding[0].code -eq $immunization.vaccineCode.coding[0].code) 'CDA-Rücklesen verliert Impfstoff'
$xml=Invoke-WebRequest "$BaseUrl$($saved.cdaUrl)"
Assert ($xml.Content.Contains($immunization.lotNumber)) 'Abruf verliert gespeicherten CDA-Inhalt'
$listed=Invoke-RestMethod "$BaseUrl/api/eimpf/documents"
Assert (@($listed | Where-Object {$_.id -eq $saved.id}).Count -eq 1) 'Dokument nicht auffindbar'
$immunization.vaccineCode.coding[0].code='INVALID'
try{
 Invoke-RestMethod "$BaseUrl/api/eimpf/documents" -Method Post -ContentType 'application/fhir+json' -Body ([System.Text.Encoding]::UTF8.GetBytes(($bundle|ConvertTo-Json -Depth 35))) | Out-Null
 throw 'Unbekannter Impfstoff akzeptiert'
}catch{Assert ([int]$_.Exception.Response.StatusCode -eq 400) 'Erwartet HTTP 400 bei unbekanntem Impfstoff'}
Write-Output "PASS: eImpfpass-UI, Katalog, echte CDA-Erzeugung, CDA-Rücklesen, Impfstoff/Charge, Ablage/Abruf/Suche und Eingabeprüfung. Dokument: $($saved.id)"
