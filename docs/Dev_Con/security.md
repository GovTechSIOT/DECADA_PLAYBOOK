# Introduction


## Overview

The chapter provides and introduction to how DECADA implements a secured IoT Solution for Agencies. This chapter will provide Agencies insight on the security measures implemented for end-to-end deployment. 
DECADA us a full IM8 compliant and has gone through audit and penetration testing by GovTech’s CSG (Cyber Security Group) in conjunction with CSA.
<div align=center>
<img src="./images/DecadaSystemDiagram.png"/>
</div>

## Secure Connection

For Edge/Devices connecting directly to DECADA, the following will be implemented to ensure secure connections:

- TLS 1.2 Protected Data Tunnel is implemented for data transmissions, which uses public-key cryptography to prevent eavesdropping, tampering, and forgery.
- X.509 certificate based bi-directional authentication enforced for each session
- Support for RSA algorithm to verify signature, with enforcement for 2048 bits.
- VPN Tunnels/IPSec

Devices and Agencies can establish secure communication sessions to API endpoints with the services that DECADA provides. HTTPS is used for accessing the REST APIs. 

?> All data is encrypted during transmission.

## Device Security

### Securing of Devices and EDGE Gateway

To ensure the security of the devices and data transmission, the device needs to be authenticated before exchanging data with DECADA. DECADA supports the following methods:
1. Secret-based One-way Authentication: One way authentication, relatively weak security, enforced by DECADA by default
2. Certificate-based Two-way Authentication: Two way authentication with high security, enabled by Agencies. 

**<u>Secret-based One-way authentication</u>**

Secret-based authentication refers to the authentication of devices based on the authentication keys, i.e. the ProductKey, DeviceKey, and DeviceSecret.

- Product authentication pair: ProductKey and ProductSecret.
  - ProductKey: The global unique identifier issued by DECADA to the product.
  - ProductSecret: The product secret issued by DECADA, which is paired with ProductKey. It is used for the dynamic activation of devices. To initiate the dynamic activation, a device sends a request containing the ProductKey, ProductSecret, and DeviceKey to DECADA to get the DeviceSecret upon its first connection to DECADA.

- Device authentication pair: DeviceKey and DeviceSecret.
  - DeviceKey: A globally unique device identifier that is user-defined or auto-generated when a user registers a device on DECADA.
  - DeviceSecret: The device secret issued by DECADA, which is paired with DeviceKey.

Agencies can perform the following operations in the following order to connect a device to DECADA:
- Registration
Create a device instance in DECADA by either using the console or calling an API. The device will be in an Inactive state.

- Authentication
  You can either dynamically or statically (static is the default authentication method) authenticate a device. Once the device is authenticated, its state changes from Inactive to Online. If an Online device does not send any data to DEDCADA within the specified time range, it will become Offline. When the device is not working properly or you do not want to receive its data, set it to Disabled. The device will then go Offline.    
  <div align=center>
<img src="./images/security2.png"/>
</div>
Securing of Devices

**<u>Certificate-based Two-way authentication</u>**

To ensure that both DECADA and devices validate each other, Agencies will need to enforce the two-way authentication, the certificate-based authentication mechanism.
When the certificate-based authentication is enabled, he following security schemes is enforced to secure the connection between the Devices/Edge and DECADA

- The communication between the Devices/Edge and DECADA is based on certificate-based bi-directional authentication where device certificate* is signed and returned back to the devices for storage. 
- Supports the RSA algorithm to verify the signature and uses a 2048-bit RSA key.


?> Device Certificate is a digital certificate signed and issued by the CA certificate owner (i.e. DECADA). Device certificates are generated in the following process:
> - Authentication keys are generated upon creation of device on DECADA
> - A certificate signing request (CSR) is generated based on the authentication keys.
> - The CSR is sent to the CA.
> - The CA certificate signs and issues the device certificates and registers the device certificates in CA. Meanwhile, the device certificates are also stored in the devices.

Agencies may refer [here](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2258829411/Certificate+Lifecycle+Management) for more information.

### Edge Security Best Practice

Agencies can consider the following best practice to secure the Devices/Edge:
- Create the private key for the edge and keep it secret in a storage such as TPM.
- Use TLS 1.2 when communicating with DECADA and verify that the server certificate is valid.
- Each edge must have a unique public/private key pair.
- The key pair used for authentication by DECADA should not be used for other purposes or communications through other protocols.
- The key must be revoked when the edge is reset.
- When your edge runs on an operating system, make sure your operating system is secured through certain mechanisms, for example, a firewall.
- Ensure that you have a way to update the root CA certificates and CRL.
- Ensure that the clock on the edge is not tampered with
- Ensure the devices has built-in firmware/software upgrade features to ensure that critical patches against security vulnerabilities can be applied manually or automatically
- Unused USB ports are disabled by default to prevent malicious access
- Only network ports used by the necessary applications and services are explicitly enabled by network policies

## Application Security

### Securing of Application Connected to DECADA

DECADA secures the application connected to its northbound interface through the following means:
- Identity and Access Management (via Service Account & Access Keys)
- Network Protection (via Whitelisting of IP Address)
- Data Encryption (via All data in transit and at rest are encrypted)
- Logging and Monitoring
- Security Auditing

**<u>Access Keys</u>**

DECADA requires that all API requests be signed — that is, they must include a digital signature that the platform can use to verify the identity of the requestor. Application developers calculate the digital signature using a cryptographic hash function. The input to the hash function in this case includes the text of the request and the secret access key. The generated API Keys are tagged with specific permission to conduct the relevant actions.
<div align=center>
<img src="./images/security3.png"/>
</div>
<text centre>Example: Access Key Generated to Authorise Users to conduct Certificate Management</centre>

**<u>API Authentication</u>**

Service Account (SA) is taken as the identity of an application in regards to the authentication of DECADA API & Edge API. In the REST API request, the SA is sent to DECADA or the Edge service, which then authenticates the user and performs the required authorized access. Only after the SA is authorized can the application be allowed to access the authorized resources on DECADA.
When authorizing a SA, Agencies can select pre-defined or customized permission policies based on the resources that need to be accessed by the APIs. The resources that need to be accessed by each API and the corresponding operation permissions are given in the API documentation.
<div align=center>
<img src="./images/security4.png"/>
</div>
Example: Permission Granted to Authorize Users to conduct Certificate Management


## Cloud Infrastructure Security

### Securing Cloud Infrastructure

As DECADA is hosted on GCC Azure, Azure is responsible for protecting the global infrastructure (i.e. hardware, facilities, physical networking).
<div align=center>
<img src="./images/security1.png"/>
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
 
## Data Security

## Role-Based Access Control

1. Identity Access Management (IAM)

## Logging Monitoring

1. Users and System Logs

## Service Level Guarantee

### Incident Management
<div align=center>
<img src="./images/security5.png"/>
</div>

- Critical: Total service outage
- Major: Service is functioning with significant degradation
- Minor: On-going service, with no downtime

### Security Incident Management
<div align=center>
<img src="./images/security6.png"/>
</div>


### System Availability
<div align=center>
<img src="./images/security7.png"/>
</div>


### Software Support & Maintenance
<div align=center>
<img src="./images/security8.png"/>
</div>


### Incident Escalation
<div align=center>
<img src="./images/security9.png"/>
</div>

 
### Incident Report
#### Minor (P3) Incident
<div align=center>
<img src="./images/security10.png"/>
</div>

#### Major (P2) Incident
<div align=center>
<img src="./images/security11.png"/>
</div>

#### Critical (P1) Incident
<div align=center>
<img src="./images/security12.png"/>
</div>

## Security Monitoring Needs
** to be confirmed
Previously at HDB, it was mentioned that Govtech has a SOC Ops that Agencies can subscribe the services to monitor on-board devices


