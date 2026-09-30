I had to ask myself: Why does our Domain Controller use the loopback address (127.0.0.1) for DNS instead of simply using a public DNS server like Google’s 8.8.8.8?
vz


What is the difference between DNS Client and DNS Server. 
DNS Clieint is the thing that asks "What IP address belongs to addc01.lab.local?"
DNS server is the thing that reicieves that quesiotion and snwerers it or resolves the domain name to the correct associated IP address.
FOR EXAMPLE: It means:

“The DNS client on this computer should send its DNS queries to the DNS server located at 127.0.0.1.”

Question:
Why do we need to install and configure DNS when creating an Active Directory Domain Controller?

Answer:
Active Directory depends on DNS for service discovery. Before a domain-joined computer can authenticate a user or access domain resources, it needs to find the Domain Controller and the services it provides.

DNS answers questions such as:

Where is a Domain Controller for lab.local?
Which server provides LDAP?
Which server provides Kerberos?
What IP address belongs to ADDC01.lab.local?

For example:

CLIENT01
   │
   │ "Where is a DC for lab.local?"
   ▼
DNS
   │
   │ "ADDC01.lab.local → 10.10.10.10"
   ▼
CLIENT01 contacts ADDC01

Key idea: DNS helps a computer find the service. Active Directory then provides the directory/identity information, and protocols such as Kerberos handle authentication.

