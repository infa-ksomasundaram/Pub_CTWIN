# Check for pending updates and install them immediately as administrator
$Session = New-Object -ComObject Microsoft.Update.Session
$Searcher = $Session.CreateUpdateSearcher()
$Criteria = "IsInstalled=0 and Type='Software'"
$SearchResult = $Searcher.Search($Criteria)

if ($SearchResult.Updates.Count -eq 0) {
    Write-Host "No pending updates found."
} else {
    Write-Host "Pending updates found. Installing updates..."
    
    # Elevate to administrator rights
    $ps = [System.Diagnostics.Process]::Start("powershell", "-noprofile -command &{Start-Process PowerShell -ArgumentList 'Install-WindowsUpdate -AcceptAll -AutoReboot -ForceReboot -Verbose' -Verb RunAs}")
    $ps.WaitForExit()
}

# Check if a reboot is required
if ((Get-WmiObject -Class Win32_ComputerSystem).RebootPending) {
    Write-Host "A reboot is required to complete the update installation."
} else {
    Write-Host "Updates installed successfully."
}
