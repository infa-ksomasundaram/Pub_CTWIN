$S = Get-Service -Name Spooler
Stop-Service -InputObject $S -Force -PassThru
Set-Service -InputObject $S -StartupType Disabled