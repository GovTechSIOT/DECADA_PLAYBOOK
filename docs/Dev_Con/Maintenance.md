# Maintenance and Management

## Over-The-Air (OTA) Upgrade

**<u>Overview</u>**

Under The maintenance phase, Agencies can leverage on the Over-The-Air (OTA) feature offered by DECADA portal to manage and perform device firmware upgrade(i.e. creating new firmware versions, setting upgrade policies, and deleting firmware versions).

 <div align=center>
<img width="850" src="./images/ota.png"/>
</div>
OTA Overview

**<u>Device SDK for OTA</u>**

The device SDK can be used to encapsulate the messaging interfaces for version reporting and upgrading. Agencies should ensure the new firmware can be installed on devices, reboot, and report the new firmware version to DECADA. For the respective steps and sample code, refer to the below.
- [Installing Device SDK (MQTT)](https://support-cn5.envisioniot.com/docs/device-connection/en/latest/howto/ota/developing_device_ota_mqtt)
- [Installing Device SDK (HTTP/HTTPS)](https://support-cn5.envisioniot.com/docs/device-connection/en/latest/howto/ota/developing_device_ota_http)

?> The upgrade depends on whether the flash on the device has enough physical space. DECADA only provides message channels and file download services for OTA upgrade, and SDKs for Agencies to call. 


**<u>Firmware OTA Upgrade Process</u>**

DECADA supports the following firmware upgrade modes:
**Cloud initiated OTA process:** DECADA pushes the upgrade to the device, upgrading the device to a specified version.

<div align=center>
<img width="700" src="./images/ota2.png"/>
</div>
Cloud-Initiated OTA Process

The devices will start the OTA upgrade process once they receive the request and report their new versions after rebooting. However, whether to perform the OTA upgrade depends on the device settings. Agencies can still add an upgrade confirmation for the downloaded OTA firmware on devices so that they can choose whether to proceed with the upgrading. The partition storing the new firmware is activated only after confirmation.

**Upon device request:** Devices initiate the OTA request and DECADA provides the list of available firmware. The device will then proceed with the OTA upgrade.

<div align=center>
<img width="1500" src="./images/ota3.png"/>
</div>
Upon Device Request

OTA upgrade can be initiated by devices. When devices send the upgrade requests to DECADA, DECADA decides whether the devices fall into any upgrade list. If the device can be upgraded, DECADA sends available firmware to the devices. The upgrade starts after the device confirms the upgrade. Upon device request upgrades require manual intervention and confirmation steps; this provides more flexibility for Agencies to decide whether to upgrade the devices.

**Via DECADA Management Portal**

Agencies can leverage on the existing OTA feature on DECADA to manage their on-boarded devices:
<div align=center>
<img width="1500" src="./images/ota8.png"/>
</div>
Visibility of an OTA Job

Agencies may refer [here](https://support-cn5.envisioniot.com/docs/device-connection/en/latest/howto/ota/developing_device_ota) for the implementation details via the DECADA Management Portal.

?> Agencies can utilize the OTA function to upload any files (i.e. application-logic based/Firmware-based)  if the file meets the following requirement: 1. It is a binary file. 2. Within 100B file size

**Use-case**

Agencies can learn how to develop OTA capabilities in DECADA:
[Quick Start: Developing OTA Capabilities on the Raspberry Pi](https://www.envisioniot.com/docs/device-connection/en/latest/tutorial/upgrading_firmware_ota/developing_ota_capability.html)




## Certificate Lifecycle Management

**Overview**

DECADA provides certificate lifecycle management feature which allows Agencies to deploy and renew certificates used for authentication upon connection.

DECADA has a built-in industry-standard CA service for certificate management purpose. It provides a series of fundamental CA service APIs, including CA setup, certificate issue, certificate renew, certificate revoke, and certificate status query. Certificates for different purposes may be requested and issued from DECADA CA service and the corresponding operation may be completed through API invoke in seconds. 

To ensure that each edge/devices has its exclusive client certificate, the certificate request exchange is performed by the edge during its first power-on procedure. The edge device generates a public certificate request containing the unique device identifier (e.g., serial number, network MAC address) and corresponding private key according to the PKI standard. The certificate request will be forwarded to the DECADA for signing. The issued certificate will then be sent back to the edge device to be stored together with the private key locally.


**Certificate Management Process**

The following diagram illustrate the process of secure communication between the devices (or Edge) and DECADA based on X.509 certificates.

<u>Deployment Phase</u>

<div align=center>
<img width="1500" src="./images/cm.png"/>
</div>
Edge Acquires X.509 Certificate

2a. Agencies provision the edge with the necessary information such as the product key, product secret, serial number, and license and uses these parameters to create the device in DECADA.

2b. DECADA verifies the identity of the edge and creates the device instance in the system, and responds to the edge with the Globally Unique Identifier (GUID) of the device and the device secret.

2c. The edge receives the responses from DECADA, creates key pairs and CSR, calls the API to activate the device, and gets its X.509 certificate.

2d. DECADA receives the request from the edge and after verifying its identity, activates the device and forwards the CSR internally to DECADA CA.

2e. The DECADA CA receives the CSR, issues the certificate and sends it back.

2f. DECADA receives the issued X.509 certificate, binds it with the device id, and then sends the certificate to the edge.

2g.The edge receives the issued X.509 certificate and saves it securely in the local repository (i.e. TPM).


<div align=center>
<img width="1500" src="./images/cm2.png"/>
</div>
On DECADA after Provisioning the self-signed certificate

<u>Communication Phase</u>

During peacetime after the initial certificate has been provisioned:

<div align=center>
<img width="1500" src="./images/cm3.png"/>
</div>

Edge Communicates with the IoT Hub Using the Certificate-based Bi-directional Authentication
3a. The edge validates the certificate of DECADA.

3b. DECADA validates the certificate of the edge. When the TLS handshake in steps 3a and 3b succeeds, the TLS connection will be established between the edge and DECADA.

3c. The edge transmits device telemetry through MQTT over the TLS connection.

3d. DECADA transmits configurations and control signals through MQTT over the TLS connection.

<u>Renewal Phase</u>

As the current certificate validity period is set to 2-Years validity,  Agencies will have to follow the step under “Deployment” when the certificate is due for renewal.
<u>Revocation Phase</u>

Under some circumstances, Agencies needs to revoke the X.509 certificate of the edge:
<div align=center>
<img width="1500" src="./images/cm4.png"/>
</div>
DECADA Revokes the X.509 Certificate of the Edge

4a. DECADA calls the revocation API to revoke the X.509 certificate with the serial number of the certificate.

4b. DECADA CA receives the request internally, verifies the identity, revokes the certificate, and update the CRL.

**Device SDK for Certificate Management**

The device SDK can be used to encapsulate the messaging interfaces for generating of the necessary certificate files and reporting (i.e. private keys, SSL Self-Signed Cert) . Agencies should ensure the new certificate can be installed on devices, reboot, and authenticate with DECADA. For the respective steps and sample code, refer [here](https://github.com/EnvisionIot/enos-cert-tool/blob/master/README.md#configuration).

**Via DECADA Management Portal**

Once the certificate has been installed on the devices, Agencies can utilize the management portal to manage the lifecycle of the installed certificate.
<div align=center>
<img width="1500" src="./images/cm5.png"/>
</div>

?> Agencies will have to create an application via the “application registration” for the access and secret keys with the appropriate access roles in order to generate the relevant certificate files.

**Via API Calls**

Agencies may refer below for the implementation details via the existing API calls.
- [How to Get Root CA Certificate and CRL](https://support.envisioniot.com/docs/enos/en/2.1.0/security/x509_ca/using_ca_service_api.html)
- [Creating your Certificate Signing Request (CSR) File](https://support.envisioniot.com/docs/enos/en/2.1.0/security/x509_ca/creating_csr.html)

**Use-Case**

Agencies can learn how to authenticate a device connection via certificate-based in DECADA:
[Quick Start: Securing Connection Through Certificate-Based Authentication](https://support.envisioniot.com/docs/device-connection/en/latest/quickstart/gettingstarted_java_ssl_connection)
 
Note to Team:
What is the process for renewal?
To confirm the process is as such.
LikeBe the first to like this
No labels




