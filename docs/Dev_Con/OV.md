# Introduction

The chapter provides and introduce to what are the building blocks which makes up DECADA. This chapter will provide Agencies insights on what is DECADA (i.e Device Management, Data Management, Device Analytics) and how Agencies can leverage on DECADA to manage and provision their devices and to have a holistic view via their application. 

<div align=center>
<img width="800" src="./images/buildingblock.png"/>
</div>

**<u>Device Lifecycle Management</u>**

Device on-boarding typically follows the lifecycle depicted below diagram:

**1. Planning/Designing:**
   - [Integration of devices to DECADA](http://localhost:3000/#/Dev_Con/Onboard?id=integration-with-decada)
   - [Device Connectivity](http://localhost:3000/#/Dev_Con/Onboard?id=device-connectivity)   

**2. Provisioning:**
   - [Device Registration](http://localhost:3000/#/Dev_Con/Onboard?id=device-registration)
   - [Managing Assets Tree](http://localhost:3000/#/Dev_Con/Onboard?id=managing-asset-tree)
   - [Asset Tree](http://localhost:3000/#/Dev_Con/Onboard?id=managing-asset-tree)
   - [Data Format](http://localhost:3000/#/Dev_Con/Onboard?id=data-format)

**3. Service:**
   - [Multi-Tenancy](http://localhost:3000/#/Dev_Con/Service?id=multi-tenancy)
   - [Dashboard](http://localhost:3000/#/Dev_Con/Service?id=dashboard)
   - [Remote Controlling of Devices](http://localhost:3000/#/Dev_Con/Service?id=remote-controlling-of-devices)
   - [Alerts](http://localhost:3000/#/Dev_Con/Service?id=alerts)
   - [Logging Mechanism](http://localhost:3000/#/Dev_Con/Service?id=logging-mechanism)
   - [Data Asset Management](http://localhost:3000/#/Dev_Con/Service?id=data-asset-management)
   - [Data Analytics](http://localhost:3000/#/Dev_Con/Service?id=data-analytics)
   - [Data Integration](http://localhost:3000/#/Dev_Con/Service?id=data-integration)

**4.  Maintenance**
   - [Over-The-Air Update](http://localhost:3000/#/Dev_Con/Maintenance?id=over-the-air-ota-upgrade )
   - [Certificate Lifecycle Management](http://localhost:3000/#/Dev_Con/Maintenance?id=certificate-lifecycle-management ) 
<!--Dev_Con/Maintenance?id=certificate-lifecycle-management   Dev_Con/Onboard?id=device-registration-->

**5.  [Decommissioning](http://localhost:3000/#/Dev_Con/Decommis.md)**

<div align=center>
<img width="800" src="./images/DecadaLC2.png"/>
</div>

Agencies can refer to the link above for the details for each functionality.

**<u>Mode of Access to DECADA</u>**

Existing API/SDK and the DECADA Management Portal are available for Agencies to choose their methodology to implement their requirement to achieve the above services. 

**<u>DECADA Management Portal</u>**

DECADA Console is a web-based Graphic User-Interface (GUI) created by GovTech for Agencies to interact with resources within DECADA. The following figure shows a configuration interface in the DECADA Console.

<div align=center>
<img width="900" src="./images/Decada_home.png"/>
</div>

**<u>DECADA API/SDK</u>**

Alternatively through the available API/SDK, Agencies can add, delete, modify and retrieve resources on DECADA such as users, assets, and applications, to facilitate development of applications with a variety of authentication and authorization techniques to ensure access to the APIs. For more information, Agencies may refer to [Getting Started with APIs](https://support.envisioniot.com/docs/api/en/latest/gettingstarted.html).

The APIs are available for various of services such as connection, model, asset, asset tree, alert, data. SDKs are also available for mainstream programming languages (i.e. C / Java / Python / Node.js,). Agencies may refer [here](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2263220229/DECADA+SDK+API) for information on the available API/SDK.