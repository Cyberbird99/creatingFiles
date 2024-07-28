$Extensions=@(".txt",  ".jpeg", ".html", ".php", ".cvs", ".xls", ".pdf" )
$FileCount=10
$DestinationPath="C:\Github Projects\Powershell\creatingFiles"

if(!(Test-Path -Path $DestinationPath)){
    New-Item -ItemType Directory -Path $DestinationPath
}

for ($i=0; $i -lt $FileCount; $i++){
    $FileName = -join ((100..200) | Get-Random -Count 8 | % {[Char]$_})
    $ext=$Extensions[(Get-Random -Minimum 0 -Maximum ($Extensions.Count -1))]
    $Path = Join-Path -Path $DestinationPath -ChildPath "$FileName$ext"
    New-Item -ItemType File -Path $Path
}