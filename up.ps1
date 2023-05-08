Write-Host "Installing jss cli..."
npm install -g @sitecore-jss/sitecore-jss-cli@latest

$rootLocation = Get-Location

Write-Host "Setting up your Next.js application..."

$nextJsLocation = Read-Host -Prompt "Provide your Next.js application location (e.g. C:\Projects\BasicCompany\src\Project\BasicCompany\basic-company)"

Set-Location $nextJsLocation
jss setup

Write-Host "Deploying your Next.js config..."
jss deploy config

Set-Location $rootLocation

Write-Host "Starting your Docker environment..."

docker compose up -d