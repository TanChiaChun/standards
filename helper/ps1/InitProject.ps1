<#
    Variables
#>
$Readme = @(
    "# Project`n"
    "## Setup"
    ""
) -join "`n"
$ProjectFolder = Read-Host "Input project folder"

<#
    Main
#>
if (Test-Path -Path $ProjectFolder) {
    # Exit if project folder exist & not empty
    if ((Get-ChildItem $ProjectFolder | Measure-Object).Count -ne 0) {
        Write-Host "Folder not empty"
        exit 1
    }
}
else {
    # Create project folder if not exist
    New-Item -Path $ProjectFolder -ItemType "directory"
}

New-Item -Path $ProjectFolder -Name ".gitignore" -ItemType "file" -Value "`n"
New-Item -Path $ProjectFolder -Name "README.md" -ItemType "file" -Value $Readme
