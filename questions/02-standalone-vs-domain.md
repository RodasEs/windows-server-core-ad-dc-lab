Questions:

Is installing the AD DS (Active Directory Domain Services) package what turns the server into Active Directory? Or is it the step where we name the domain?

ANSWER:

Installing the AD DS role ( the package / binaries) ONLY installs the software required to support Active Directory.



The server BECOMES a Domain Controller when we run the powershell scripg: 

```powershell

Install-ADDSForest -DomainName "lab.local" -InstallDNS -Force

```

1. The Active Directory database (NTDS.dit) is created
2. SYSVOL is configured
3. The server is configured to respond to domain authentication requests



After reboot, it is officially a Domain Controller.

