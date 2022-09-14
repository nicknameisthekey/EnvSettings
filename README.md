# Windows 
## install git
winget install Git.Git  

[System.Environment]::SetEnvironmentVariable('PATH', $env:Path + "C:\Program Files\Git\cmd", 'Machine')