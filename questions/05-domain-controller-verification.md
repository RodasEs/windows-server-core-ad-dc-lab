QUESTION:

**What does "Domain Controller" actually mean?**

ANSWER: 

A DC is a server that runs Active Directory and is responsible for authenticating identites and enforcing security within a domain. Broadly speaking.

It's the authority that says:


* “Yes, this username/password is valid.”
* “Yes, this computer belongs to the domain.”
* “Yes, this user is allowed to access this resource.”



QUESTION:



**What technically makes a server a Domain Controller?** 



ANSWER:

Once the AD DS role has been installed it is promoted by using either two scripts

```powershell
Install-ADDSForest
```



```powershell
Install-ADDSDomainController
```



1. The Active Directory database (NTDS.dit) is created
2. SYSVOL or System Volume (the folder that distributes domain-wide policies and scripts to all computers in the domain) is configured
3. The server is configured to respond to domain authentication requests



After reboot, it is officially a DOMAIN CONTROLLER.



QUESTION: 


**What changes when a server becomes a DC?**



Before promotion:

* It uses the local Windows SAM (Security Accounts Manager) database for accounts
* it authenticates users locally
* It is just a standalone or member server



After promotion: 

* It uses the Active Directory database (NTDS.dit).
* It authenticates users for the entire domain.
* It becomes the identity authority.



The key transformation is: Authentication moves from local → centralized.

