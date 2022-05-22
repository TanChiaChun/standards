$ProjectFolder = Read-Host "Input project folder"

New-Item -Path $ProjectFolder -Name ".gitignore" -ItemType "file" -Value "`n"
