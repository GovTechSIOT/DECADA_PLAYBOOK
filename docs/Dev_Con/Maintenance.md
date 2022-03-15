# Maintenance and Management

## Over-The-Air (OTA) Upgrade

**<u>Overview</u>**
Under The maintenance phase, Agencies can leverage on the Over-The-Air (OTA) feature offered by DECADA portal to manage and perform device firmware upgrade(i.e. creating new firmware versions, setting upgrade policies, and deleting firmware versions).

 <div align=center>
<img width="850" src="./images/ota.png"/>
</div>
OTA Overview

**<u>Device SDK for OTA</u>**
The device SDK can be used to encapsulate the messaging interfaces for version reporting and upgrading. Agencies should ensure the new firmware can be installed on devices, reboot, and report the new firmware version to DECADA.
The sample codes below shows the connection initiated from devices to be connected to DECADA:


<!-- tabs:start -->
#### **Code**
```
from enos.message.downstream.ota.OtaUpgradeCommand import OtaUpgradeCommand
from enos.message.upstream.ota.OtaGetVersionRequest import OtaGetVersionRequest
from enos.message.upstream.ota.OtaProgressReportRequest import OtaProgressReportRequest
from enos.message.upstream.ota.OtaVersionReportRequest import OtaVersionReportRequest
import enos.core.constant.OTAUpdateFailureCause as OTAUpdateFailureCause

def ota_get_version_report():
    ota_get_version_report_request = OtaGetVersionRequest.builder() \
        .set_product_key(SampleHelper.GW_PRODUCT_KEY)\
        .set_device_key(SampleHelper.GW_DEVICE_KEY) \
        .build()
    ota_get_version_report_response = client.publish(ota_get_version_report_request)
    if ota_get_version_report_response:
        print('ota_get_version_report_response: %s' % ota_get_version_report_response.get_code())

def ota_report_progress(progress, desc):
    ota_report_progress_request = OtaProgressReportRequest.builder() \
        .set_product_key(SampleHelper.GW_PRODUCT_KEY) \
        .set_device_key(SampleHelper.GW_DEVICE_KEY) \
        .set_step(progress) \
        .set_desc(desc) \
        .build()
    ota_report_progress_response = client.publish(ota_report_progress_request)
    if ota_report_progress_response:
        print('ota_report_progress_response: %s' % ota_report_progress_response.get_code())

def ota_version_report(version):
    ota_version_report_request = OtaVersionReportRequest.builder() \
        .set_product_key(SampleHelper.GW_PRODUCT_KEY)\
        .set_device_key(SampleHelper.GW_DEVICE_KEY) \
        .set_version(version) \
        .build()
    ota_version_report_response = client.publish(ota_version_report_request)
    if ota_version_report_response:
        print('ota_version_report_response: %s' % ota_version_report_response.get_code())

def upgrade_firmware_handler(arrived_message, path_list):
    firmware = arrived_message.get_firmware_info()
    print("receive command: ", firmware.file_url, firmware.version)
    ota_report_progress('35', 'downloading firmware finished')
    ota_report_progress('70', 'decompressing firmware finished')
    ota_report_progress('90', 'running firmware finished')
    ota_report_progress('100', 'upgrading firmware finished')
    # firmware upgrade success, report new version
    ota_version_report(firmware.version)

def upgrade_firmware_download_failed_handler(arrived_message, path_list):
    firmware = arrived_message.get_firmware_info()
    print("receive command: ", firmware.file_url, firmware.version)
    ota_report_progress(OTAUpdateFailureCause.FIRMWARE_DOWNLOAD_FAILED_CODE, '')

if __name__ == "__main__":
    client.connect()  # connect in sync
    client.register_arrived_message_handler(OtaUpgradeCommand().get_class(), upgrade_firmware_handler)
    client.register_arrived_message_handler(OtaUpgradeCommand().get_class(), upgrade_firmware_download_failed_handler)
    ota_version_report(1.0)
    ota_get_version_report()
    while True:
        time.sleep(5)
```
<!-- tabs:end -->


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
Agencies can leverage on the existing OTA feature on DECADA to manage their on-boarded devices:

<div align=center>
<img width="1500" src="./images/ota4.png"/>
</div>
Editing Firmware on DECADA

<div align=center>
<img width="1500" src="./images/ota4.png"/>
</div>
Visibility of an OTA Job
<div align=center>
<img width="1500" src="./images/ota6.png"/>
</div>
Results of an OTA Job
<div align=center>
<img width="1500" src="./images/ota7.png"/>
</div>
Inventory Information (via OTA)

Agencies may refer [here](https://support-cn5.envisioniot.com/docs/device-connection/en/latest/howto/ota/developing_device_ota) for more information.


### Used Case
Agencies can learn how to develop OTA capabilities in DECADA:
 - [Quick Start: Develpo OTA Capabilities on the Raspberry Pi](https://www.envisioniot.com/docs/device-connection/en/latest/tutorial/upgrading_firmware_ota/developing_ota_capability.html)




## Certificate Lifecycle Management

### Overview

DECADA provides certificate lifecycle management feature which allows Agencies to deploy and renew certificates used for authentication upon connection.
DECADA has a built-in industry-standard CA service for certificate management purpose. It provides a series of fundamental CA service APIs, including CA setup, certificate issue, certificate renew, certificate revoke, and certificate status query. Certificates for different purposes may be requested and issued from DECADA CA service and the corresponding operation may be completed through API invoke in seconds. 
To ensure that each edge/devices has its exclusive client certificate, the certificate request exchange is performed by the edge during its first power-on procedure. The edge device generates a public certificate request containing the unique device identifier (e.g., serial number, network MAC address) and corresponding private key according to the PKI standard. The certificate request will be forwarded to the DECADA for signing. The issued certificate will then be sent back to the edge device to be stored together with the private key locally.

**<u>Device SDK for Certificate Management</u>**
The sample codes below shows the authentication of a devices prior connection to DECADA:

<!-- tabs:start -->
#### **Code**
```
"""
	Get Root CA, generate key and apply a certificate
"""
import configparser
import json
import requests
from OpenSSL import crypto

from enosapi.client.EnOSDefaultClient import EnOSDefaultClient
from enosapi.request.ApplyCertificateByDeviceKeyRequest import ApplyCertificateByDeviceKeyRequest

def get_root_cert(url):
	try:
		r = requests.get(url)
		r.raise_for_status()
		return r.content
	except requests.exceptions.HTTPError as err:
		return r.content

def get_subject_msg(cert):
	sub = cert.get_subject()
	return sub.C, sub.ST, sub.O, sub.L, sub.OU, sub.CN

def get_csr_req():
	req = crypto.X509Req()
	return req

def is_empty_str(string):
	return string is None or string == ""

def fill_req(req, cert, conf, PKey):
	C, ST, O, L, OU, CN = get_subject_msg(cert)
	subject = req.get_subject()
	subject.C = C
	subject.ST = ST
	subject.O = O

	subject.L = L if (is_empty_str(conf.get("option", "LOCATION"))) else conf.get("option", "LOCATION")
	subject.OU = OU if (is_empty_str(conf.get("option", "OU"))) else conf.get("option", "OU")
	subject.CN = conf.get("required", "CN")

	req.set_pubkey(PKey)
	req.sign(PKey, "sha256")

def write_file(file_name, context):
	with open(file_name, 'w') as f:
		f.write(context)

def get_private_key(public_key, password):
	cipher = None
	password = password
	passphrase = None

	called = []

	def cb(writing):
		called.append(writing)
		return password

	if not is_empty_str(password):
		passphrase = cb
		cipher = "blowfish"

	return crypto.dump_privatekey(crypto.FILETYPE_PEM, public_key, cipher=cipher, passphrase=passphrase)

def get_cert():
	cf = configparser.ConfigParser()
	configFilePath = r'<loction of ini file>'
	cf.read(configFilePath)

	root_cert_str = get_root_cert(cf.get("required", "root_cert_url")).decode('utf8')
	write_file("edge_ca.pem", root_cert_str)
	root_cert = crypto.load_certificate(crypto.FILETYPE_PEM, root_cert_str)

	public_key = crypto.PKey()
	public_key.generate_key(crypto.TYPE_RSA, 2048)

	private_key = get_private_key(public_key, cf.get("option", "password")).decode('utf8')
	write_file("edge.key", private_key)

	csr_req = get_csr_req()
	fill_req(csr_req, root_cert, cf, public_key)

	req_str = crypto.dump_certificate_request(crypto.FILETYPE_PEM, csr_req).decode('utf8')
	csr = json.dumps(req_str)

	request = ApplyCertificateByDeviceKeyRequest(org_id=cf.get("required", "org_id"),
												 product_key=cf.get("required", "product_key"),
												 device_key=cf.get("required", "device_key"),
												 csr=csr)

	client = EnOSDefaultClient(cf.get("required", "api_url"),
							   cf.get("required", "access_key"),
							   cf.get("required", "secret_key"))

	response = client.execute(request)

	if response.is_success():
		write_file("edge.pem", response.data['cert'])
		return True, 'apply certificate successfully'
	else:
		return False, 'apply certificate failed: %s' % response.msg

if __name__ == '__main__':
	print("start create key and certificate ")
	result, msg = get_cert()
	if result is False:
		raise RuntimeError(msg)
	print("finish  create key and certificate")

```
<!-- tabs:end -->

Agencies may refer [here](https://github.com/EnvisionIot/enos-cert-tool/blob/master/README.md#configuration) for more information.

Note: Agencies will have to create an application via the “application registration” for the access and secret keys with the appropriate access roles in order to generate the relevant certificate files.


<div align=center>
<img width="1500" src="./images/cert1.png"/>
</div>
To Generate the Access and Secret Keys

<div align=center>
<img width="1500" src="./images/cert2.png"/>
</div>
Setting the IAM Roles on Service Accounts

**<u>Certificate Management Process</u>**
 - Deployment

The following diagram illustrate the process of secure communication between the devices (or Edge) and DECADA based on X.509 certificates:
1. Devices (or Edge) acquires X.509 self-signed certificate

<div align=center>
<img width="900" src="./images/cert3.png"/>
</div>

2a. Agencies provision the edge with the necessary information such as the product key, product secret, serial number, and license and uses these parameters to create the device in DECADA.
3b. DECADA verifies the identity of the edge and creates the device instance in the system, and responds to the edge with the Globally Unique Identifier (GUID) of the device and the device secret.
2c. The edge receives the responses from DECADA, creates key pairs and CSR, calls the API to activate the device, and gets its X.509 certificate.
2d. DECADA receives the request from the edge and after verifying its identity, activates the device and forwards the CSR internally to DECADA CA.
2e. The DECADA CA receives the CSR, issues the certificate and sends it back.
2f. DECADA receives the issued X.509 certificate, binds it with the device id, and then sends the certificate to the edge.
2g.The edge receives the issued X.509 certificate and saves it securely in the local repository (i.e. TPM).

<div align=center>
<img width="900" src="./images/cert4.png"/>
</div>
On DECADA after Provisioning the self-signed certificate

2. Communication Phase
<div align=center>
<img width="900" src="./images/cert5.png"/>
</div>
Edge Communicates with the IoT Hub using the Certificate-based Bi-Directional Authentication

3a. The edge validates the certificate of DECADA.
3b. DECADA validates the certificate of the edge.
When the TLS handshake in steps 3a and 3b succeeds, the TLS connection will be established between the edge and DECADA.
3c. The edge transmits device telemetry through MQTT over the TLS connection.
3d. DECADA transmits configurations and control signals through MQTT over the TLS connection.
Renewal
Agencies to follow Step 2 under “Deployment” when the certificate is due for renewal
Revocation
Under some circumstances, Agencies needs to revoke the X.509 certificate of the edge.

<div align=center>
<img width="900" src="./images/cert6.png"/>
</div>
On DECADA to revoke the self-signed certificate
div align=center>
<img width="900" src="./images/cert7.png"/>
</div>
DECADA Revokes the X.509 Certificate of the EDGE

4a. DECADA calls the revocation API to revoke the X.509 certificate with the serial number of the certificate.
4b. DECADA CA receives the request internally, verifies the identity, revokes the certificate, and update the CRL.

Used Case
Agencies can learn how to authenticate a device connection via certificate-based in DECADA:
[Quick Start: Securing Connection Through Certificate-Based Authentication](https://support.envisioniot.com/docs/device-connection/en/latest/quickstart/gettingstarted_java_ssl_connection)

*** to be deleted
 Note to Team:
What is the process for renewal?
To confirm the process is as such.



