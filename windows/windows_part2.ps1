Write-Host -ForegroundColor Green 'Creating $Profile'
New-Item -Path $PROFILE -Type File -Force

Write-Host -ForegroundColor Green 'Writing settings to $Profile'
# todo: store theme in this repo and copy to $env:POSH_THEMES_PATH
Out-File -FilePath $PROFILE -InputObject "oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\cobalt2.omp.json" | Invoke-Expression 
$repo = $env:REPO"

Write-Host -ForegroundColor Green 'Opening $Profile to apply changes'
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
. $PROFILE
Set-ExecutionPolicy -ExecutionPolicy Default

# todo: install fira code nerd font
Write-Host -ForegroundColor Green 'Installing OhMyPosh font'
oh-my-posh font install

#todo: install dotnet first
Write-Host -ForegroundColor Green 'Installing dotnet-ef'
dotnet tool install --global dotnet-ef