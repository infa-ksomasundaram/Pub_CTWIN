# Define the name of the service
$serviceName = "wuauserv"

# Check if the service is running
$service = Get-Service -Name $serviceName

if ($service.Status -eq "Running") {
    Write-Host "The service is running. Stopping the service..."
    Stop-Service -Name $serviceName
    Set-Service -Name $serviceName -StartupType Manual
    Write-Host "Service stopped and set to Manual."
} else {
    Write-Host "The service has been stopped and set to manual."
}
