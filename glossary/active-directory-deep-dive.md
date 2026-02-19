**Windows Server Core: A complete operating system minimal installation option of Windows Server with no GUI. It is managed through a command line or remotely and it has a smaller footprint with fewer updates, and better security since there's less software involved.**

Act**ive Directory Domain Services (AD DS): A server role you install on top of the core Windows Server OS that provides directory services. Once you promote this software package you've installed on top of the OS, runs Active Directory database and handles authentication, authorization, and directory queries as background services.**

Separating AD and DS:

**AD**: The directory database that stores users, computers, groups, and handles authentication.

DS: The services that store, organize, and provide access to directory information.



**Forest**: The outermost boundary of your Active Directory (or top level container), which is the foundational configuration for the domains, user, computers that automatically trust each other, sharing those same configurations (security boundary). Basically the entire AD environment that gets initialize with the domain name.

In context of our script:

When we run     Install-ADDSForest -DomainName "lab.local",    we're:



* Activating the AD DS role
* Creating a brand new Forest named "lab.local"
* Making this server the first DC in that forest
* Initializing the AD database that will store all directory objects



"**AD DC promotion" meaning: promoting a Windows Server to become a Domain Controller in Active Directory. So that means, a regular Windows Server gets elevated from being a standalone or member server to then becoming a Domain Controller or DC. This transforms it into a core infrastructure server that stores and manages the Active Directory database.**

This allows us to do the following:



* The DC can authenticate users and computer when they log in, and control what resources they can have access to based on their provided permissions
* The DC can manage users, computers, groups, and organizational units from the central directory service instead of managing each machine individually
* You can create and enforce policies across the entire domain (Group Policy)

If you have multiple DCs, each a different server (DC1, DC2, DC3), they are able to replicate the AD database between each other, providing redundancy (no single point of failure, a vulnerability for accessibility) and load balancing (instead of 1000 users all on one DC, you can spread requests across multiple DCs)

