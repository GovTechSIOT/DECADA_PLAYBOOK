
# Introduction

The chapter provides and introduce to what are the building blocks which makes up DECADA. This chapter will provide Agencies insights on what is DECADA (i.e Device Management & Data Management) and how Agencies can leverage on DECADA to manage and provision their devices and to have a holistic view via their application. 


<div align=center>
<img width="800" src="./images/buildingblock.png"/>
</div>

**<u>Device Lifecycle Management</u>**

Agencies can use the following flow chart to have an overview of the DECADA usage from on-boarding to the management of their devices via DECADA:

<div class="mermaid">
flowchart TD
%%{init: {"theme": "base", "themeVariables": { "fontSize": "16px", "flowchart": {"diagramPadding": 64, "useMaxWidth": true}}}}%%
    A4-->B1
    B1-->C4
    C4-->D1
    D1-->E1
    subgraph Decommission
    direction TB
    E1[Decommission, Revocation Device credentials]-->E2[End]
    end
    subgraph Maintenance
    direction TB
    D1[Over-The-Air-Updates]<-->|optional|D2[Certificate Lifecycle Management]
    end
    subgraph Service
    %%{config: { 'fontFamily': 'Menlo', 'fontSize': 18, 'fontWeight': 400} }%%
    direction TB
    C1[Multi-Tenancy]<-->|optional|C2[Dashboards-Enable/Disable Devices]
    C2[Dashboards-Enable/Disable Devices]<-->|optional|C3[Remote Control of Devices]
    C3[Remote Control of Devices]<-->|optional|C4[Alerts]
    C4[Alerts]<-->|optional|C5[Logging Mechanism]
    C5[Logging Mechanism]<-->|optional|C6[Data Alert Management]
    C6[Data Alert Management]<-->|optional|C7[Device Integration]
    end
    subgraph Provision
    direction TB
    B1[Device Registration]<-->|optional|B2[Asset Tree Management]
    end
    subgraph Planning/Design
    direction TB
    A1[Start]-->A2[Determine Integration Mode of Devices]
    A2[Determine Integration Mode of Devices]-->A3[Connection Schemes]
    A3[Connection Schemes]-->A4[Data Format]
    end
    style A1 fill:##bbf,stroke:#333,stroke-width:1px
    click A2 "http://localhost:3000/#/OnBoardDevice/Onboard?id=integration-with-decada" _blank
    style A2 fill:##bbf,stroke:#333,stroke-width:1px
    click A3 "http://localhost:3000/#/OnBoardDevice/Onboard?id=device-connectivity" _blank
    style A3 fill:##bbf,stroke:#333,stroke-width:1px
    click A4 "http://localhost:3000/#/OnBoardDevice/Onboard?id=data-format" _blank
    style A4 fill:##bbf,stroke:#333,stroke-width:1px
    click B1 "http://localhost:3000/#/OnBoardDevice/Onboard?id=device-registration" _blank
    style B1 fill:##bbf,stroke:#333,stroke-width:1px
    click B2 "http://localhost:3000/#/OnBoardDevice/Onboard?id=managing-asset-tree" _blank
    style B2 fill:##bbf,stroke:#333,stroke-width:1px
    click C1 "http://localhost:3000/#/OnBoardDevice/Service?id=multi-tenancy" _blank
    style C1 fill:##bbf,stroke:#333,stroke-width:1px
    click C2 "http://localhost:3000/#/OnBoardDevice/Service?id=dashboard" _blank
    style C2 fill:##bbf,stroke:#333,stroke-width:1px
    click C3 "http://localhost:3000/#/OnBoardDevice/Service?id=remote-controlling-of-devices" _blank
    style C3 fill:##bbf,stroke:#333,stroke-width:1px
    click C4 "http://localhost:3000/#/OnBoardDevice/Service?id=alerts" _blank
    style C4 fill:##bbf,stroke:#333,stroke-width:1px
    click C5 "http://localhost:3000/#/OnBoardDevice/Service?id=logging-mechanism" _blank
    style C5 fill:##bbf,stroke:#333,stroke-width:1px
    click C6 "http://localhost:3000/#/OnBoardDevice/Service?id=data-asset-management" _blank
    style C6 fill:##bbf,stroke:#333,stroke-width:1px
    click C7 "http://localhost:3000/#/OnBoardDevice/Service?id=device-integration" _blank
    style C7 fill:##bbf,stroke:#333,stroke-width:1px
    click D1 "http://localhost:3000/#/OnBoardDevice/Maintenance?id=over-the-air-ota-upgrade" _blank
    style D1 fill:##bbf,stroke:#333,stroke-width:1px
    click D2 "http://localhost:3000/#/OnBoardDevice/Maintenance?id=certificate-lifecycle-management" _blank
    style D2 fill:##bbf,stroke:#333,stroke-width:1px
    click E1 href "http://localhost:3000/#/OnBoardDevice/Decommis"
    style E1 fill:##bbf,stroke:#333,stroke-width:1px,fontSize:18
    style E2 fill:##bbf,stroke:#333,stroke-width:1px
</div>
<!---Stream Process,Batch Processing,TSDB-->



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
<img width="800" src="./images/DecadaLC2.png"/>
</div>
-->

**<u>Mode of Access to DECADA</u>**

Existing API/SDK and the DECADA Management Portal are available for Agencies to choose their methodology to implement their requirement to achieve the above services. 

**<u>1. DECADA Management Portal</u>**

DECADA Console is a web-based Graphic User-Interface (GUI) created by GovTech for Agencies to interact with resources within DECADA. The following figure shows a configuration interface in the DECADA Console.

<div align=center>
<img width="900" src="./images/Decada_home.png"/>
</div>

**<u>2. DECADA API/SDK</u>**

Alternatively through the available API/SDK, Agencies can add, delete, modify and retrieve resources on DECADA such as users, assets, and applications, to facilitate development of applications with a variety of authentication and authorization techniques to ensure access to the APIs. For more information, Agencies may refer to [Getting Started with APIs](https://support.envisioniot.com/docs/api/en/latest/gettingstarted.html).

The APIs are available for various of services such as connection, model, asset, asset tree, alert, data. SDKs are also available for mainstream programming languages (i.e. C / Java / Python / Node.js,). Agencies may refer [here](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2263220229/DECADA+SDK+API) for information on the available API/SDK.