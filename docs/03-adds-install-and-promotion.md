After verifying I was on a standalone Windows Server Core instance with no existing domain and logged in as a local user, the next step was to switch to local Administrator to gain the administrative privileges required to install server roles and also perform the domain promotion process.

By switching users and escalating privileges locally, we gained the necessary permissions to ensure that the subsequent AD DS installation wand promotion commands were executable. 

Since no domain existed at this point, all administrative authority was validated at the local system level. 


After logging in as a local admin, we proceeded to first install AD DS, which is a Windows Server role that is already included with the OS (adding the components).  The command that we prompted the command line was 


```
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
```



I learned that this command copies AD DS binaries from the Windows Server installation and proceeds to install backround servers and management tools, hence the " -IncludeManagementTools " extension. Preparing the OS to become a Domain Controller. We have successfully applied AD to the disk but AD is not yet active and remains in the standalone state.

Which is why we need to next promote the server, initializing AD DS. We utilize the command:

```
Install-ADDSForest -DomainName "lab.local" -InstallDNS -Force


```


This command performed the following actions:


Created a new Active Directory forest



Defined lab.local as the domain name



Installed and configured DNS



Promoted the server into a Domain Controller 






The Active Directory ADDForest cmdlet created:

* Creates the AD database by implementing the ntds.dit database file

-File name stands for "New Technology Directory Services Directory information Tree", 

-Builds Tables (Store domain data by organizing it by objects, relationships, and permissions), Indexes (which allows us to find data quickly by names, ID, SID, ect), and Partitions (serves to organize data logically through Schema, Configuration, Domain)

* Configures DNS
* Assigns DC roles
* Reboots system




We verified the promotion was successful by utilizing the following commands:

```
systeminfo
```



```
nltest /dsgetdc:lab.local

```


Successfully returned domain controller information, confirming that the domain existed, DNS was functioning and the server was recognized as a Domain Controller. Thus no longer being a Windows Server instance but an acting identity authority for the developed domain environment. 



