param([string]$BaseUrl='http://127.0.0.1:8087')
$ErrorActionPreference='Stop'
function Assert($condition,$message){if(-not $condition){throw $message}}
$docs=Invoke-RestMethod "$BaseUrl/api/eimpf/documents"
Assert ($docs.Count -gt 0) 'Zuerst smoke.ps1 ausführen oder eine Impfung erstellen.'
$view=Invoke-WebRequest "$BaseUrl/api/eimpf/documents/$($docs[0].id)/view"
$patient=($docs[0].bundle.entry | Where-Object {$_.resource.resourceType -eq 'Patient'}).resource
$lot=($docs[0].bundle.entry | Where-Object {$_.resource.resourceType -eq 'Immunization'}).resource.lotNumber
Assert ($view.StatusCode -eq 200 -and ($view.Headers['Content-Type'] -join ',').Contains('text/html')) 'HTML-Darstellung fehlt'
Assert ($view.Content.Contains($patient.name[0].family) -and $view.Content.Contains($lot)) 'Patient oder Charge fehlen in der Darstellung'
Assert (($view.Headers['Content-Security-Policy'] -join ',').Contains("connect-src 'none'")) 'Externe Netzwerkzugriffe nicht gesperrt'
foreach($file in Get-ChildItem "$PSScriptRoot/../examples/cda" -Filter '*.xml'){
 $r=Invoke-WebRequest "$BaseUrl/api/eimpf/cda/view" -Method Post -ContentType 'application/xml' -Body ([System.IO.File]::ReadAllBytes($file.FullName))
 Assert ($r.Content.Contains('Johannes') -and $r.Content.Contains('Impfungen')) "Offizielles Beispiel nicht dargestellt: $($file.Name)"
 Write-Output "PASS: $($file.Name)"
}
foreach($xml in @('<ClinicalDocument xmlns="urn:hl7-org:v3">','<other/>','<!DOCTYPE ClinicalDocument [<!ENTITY x SYSTEM "file:///etc/passwd">]><ClinicalDocument xmlns="urn:hl7-org:v3"><code code="11369-6"/><title>&x;</title></ClinicalDocument>')){
 try{
  Invoke-WebRequest "$BaseUrl/api/eimpf/cda/view" -Method Post -ContentType 'application/xml' -Body ([System.Text.Encoding]::UTF8.GetBytes($xml)) | Out-Null
  throw 'Ungültiges XML akzeptiert'
 }catch{Assert ([int]$_.Exception.Response.StatusCode -eq 400) 'Erwartet HTTP 400 bei ungültigem XML/DTD'}
}
Write-Output 'PASS: gespeichertes CDA → ELGA-HTML, Patienten-/Chargendaten, offizielle CDA-Beispiele und Ablehnung ungültiger XML/DTD.'
