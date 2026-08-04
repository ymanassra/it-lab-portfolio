# Windows Systems Administration Lab Portfolio

Five hands-on labs building and troubleshooting a Windows Server domain in
Microsoft Azure. Each lab documents what I built, the problems I hit, and how
I diagnosed them.

**Certifications:** CompTIA Security+ (SY0-701) · CompTIA Network+ (N10-009)

## Environment

- Windows Server 2025 domain controller — AD DS, DNS, Group Policy
- Windows 11 domain-joined client
- Microsoft Azure — virtual network, NSGs, RDP
- Jira Service Management — ticketing

## Labs

| # | Lab | Skills demonstrated |
|---|-----|---------------------|
| 01 | [Active Directory](./01-active-directory) | AD DS, OU design, security groups, Group Policy, NTFS & share permissions, domain join |
| 02 | [Service Desk Ticketing](./02-ticketing) | Jira Service Management, ticket documentation, prioritization |
| 03 | [Windows Troubleshooting](./03-windows) | Event Viewer, print spooler, effective permissions, sfc/DISM |
| 04 | [Network Troubleshooting](./04-network) | DNS diagnosis, structured connectivity testing, nslookup |
| 05 | [PowerShell Automation](./05-powershell) | Bulk AD provisioning from CSV, idempotent scripting |

## Note

This is a lab environment I built and administered for skill development. It is
not production infrastructure or professional work experience.
