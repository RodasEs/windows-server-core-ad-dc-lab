# DNS and Active Directory

## Question

**Why does our Domain Controller use the loopback address (`127.0.0.1`) for DNS instead of simply using a public DNS server like Google's `8.8.8.8`?**

## Answer

When we created our domain, we installed Microsoft's **DNS Server role** on **ADDC01**, giving the server the ability to provide DNS services for our Active Directory environment. ADDC01's DNS client uses `127.0.0.1`, the IPv4 loopback address, which tells it to send its DNS queries to the DNS Server service running on itself. If another device such as **CLIENT01** needs DNS, it cannot use `127.0.0.1`, because loopback would point CLIENT01 back to itself. Instead, CLIENT01 uses `10.10.10.10`, ADDC01's actual IP address, to send DNS queries across the network to the DNS Server running on ADDC01.

This relationship can be summarized as:

- **ADDC01 → `127.0.0.1`**: Send DNS queries to the DNS Server running on myself.
- **CLIENT01 → `10.10.10.10`**: Send DNS queries across the network to the DNS Server running on ADDC01.

Both addresses ultimately allow the respective DNS clients to reach the **same DNS Server service running on ADDC01**.

---

## What Is the Difference Between a DNS Client and a DNS Server?

A **DNS client** is the component that asks a DNS question.

For example:

> "What IP address belongs to `ADDC01.lab.local`?"

A **DNS server** is the service that receives the DNS query and attempts to answer it using its DNS records.

For example:

```text
DNS Client:
"What IP address belongs to ADDC01.lab.local?"

              ↓

DNS Server:
"ADDC01.lab.local = 10.10.10.10"
