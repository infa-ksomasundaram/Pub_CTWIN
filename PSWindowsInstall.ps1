Install-PackageProvider -Name NuGet -Force
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
Install-Module -Name PSWindowsUpdate -Force
Import-Module PSWindowsUpdate -Force