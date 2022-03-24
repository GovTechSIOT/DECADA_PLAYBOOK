# Introduction

**<u>Overview</u>**

DECADA provides SDKs for Agencies to perform various tasks such as connecting devices, ingesting data, accessing data, and services on DECADA. The public repositories of the available SDKs are provided below for the device-end development.
- [Device SDK for C](https://github.com/EnvisionIot/enos-device-sdk-c)
- [Device SDK for Java](https://github.com/EnvisionIot/enos-device-sdk-java)
- [Device SDK for Node.js](https://github.com/EnvisionIot/enos-device-sdk-nodejs)
- [Device SDK for Python](https://github.com/EnvisionIot/enos-device-sdk-python)

Agencies can refer to the README files within the GitHub source code repository on usage and example. 

?> Information about the SDKs are continuously updated to be synchronize with the release on GitHub. When inconsistency exists between GitHub and Documentation, Agencies should refer to GitHub as the source of truth.

Agencies may refer [here](https://developer.envisioniot.com/enos-sdks-tools/) for more information.

**<u>Function Availability and Comparison</u>**

The following table shows an overview of which functions are available in different device SDKs.

| **Function List**                           | **Remark**                                       | **Java** | **Node.js** | **C** | **Python** |
|---------------------------------------------|--------------------------------------------------|----------|-------------|-------|------------|
| Protocol                                    | MQTT                                             | Y        | Y           | Y     | Y          |
|                                             | CoAP                                             |          |             |       |            |
|                                             | HTTP*                                            | Y        |             |       |            |
| Connectivity and Authentication             | Secret-based authentication - per-device secret  | Y        | Y           | Y     | Y          |
|                                             | Secret-based authentication - per-product secret | Y        | Y           | Y     | Y          |
|                                             | X.509-certificate-based authentication           | Y        | Y           | Y     | Y          |
| Uploading data to cloud (device to cloud)   | Device tags                                      | Y        | Y           | Y     | Y          |
|                                             | Attributes                                       | Y        | Y           | Y     | Y          |
|                                             | Measuring points                                 | Y        | Y           | Y     | Y          |
|                                             | Events                                           | Y        | Y           | Y     | Y          |
|                                             | Uploading data in pass-through mode              | Y        | Y           | Y     | Y          |
| Issuing command to device (cloud to device) | Setting measuring point values                   | Y        | Y           | Y     | Y          |
|                                             | Invoking services                                | Y        | Y           | Y     | Y          |
|                                             | Invoking services                                | Y        | Y           | Y     | Y          |
| Subdevice Management                        | Subdevice registeration                          | Y        | Y           |       | Y          |
|                                             | Login and logout of subdevices                   | Y        | Y           |       | Y          |
|                                             | Subdevice lifecycle management                   | Y        | Y           |       | Y          |
| Firmware Upgrade OTA                        | Uploading and receiving firmware information     | Y        |             |       | Y          |
| Message Integration                         |                                                  | Y        |             |       | Y          |
| Feature availability | Feature availability        | Y | Y | Y | Y |
|                      | Feature availability        | Y | Y | Y | Y |
|                      | Asynchronous data reporting | Y | Y | Y | Y |

?> *For HTTP protocol, DECADA is currently support reporting file type of data through measuring point.