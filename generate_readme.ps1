$CurrentText = Get-Content -path README.template.md -raw
$UpdateText = $CurrentText -replace '%%%CURRENTTIME%%%', (Get-Date -Format s)
$UpdateText | Set-Content -Path README.md
