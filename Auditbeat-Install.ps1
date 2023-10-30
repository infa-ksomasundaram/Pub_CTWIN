Invoke-WebRequest -Uri 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-8.10.3-windows-x86_64.zip' -OutFile 'C:/temp/CT-Agents/Auditbeat.zip'
Expand-Archive 'C:/temp/CT-Agents/Auditbeat.zip' 'C:/temp/CT-Agents/CT-Agent/'
Rename-Item -Path 'C:/temp/CT-Agents/CT-Agent/auditbeat-8.10.3-windows-x86_64' -NewName Auditbeat
powershell.exe 'C:/temp/CT-Agents/CT-Agent/Auditbeat/install-service-auditbeat.ps1'