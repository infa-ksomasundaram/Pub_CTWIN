#github url to download zip file
#Assign zip file url to local variable

$Url = "https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-8.10.3-windows-x86_64.zip"

$DownloadZipFile = "C:\CT-Agents\" + $(Split-Path -Path $Url -Leaf)

$ExtractPath = "C:\CT-Agents\Auditbeat\"

Invoke-WebRequest -Uri $Url -OutFile $DownloadZipFile

$ExtractShell = New-Object -ComObject Shell.Application 

$ExtractFiles = $ExtractShell.Namespace($DownloadZipFile).Items() 

$ExtractShell.NameSpace($ExtractPath).CopyHere($ExtractFiles) 
Start-Process $ExtractPath