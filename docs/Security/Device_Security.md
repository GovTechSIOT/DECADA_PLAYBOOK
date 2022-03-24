# Device Security

**<u>Overview</u>**

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

**<u>Edge Security Best Practice</u>**

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
- Only network ports used by the necessary applications and services are explicitly enabled by network policies.