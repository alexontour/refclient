param([string]$BaseUrl = 'http://127.0.0.1:8087', [switch]$SkipBuild)
$ErrorActionPreference = 'Stop'
Push-Location "$PSScriptRoot/.."
try {
    $composeArgs = @('compose', 'up', '-d', '--wait', '--wait-timeout', '180')
    if (-not $SkipBuild) { $composeArgs += '--build' }
    & docker @composeArgs
    if ($LASTEXITCODE -ne 0) { throw 'Docker-Start fehlgeschlagen. Docker Desktop muss laufen.' }
    foreach ($test in @('smoke.ps1', 'test-zpi.ps1', 'test-activity.ps1', 'test-cda.ps1')) {
        & "$PSScriptRoot/$test" -BaseUrl $BaseUrl
    }
    & docker compose exec -T -e REFCLIENT_URL= -e APPLICATION_ROOT= schulimpfung python -m unittest discover -s tests -p test_app.py -v
    if ($LASTEXITCODE -ne 0) { throw 'Schulimpfungs-Funktionstests fehlgeschlagen.' }
    foreach ($suite in @('test_refclient_dates.py', 'test_refclient_integration.py')) {
        & docker compose exec -T schulimpfung python -m unittest discover -s tests -p $suite -v
        if ($LASTEXITCODE -ne 0) { throw "Python-Tests fehlgeschlagen: $suite" }
    }
    & docker compose --profile tests run --no-deps --rm bruno
    if ($LASTEXITCODE -ne 0) { throw 'Bruno-Tests fehlgeschlagen.' }
    $uiArgs = @('compose', '--profile', 'tests', 'run', '--no-deps', '--rm')
    if (-not $SkipBuild) { $uiArgs += '--build' }
    $uiArgs += 'ui-tests'
    & docker @uiArgs
    if ($LASTEXITCODE -ne 0) { throw 'UI-Tests fehlgeschlagen.' }
    Write-Output "PASS: Mock-Integrationstests, Bruno und UI-Tests erfolgreich. UI: $BaseUrl"
} catch {
    & docker compose logs --tail 80
    throw
} finally {
    Pop-Location
}
