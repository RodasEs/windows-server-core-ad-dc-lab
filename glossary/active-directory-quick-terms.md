Windows Server Core:
A minimal version of Windows Server with no GUI. Managed entirely through the command line.

Standalone Server:
A server not joined to a domain and not acting as a Domain Controller.

Active Directory (AD):
Microsoft’s centralized identity system for managing users and authentication in a network.

Active Directory Domain Services (AD DS):
The Windows Server role that installs Active Directory functionality.

Domain:
A centralized identity environment where users and computers are managed.

Forest:
The top-level container of Active Directory. It defines the overall security boundary.

Domain Controller (DC):
A server that runs Active Directory and handles authentication.

Domain Promotion:
The process of converting a standalone server into a Domain Controller.

Install-ADDSForest:
The PowerShell command used to create a new forest and promote the server.

DNS:
A service that translates domain names into IP addresses. Required for Active Directory.

NTDS.DIT:
The database file where Active Directory stores directory information.

SID (Security Identifier):
A unique ID assigned to users, groups, and computers. Permissions are tied to SIDs, not names.

DSRM:
Directory Services Restore Mode. A recovery mode for Domain Controllers.