

|QUESTIONS|ANSWERS|
|-|-|
|Why do we need to run Import-Module ActiveDirectory to load the AD module into PowerShell if Active Directory is already running in the background after AD DS installation and domain promotion?|Import-Module ActiveDirectory is required to initiate the tools necessary to work with AD, even though AD is already running, because this allows for memory efficiency instead of constantly reserving space in memory to host these tools, consuming unnecessary memory. So using that command simply loads the AD commands into the session, like putting a car in drive.|
|||
|||
|||



