# DNS and Active Directory

## Question

**Why does our Domain Controller use the loopback address (`127.0.0.1`) for DNS instead of simply using a public DNS server like Google's `8.8.8.8`?**

## Answer

When we created the `lab.local` domain, we installed Microsoft's **DNS Server role** on **ADDC01**. This gave ADDC01 the ability to provide DNS services for our Active Directory environment.

This is important because **Active Directory depends on DNS for service discovery**. Domain members use DNS to locate Domain Controllers and services such as LDAP and Kerberos.

Our current configuration is:

- **Domain:** `lab.local`
- **Domain Controller:** `ADDC01`
- **ADDC01 IP Address:** `10.10.10.10`
- **ADDC01 DNS Server Setting:** `127.0.0.1`

---

## DNS Client vs. DNS Server

Before understanding the loopback address, I first needed to understand the difference between a **DNS client** and a **DNS server**.

### DNS Client

A DNS client **asks DNS questions**.

For example:

> "What IP address belongs to `ADDC01.lab.local`?"

### DNS Server

A DNS server **receives DNS queries and provides answers using its DNS records**.

For example:

```text
DNS Client:
"What IP address belongs to ADDC01.lab.local?"

              ↓

DNS Server:
"ADDC01.lab.local = 10.10.10.10"
