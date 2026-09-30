# DNS and Active Directory

While configuring DNS for my Domain Controller, I had to ask myself:

> **Why does Active Directory need its own DNS server, and why does ADDC01 use the loopback address (`127.0.0.1`) instead of simply using a public DNS server like Google's `8.8.8.8`?**

To answer this, I first needed to understand the relationship between **Active Directory, DNS clients, DNS servers, and DNS-based service discovery**.

---

## Why Does Active Directory Need DNS?

Active Directory depends heavily on **DNS for service discovery**.

Before a domain-joined computer can authenticate a user or access domain resources, it first needs to locate a Domain Controller and the services that Domain Controller provides.

DNS helps answer questions such as:

- Where is a Domain Controller for `lab.local`?
- What IP address belongs to `ADDC01.lab.local`?
- Which server provides LDAP?
- Which server provides Kerberos?

For example:

```text
CLIENT01
    │
    │ "Where is a Domain Controller for lab.local?"
    ▼
DNS Server
    │
    │ "ADDC01.lab.local → 10.10.10.10"
    ▼
CLIENT01 contacts ADDC01

### How ADDC01 and CLIENT01 Reach the DNS Server

When we created our domain, we installed Microsoft's **DNS Server role** on **ADDC01**, giving the server the ability to provide DNS services for our Active Directory environment.

ADDC01's DNS client uses **`127.0.0.1`**, the IPv4 **loopback address**. This tells ADDC01 to send its DNS queries to the **DNS Server service running on itself**.

> **`127.0.0.1` = "Send my DNS queries to the DNS Server running on this computer."**

If another device, such as **CLIENT01**, needs DNS, it cannot use `127.0.0.1` because the loopback address always points back to the device using it. On CLIENT01, `127.0.0.1` would point back to CLIENT01—not ADDC01.

Instead, CLIENT01 uses **`10.10.10.10`**, ADDC01's actual network IP address, to send DNS queries across the network to the DNS Server running on ADDC01.

