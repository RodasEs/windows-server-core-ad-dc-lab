In the beginning, I was confused about why I couldn’t find the GUI or Server Manager until I identified that I was using a Windows Server Core installation through the \*\*systeminfo\*\* command.



I appreciated this platform more in the end because it provided a more explicit learning process with minimal abstraction. Everything had to be done intentionally through the command line, which made the system behavior clearer rather than hidden behind a graphical interface.



I also did some side research and found that, from a security standpoint, an Active Directory environment operated through the command line presents a smaller attack surface than one running a full GUI. This is because GUI-based systems introduce additional components and services, such as GUI-related DLL files, which can increase the number of potential vulnerabilities. These components can potentially be manipulated maliciously, exposing operating system application processes related to account information and privilege escalation.

