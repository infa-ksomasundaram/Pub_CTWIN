# Define the name of the service
$serviceName = "wuauserv"

# Check if the service is running
$service = Get-Service -Name $serviceName

if (-not($service.Status -eq "Running")) {
    Write-Host "The service is running."
    Start-Service -Name $serviceName
    Write-Host "Service start."
} else {
    Write-Host "The service is running."
}
