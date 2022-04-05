# Cloud Infrastructure Security

**<u>Overview</u>**

As DECADA is hosted on GCC Azure, Azure is responsible for protecting the global infrastructure (i.e. hardware, facilities, physical networking).

<div align=center>
<img src="./images/security/cloudSecurity.png"/>
</div>

In additional, GovTech hosts several automated monitoring tools on GCC to detect abnormal and unauthorized activities at ingress and egress points. These tools monitor the server and network usage, port scanning activities, application usage, and unauthorized intrusion attempts. Below are some tools deployed in the environment:
1. Graylog (for application logs)
2. Prometheus Grafana (for event monitoring and alerts )
3. Key Vault (for Key Management System)
4. GCC Azure AD (for login)
5. Access Management (via Cyberark to access production kubernetes)
6. Encrypted Micro-Service
7. Security appliances (i.e. IDS/IPS, DDoS Protection)

?> Sensitive data, defined by built-in and custom rules, is encrypted before being put into files or databases. Decryption happens automatically when data is retrieved through API.
