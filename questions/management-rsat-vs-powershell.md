

|QUESTION:|ANSWER:|
|-|-|
|Is RSAT a Windows Application like Sysmon and Event Viewer?|No, it is instead a tool package for administrative tools that would be installed on the Windows client machine (W10 or W11). RSAT itself is just the installer/package that delivers all those tools to the machine. But the individual tools themselves are the operating applications. |
|If RSAT is a remote access point for administrators interacting with AD DS, then isn't logging into the DC through Server Core's PowerShell also remote, since you don't have to be the original server host? So how is RSAT different?|In order to utilize a given domain as an admin, you must install the actual Windows Server Core OS onto your device, whether physical or virtual, to access the machine directly. But if you use RSAT, it is a remote tool package that doesn't require you to install the Server OS itself. Instead, it allows you to access the server, still as a domain admin, but via queries sent from a remote access point.|
|||
|||





