# Check for pending updates and install them immediately with administrative privilege
$Session = New-Object -ComObject Microsoft.Update.Session
$Searcher = $Session.CreateUpdateSearcher()
$Criteria = "IsInstalled=0 and Type='Software'"
$SearchResult = $Searcher.Search($Criteria)

if ($SearchResult.Updates.Count -eq 0) {
    Write-Host "No pending updates found."
} else {
    Write-Host "Pending updates found. Installing updates..."

    # Create an update installer with administrative privilege
    $Installer = New-Object -ComObject Microsoft.Update.Installer

    # Set the updates to be installed
    $Installer.Updates = $SearchResult.Updates

    # Force the installation of updates
    $Installer.ForceQuiet = $true

    # Install the updates
    $InstallationResult = $Installer.Install()

    if ($InstallationResult.ResultCode -eq 2) {
        Write-Host "Updates installed successfully. A reboot may be required."
    } else {
        Write-Host "Update installation failed with result code: $($InstallationResult.ResultCode)"
    }
}
