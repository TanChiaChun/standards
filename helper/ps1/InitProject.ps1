$ProjectFolder = Read-Host "Input project folder"

if (Test-Path -Path $ProjectFolder) {

}
else {
    New-Item -Name $ProjectFolder -ItemType "directory"
}

New-Item -Path $ProjectFolder -Name ".gitignore" -ItemType "file" -Value "`n"
