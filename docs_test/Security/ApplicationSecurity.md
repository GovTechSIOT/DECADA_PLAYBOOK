# Application Security

**<u>Overview</u>**

DECADA secures the application connected to its northbound interface through the following means:
- Identity and Access Management (via Service Account & Access Keys)
- Network Protection (via Whitelisting of IP Address)
- Data Encryption (via All data in transit and at rest are encrypted)
- Logging and Monitoring
- Security Auditing

**<u>Access Keys</u>**

DECADA requires that all API requests be signed — that is, they must include a digital signature that the platform can use to verify the identity of the requestor. Application developers calculate the digital signature using a cryptographic hash function. The input to the hash function in this case includes the text of the request and the secret access key. The generated API Keys are tagged with specific permission to conduct the relevant actions.
<div align=center>
<img src="./images/security/security3.png"/>
</div>

**<u>API Authentication</u>**

Service Account (SA) is taken as the identity of an application in regards to the authentication of DECADA API & Edge API. In the REST API request, the SA is sent to DECADA or the Edge service, which then authenticates the user and performs the required authorized access. Only after the SA is authorized can the application be allowed to access the authorized resources on DECADA.
When authorizing a SA, Agencies can select pre-defined or customized permission policies based on the resources that need to be accessed by the APIs. The resources that need to be accessed by each API and the corresponding operation permissions are given in the API documentation.
<div align=center>
<img src="./images/security/security4.png"/>
</div>