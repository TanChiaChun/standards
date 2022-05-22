$ProjectFolder = Read-Host "Input project folder"

if (Test-Path -Path $ProjectFolder) {
    if ((Get-ChildItem $ProjectFolder | Measure-Object).Count -ne 0) {
        Write-Host "Folder not empty"
        exit 1
    }
}
else {
    New-Item -Name $ProjectFolder -ItemType "directory"
}

New-Item -Path $ProjectFolder -Name ".gitignore" -ItemType "file" -Value "`n"
