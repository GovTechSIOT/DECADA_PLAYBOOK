<h1>Device Lifecycle Phases</h1>

**<u>Planning & Design Phase:</u>**

In the planning and design phase, Agencies will determine how to abstract their device models and manage the asset hierarchy. They will also determine the connection scheme and data format to use based on the type of devices to connect, the device deployment conditions, and the required security requirements.

**<u>Provisioning Phase:</u>**

In the provisioning phase, based on the selected connection scheme, Agencies can: 

- Register devices to obtain the device identities, and when certificate authentication is required, generate the certificates.
- Use device SDKs to perform device-end development so that devices are authenticated to the cloud and start to transmit data.

**<u>Service Phase:</u>**

In the servicing phase, Agencies can:

- Gain an overview of your device and message dynamics through the device management dashboard that GovTech provides in the console. 
- Control your devices remotely from the cloud, such as enabling or disabling the devices, or triggering the services as defined by the device model.
- Monitoring alerts on devices as defined by the alert triggering rules against real-time measure point telemetry. 
- Manage, consume, and store the device data according to your business needs. 

**<u>Maintenance Phase:</u>**

In the maintenance phase, Agencies can

- Use the OTA Service to manage the device firmware in the cloud and achieve firmware upgrade over-the-air. 
- Renew the device certificate when a certificate expires.

**<u>Decommissioning Phase:</u>**

In the decommissioning phase, Agencies can

- Disable and delete the digital twin of a device from the cloud.
- Revoke the device certificate that was issued to the device.
- Archive the data of the decommissioned devices.

Agencies can refer to the link above for the details for each functionality.

<!--
Device on-boarding typically follows the lifecycle depicted below diagram:

**1. Planning/Designing:**
   - [Integration of devices to DECADA](https://decada-playbook.siot.local/#/OnBoardDevice/Onboard?id=integration-with-decada)
   - [Device Connectivity](https://decada-playbook.siot.local/#/OnBoardDevice/Onboard?id=device-connectivity)   

**2. Provisioning:**
   - [Device Registration](https://decada-playbook.siot.local/#/OnBoardDevice/Onboard?id=device-registration)
   - [Managing Assets Tree](https://decada-playbook.siot.local/#/OnBoardDevice/Onboard?id=managing-asset-tree)
   - [Asset Tree](https://decada-playbook.siot.local/#/OnBoardDevice/Onboard?id=managing-asset-tree)
   - [Data Format](https://decada-playbook.siot.local/#/OnBoardDevice/Onboard?id=data-format)

**3. Service:**
   - [Multi-Tenancy](https://decada-playbook.siot.local/#/OnBoardDevice/Service?id=multi-tenancy)
   - [Dashboard](https://decada-playbook.siot.local/#/OnBoardDevice/Service?id=dashboard)
   - [Remote Controlling of Devices](https://decada-playbook.siot.local/#/OnBoardDevice/Service?id=remote-controlling-of-devices)
   - [Alerts](https://decada-playbook.siot.local/#/OnBoardDevice/Service?id=alerts)
   - [Logging Mechanism](https://decada-playbook.siot.local/#/OnBoardDevice/Service?id=logging-mechanism)
   - [Data Asset Management](https://decada-playbook.siot.local/#/OnBoardDevice/Service?id=data-asset-management)
   - [Data Analytics](https://decada-playbook.siot.local/#/OnBoardDevice/Service?id=data-analytics)
   - [Data Integration](https://decada-playbook.siot.local/#/OnBoardDevice/Service?id=data-integration)

**4.  Maintenance**
   - [Over-The-Air Update](https://decada-playbook.siot.local/#/OnBoardDevice/Maintenance?id=over-the-air-ota-upgrade )
   - [Certificate Lifecycle Management](https://decada-playbook.siot.local/#/OnBoardDevice/Maintenance?id=certificate-lifecycle-management ) 
OnBoardDevice/Maintenance?id=certificate-lifecycle-management   OnBoardDevice/Onboard?id=device-registration
**5.  [Decommissioning](https://decada-playbook.siot.local/#/OnBoardDevice/Decommis.md)**


<div align=center>
<img width="800" src="./images/overview/decadalc2.png"/>
</div>
-->

**<u>Mode of Access to DECADA</u>**

Existing API/SDK and the DECADA Management Portal are available for Agencies to choose their methodology to implement their requirement to achieve the above services. 

**<u>1. DECADA Management Portal</u>**

DECADA Console is a web-based Graphic User-Interface (GUI) created by GovTech for Agencies to interact with resources within DECADA. The following figure shows a configuration interface in the DECADA Console.

<div align=center>
<img width="900" src="./images/onBoardDevice/decadaHome.png"/>
</div>

**<u>2. DECADA API/SDK</u>**

Alternatively through the available API/SDK, Agencies can add, delete, modify and retrieve resources on DECADA such as users, assets, and applications, to facilitate development of applications with a variety of authentication and authorization techniques to ensure access to the APIs. For more information, Agencies may refer to [Getting Started with APIs](https://support.envisioniot.com/docs/api/en/latest/gettingstarted.html).

The APIs are available for various of services such as connection, model, asset, asset tree, alert, data. SDKs are also available for mainstream programming languages (i.e. C / Java / Python / Node.js,). Agencies may refer [here](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2263220229/DECADA+SDK+API) for information on the available API/SDK.