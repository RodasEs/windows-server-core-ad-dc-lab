## Verifying Pre-Promotion State

Before installing Active Directory, I needed to confirm what context I was operating in. At this stage, the server was a standalone Windows Server with no Active Directory installed.

To verify this, I had to use the following commands since I was operating through the command line.

### Identity Context

```cmd
whoami 
```
This command would return back to me a local user context rather than a domain qualified account. This helped me know that I was not yet part of a domain environment. 

Next I used the following command to gather more detailed system information

```cmd
systeminfo
```

This output as mentioned before displays system configuration, which showed me that in this process of verification, the system was not yet operating as a Domain Controller. The domain field did not indicate a custom domain name as well.

To further validate this, I also attempted to query a domain controller directly using the command:

```cmd
nltest /dsgetdc:lab.local
```

This command response failed because there is no domain name lab.local just yet. Verifying once more that the environment was still in a pre-promotion, standalone state. 

nltest stands for NetLogon Test. This command servers as a Windows built-in utility that is used to query, or test, pr validate Active Directory domain relationships. Especially things related to domain controllers and authentication. A command that asks Windows "Do domains and domain controllers exist, and can I reach them?"

These verification steps helped solidify a clear baseline understanding of our position before processing with an Active Directory installation or domain promotion. 