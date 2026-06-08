param(
  [int]$Port = 8080
)

$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $Root

Write-Host "B2Scan static site: http://localhost:$Port/"

if (Get-Command py -ErrorAction SilentlyContinue) {
  py -3 -m http.server $Port
} elseif (Get-Command python -ErrorAction SilentlyContinue) {
  python -m http.server $Port
} else {
  Write-Error "Python is required to run the local server. Install Python or serve this folder with any static web server."
}
