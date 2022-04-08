**Over-The-Air (OTA) Upgrade**

Under The maintenance phase, Agencies can leverage on the Over-The-Air (OTA) feature offered by DECADA portal to manage and perform device firmware upgrade(i.e. creating new firmware versions, setting upgrade policies, and deleting firmware versions).

 <div align=center>
<img width="850" src="./images/onBoardDevice/ota.png"/>
</div>

**<u>Device SDK for OTA</u>**

The device SDK can be used to encapsulate the messaging interfaces for version reporting and upgrading. Agencies should ensure the new firmware can be installed on devices, reboot, and report the new firmware version to DECADA. For the respective steps and sample code, refer to the below.
- [Installing Device SDK (MQTT)](https://support-cn5.envisioniot.com/docs/device-connection/en/latest/howto/ota/developing_device_ota_mqtt)
- [Installing Device SDK (HTTP/HTTPS)](https://support-cn5.envisioniot.com/docs/device-connection/en/latest/howto/ota/developing_device_ota_http)

?> The upgrade depends on whether the flash on the device has enough physical space. DECADA only provides message channels and file download services for OTA upgrade, and SDKs for Agencies to call. 

**<u>Firmware OTA Upgrade Process</u>**

DECADA supports the following firmware upgrade modes:

**Cloud initiated OTA process:** DECADA pushes the upgrade to the device, upgrading the device to a specified version.

<div align=center>
<img width="700" src="./images/onBoardDevice/ota2.png"/>
</div>

The devices will start the OTA upgrade process once they receive the request and report their new versions after rebooting. However, whether to perform the OTA upgrade depends on the device settings. Agencies can still add an upgrade confirmation for the downloaded OTA firmware on devices so that they can choose whether to proceed with the upgrading. The partition storing the new firmware is activated only after confirmation.

**Upon device request:** Devices initiate the OTA request and DECADA provides the list of available firmware. The device will then proceed with the OTA upgrade.

<div align=center>
<img width="1500" src="./images/onBoardDevice/ota3.png"/>
</div>

OTA upgrade can be initiated by devices. When devices send the upgrade requests to DECADA, DECADA decides whether the devices fall into any upgrade list. If the device can be upgraded, DECADA sends available firmware to the devices. The upgrade starts after the device confirms the upgrade. Upon device request upgrades require manual intervention and confirmation steps; this provides more flexibility for Agencies to decide whether to upgrade the devices.

**<u>Before You Start</u>**

To conduct OTA updates to devices via DECADA, Agencies will need to have an account and write access to the Device Management Service. If Agencies do not have the access, please contact GovTech for the creation of account with the necessary functionality access.

**<u>Via DECADA Management Portal</u>**

Agencies can leverage on the existing OTA feature on DECADA to manage their on-boarded devices:
<div align=center>
<img width="1500" src="./images/onBoardDevice/firmwareUpgradeProcess.png"/>
</div>

Agencies may refer [here](https://support-cn5.envisioniot.com/docs/device-connection/en/latest/howto/ota/developing_device_ota) for the implementation details via the DECADA Management Portal.

?> Agencies can utilize the OTA function to upload any files (i.e. application-logic based/Firmware-based)  if the file meets the following requirement: 1. It is a binary file. 2. Within 100B file size

**<u>Use-Case</u>**

Agencies can learn how to develop OTA capabilities in DECADA:

- [Quick Start: Developing OTA Capabilities on the Raspberry Pi](https://www.envisioniot.com/docs/device-connection/en/latest/tutorial/upgrading_firmware_ota/developing_ota_capability.html)
