[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -uri 'https://raw.githubusercontent.com/infa-ksomasundaram/Pub_CTWIN/main/CTWin_Scripts.zip' -OutFile 'C:/temp/CTWin_Scripts.zip'
Expand-Archive 'c:/temp/CTWin_Scripts.zip' 'C:/temp/Scripts/'