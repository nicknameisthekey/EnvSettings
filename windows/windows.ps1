Read-Host -Prompt "run as admin, any key to continue"
Write-Host -ForegroundColor Green 'Setting $repo'
[System.Environment]::SetEnvironmentVariable('repo','D:\source', 'Machine')

Write-Host -ForegroundColor Green 'Installing git'
winget install Git.Git  
Write-Host -ForegroundColor Green 'Setting git env variable'
[System.Environment]::SetEnvironmentVariable('PATH', $env:Path + "C:\Program Files\Git\cmd", 'Machine')

Write-Host -ForegroundColor Green 'Setting git user'
git config --global user.name "Vladislav Barsukov"
git config --global user.email "nicknameisthekey@gmail.com"

Write-Host -ForegroundColor Green 'Installing powershell core'
winget install --id Microsoft.Powershell --source winget
Write-Host -ForegroundColor Green 'Installing qBittorrent'
winget install qBittorrent.qBittorrent

Write-Host -ForegroundColor Green 'Installing OhMyPosh'
winget install JanDeDobbeleer.OhMyPosh -s winget

# todo: clone wt json settings
Read-Host -Prompt -ForegroundColor Green 'Execute part 2 in powershell core. Any key to close'