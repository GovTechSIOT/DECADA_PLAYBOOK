# Secure Connection

**<u>Overview</u>**

For Edge/Devices connecting directly to DECADA, the following will be implemented to ensure secure connections:

- TLS 1.2 Protected Data Tunnel is implemented for data transmissions, which uses public-key cryptography to prevent eavesdropping, tampering, and forgery.
- X.509 certificate based bi-directional authentication enforced for each session
- Support for RSA algorithm to verify signature, with enforcement for 2048 bits.
- VPN Tunnels/IPSec

Devices and Agencies can establish secure communication sessions to API endpoints with the services that DECADA provides. HTTPS is used for accessing the REST APIs. 

?> All data is encrypted during transmission.