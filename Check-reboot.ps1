if((Get-Item "HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update\RebootRequired" -ErrorAction SilentlyContinue).Property) {
  write-output "reboot pending" -Verbose

  Restart-Computer -Force -Verbose
}
else {
write-output "No reboot required"}