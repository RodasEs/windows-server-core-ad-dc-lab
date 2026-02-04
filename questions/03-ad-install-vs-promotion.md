Questions below 



**WHEN USING:  

```**

**Install-ADDSForest -DomainName "lab.local" -InstallDNS -Force**

**```**


QUESITON: *When running the cmdlet above, I read that one of the first things it does is of course curate an AD database through a database file called ntds.dit. I had no idea what this was, so I asked what is this file and what does it do?*

(short) ANSWER: The database file is the heart of Active Directory and contains ***OBJECTS*** (All users, computers, and groups), ***ATTRIBUTES*** ( like names, email addresses, and phone numbers), SECURITY DATA (password hashes and Group Policy information), and Schema ( the "blueprint" that defines what those objects and attributes look like). 


QUESTION: *How does the script know what kinds of objects, classes, and attributes to define when creating our domain?*

ANSWER: The hardcoded default schema is defined by industry standards such as, LDAP RFC ( Lightweight Directory Access Protocol | Request for Comments) specifications, Microsoft's design decisions, and years of enterprise requirements. 




