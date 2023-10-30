Invoke-WebRequest -Uri 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-8.10.3-windows-x86_64.zip' -OutFile 'C:/temp/Filebeat.zip'
Expand-Archive 'C:/temp/CT-Agents/Filebeat.zip' 'C:/temp/CT-Agents/CT-Agent/'
Rename-Item -Path 'C:/temp/CT-Agents/CT-Agent/filebeat-8.10.3-windows-x86_64' -NewName Filebeat
powershell.exe 'C:/temp/CT-Agents/CT-Agent/Filebeat/install-service-filebeat.ps1'