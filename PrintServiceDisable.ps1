# Define the name of the service
$serviceName = "Spooler"

# Check if the service is running
$service = Get-Service -Name $serviceName

if ($service.Status -eq "Running",$service.StartType -eq "Disabled") {
    Write-Host "The service is running. Stopping the service..."
    Stop-Service -Name $serviceName
    Set-Service -Name $serviceName -StartupType Disabled
    Write-Host "Service stopped and Disabled."
} else {
    Write-Host "The service has been stopped and Disabled."
}
