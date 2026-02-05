Write-Host " BELOW IS A POWERSHELL SCRIPT OF INSTALLING AD DS ROLE "

Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

Write-Host " OPTIONAL POWERSHELL SCRIPT TO CHECK STATE OF INSTALL "

Get-WindowsFeature AD-Domain-Services | Format-Table DisplayName, InstallState -AutoSize

Write-Host " END OF THE AD DS ROLE INSTALL ON SERVER CORE "