**CONCEPTUAL REINFORCEMENT AND REVIEW FOR INTERNAL MECHANICS BEFORE MOVING INTO MANAGEMENT**



Identity Context and Security Identifiers (SID)


The server has been promoted to a Domain Controller, it serves as the identity authority for the domain "lab.local."



Identity Context:


Now, how does Windows decide what an identity or a Security Principal is allowed to do. The answer is not based on the usernames. Its based on Security Identifiers or SIDs. 



A security principal is any object that can log in or be assigned permissions. 



Those include:


* A user account
* A group
* A computer



These objects will be stored in Active Directory database. 



**WHAT IS A SID?**



A Security Identifier is a unique number which is assigned to every security principal. This is what Windows trusts, not the usernames themselves. 

The username serves as just the "label". The real identity acknowledged by the directory is the SID. 



You could change the username with that specified SID, and Windows will acknowledge it same, but if the SID changes, then permissions will change.



