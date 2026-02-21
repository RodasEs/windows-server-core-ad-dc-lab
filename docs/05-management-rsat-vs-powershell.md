**PURPOSE OF THIS FILE: "HOW DO ADMINISTRATORS INTERACT WITH THIS SYSTEM?" or OPERATIONAL MANAGEMENT**


A bridge the connects:

Domain Controller existence → Creating and managing security principals (users, groups, OUs)





Now that we have established a server that is operating as a Domain Controller, AD is running in the background. Now we must figure out, how do we manage it.


There are two primary ways that an Active Directory can be managed and those are:



* **POWERSHELL (command line)**

* **RSAT (graphical tools)**
  

|POWERSHELL (command line)<br />|RSAT (graphical tools)<br />|
|-|-|
|Management through PowerShell (Server Core Method) means we are managing an AD DS without a GUI as mentioned before. That means management would be performed entirely through the CLI, or Powershell.<br /><br />PowerShell will allow us to: <br /><br />Create users<br />Create groups<br />Create Organizational Units (OUs)<br />Add users to groups<br />Query domain objects<br />Modify permissions<br /><br />Everything is done through commands, which naturally requires precision. It allows for a transparent process and is known for being good for enterprise automation. |RSAT stands for **Remote Server Administration Tools**<br /><br />RSAT provides graphical tools like<br /><br />*Active Directory Users and Computers* or ADUC (Manages users, groups, computers, and OUs in Active Directory)<br /><br />*Group Policy Management Console* or GPMC (Manages Group Policy settings across users and computers in the domain)<br /><br />*Domain Name System Manager* or DNS Manager (manages DNS records and zones, which allow domain resources and Domain Controllers to be located on the network)<br /><br />This is a Windows tool package that is installed on a Windows machine that is joined to the domain<br /><br />Instead of logging in directory into the Domain Controller, as you would if you were on Windows Server Core), administrators can manage Active Directory remotely through a graphical interface. <br />|



**KEY CONEPTS TO KEEP IN MIND SO FAR:**

Active Directory is the identity system.

PowerShell and RSAT are simply put, management interfaces used to control it



The Domain Controller or DC stores and enforces identity ( the administrator for that domain )
The tools are how admins interact with the system. 

