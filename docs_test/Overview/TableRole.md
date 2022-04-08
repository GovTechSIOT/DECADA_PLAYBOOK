# Roles and Responsibility

**<u>Overview</u>**

Agencies can refer to the following chart to determine the Roles and Responsibility based on their engagement on the use of DECADA.

<div align=center>
<img src="./images/overview/rrOverview.png"/>
</div>

?> In the event of a cybersecurity incident, Agencies shall refer to the ''Security Incident Management'' section for the process

**<u>Scenario 1</u>**

Agency's Responsibility:

- **System Owner** and be overall responsible for the systems deployed (i.e. sensors, 3rd Party Application)
- To pay GovTech for the platform usage
- Depending on the scope of Tender, Agency can award to vendor to deploy and maintain the systems deployed via DECADA
- Refer to this playbook on interfacing and operationalize the use of DECADA for their daily operational works.

GovTech's Responsibility

- Platform Owner and centralized platform team to oversee software development of frontend dashboard and mobile application, backend services (i.e. alerts, reporting) and security compliance only for DECADA Platform.
- To provide Agency an account in the Management Portal with the necessary access. 

<u>Deployment & Operational Process</u>

<div align=center>
<img src="./images/overview/scenario1DeploymentProcess.png"/>
</div>

<u>Maintenance Support Process</u>

<div align=center>
<img src="./images/overview/scenario1MaintenanceSupport.png"/>
</div>

**<u>Scenario 2</u>**

Agency's Responsibility:

- **System Owner** and be overall responsible for the systems deployed (i.e. sensors, 3rd Party Application)
- To pay GovTech for the platform usage and their effort to onboard the system to DECADA
- Depending on the scope of Tender, Agency can award to vendor to deploy and maintain the systems deployed via DECADA

GovTech's Responsibility

- Platform Owner and centralized platform team to oversee software development of frontend dashboard and mobile application, backend services (i.e. alerts, reporting) and security compliance.
- Advise and support Agency on the tender technical specification & evaluation
- Train Agency's vendor on interfacing and operationalize the use of DECADA for their daily operational works.

<u>Deployment & Operational Process</u>

<div align=center>
<img src="./images/overview/scenario2DeploymentProcess.png"/>
</div>

?> Depending on the scope of tender, daily operational can be managed by Agency's appointed vendor

<u>Maintenance Support Process</u>

<div align=center>
<img src="./images/overview/scenario2MaintenanceSupport.png"/>
</div>





<!--
The responsibility of on-boarding, implementing, maintaining and supporting DECADA application is reflected in below table.

| <p align="center">**Stage**</p>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | <p align="center">**Roles and Responsibility**</p>   <!--**Roles and Responsibility**-->                                                                                                                                                                                                                                                                                                                                                                                                                             
<!--|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <u>**Planning and Provisioning Phase**</u> <div>- Determine Connection Schema</div> <div>- Model Assets </div> <div>- Organization Assets Hierarchically</div> <div>- Registration and provisioning of devices </div> <div>- Device Identity</div> <div>- Device-end development to send telemetry </div> <div>- Integration of 3rd Party Application to/fro DECADA </div> <br /> <div><u>**Operational Phase (Commissioning)**</u></div> <div>- Maintenance & Management of on-boarded devices & application(Enabling/Disabling of devices/application)</div> <div>- Alerts</div> <div>- Dashboard </div> <div>- Data Asset Management (Inventory)</div> <div>- Update Firmware Over-The-Air due to Vulnerability/Upgrading</div> <div>- Updating of security credentials (i.e Certificate)</div> <br /> <div><u>**Decommissioning Phase**</u></div> <div>- Decommission device from DECADA </div> <div>- Revocation of credentials </div> | **<u>1. If Agencies subscribe DECADA-as-a-Service**</u> <div>- For on-boarded endpoint: **Agencies**</div> <div>- For API/SDK: **Agencies**</div> <div>-For Infrastructure hosting DECADA: **GovTech**</div> <div>- For Security Incident relating to SDK/API/Endpoint: **Agencies/GovTech**</div> <div>- For Security Incident relating to DECADA/Infrastructure: **GovTech**</div> <br /> <div> **<u>2. If Agencies engage GovTech for end-to-end services:**</u></div> <div>- Responsible: **GovTech**</div> |-->

<!--?> GovTech to act as a consultancy service for case (1)-->

<!--s
| Stage                          | Role and Responsibility                          |
|:-------------------------------|--------------------------------------------------|
|<u>Planning and Provision</u><div>- Determine Connection Scheme - Model Asset</div><div>-> Organisation Assets Hierarchically</div><div>-> Registration and provision of device</div><div>->Device Identity</div><div>-> Device-end development to send telemetry<div>-> Integration of 3rd Party Application to/fro DECADA</div>|
<u>Operational Phase (Commissioning)</u><div>-> Maintenance & Management of on-boarded devices & application (Enabling/Disabling of devices/application)</div><div>-> Alerts</div><div>-> Dashboard</div><div>-> Data assets management (inventory)</div><div>Update Firmware Over-The-Air due to vulnerability/upgrading</div><div>Updating of security credentials (i.e. Certificate)</div>| <div>2. If Agencies engage GovTech for end-to-end services</div><div>- Responsible: **GovTech**</div>
<u>Decommissioning</u><div>-> Decommission devices from DECADA</div><div>-> Revocation of credentials</div>|    1. If Agencies subscribe DECADA-as-a-Service<div>- For on-boarded Endpoint: **Agencies**</div><div>- For API/SDK: **Agencies**</div><div>- For Infrastructure hosting DECADA: **GovTech**<div>- For Security Incident relating to SDK/API/Endpoints: **Agencies/GovTech**</div><div>- For Security Incident relating to DECADA and infrastructure: **GovTech**</div>
-->

<!--### **Markdown and HTML** cannot merge column


| Stage                          | Role and Responsibility                          |
|:-------------------------------|--------------------------------------------------|
|<u>Planning and Provision</u><div>-> Determine Connection Scheme - Model Asset</div><div>-> Organisation Assets Hierarchically</div><div>-> Registration and provision of device</div><div>->Device Identity</div><div>-> Device-end development to send telemetry<div>-> Integration of 3rd Party Application to/fro DECADA</div>| 1. If Agencies subscribe DECADA-as-a-Service<div>- For on-boarded Endpoint: **Agencies**</div><div>- For API/SDK: **Agencies**</div><div>- For Infrastructure hosting DECADA: **GovTech**<div>- For Security Incident relating to SDK/API/Endpoints: **Agencies/GovTech**</div><div>- For Security Incident relating to DECADA and infrastructure: **GovTech**</div> |
| <u>Operational Phase (Commissioning)</u><div>-> Maintenance & Management of on-boarded devices & application (Enabling/Disabling of devices/application)</div><div>-> Alerts</div><div>-> Dashboard</div><div>-> Data assets management (inventory)</div><div>Update Firmware Over-The-Air due to vulnerability/upgrading</div><div>Updating of security credentials (i.e. Certificate)</div>| <div>2. If Agencies engage GovTech for end-to-end services</div><div>- Responsible: **GovTech**</div>| 
| <u>Decommissioning</u><div>-> Decommission devices from DECADA</div><div>-> Revocation of credentials</div>|     |
-->

<!--### Markdown  
Line-by-line, cannot diff the points

| STAGE                                              | RESPONSIBILITY                                                        |
|----------------------------------------------------|-----------------------------------------------------------------------|
| Planning and Provision                             | If Agencies subscribe DECADA-as-a-Service                             |
| Determine Connection Schema                        | For on-boarded Endpoint: Agencies                                     |
| Model Assets                                       | For API/SDK: Agencies                                                 |
| Organization Assets Hierarchically                 | For Infrastructure hosting DECADA: GovTech                            |
| Registration and provision of device               | For Security Incident relating to SDK/API/Endpoints: Agencies/GovTech |
| Device Identity                                    | For Security Incident relating to DECADA and infrastructure: GovTech  |
| Device-end development to send telemetry           | If Agencies engage GovTech for end-to-end services                    |
| Integration of 3rd Party Application to/fro DECADA | Responsible: GovTech                                                  |
|                                                    |                                                                       |
|                                                    |                                                                       |
|                                                    |                                                                       |
|                                                    |                                                                       |
|                                                    |                                                                       |
|                                                    |                                                                       |
|                                                    |                                                                       |
|                                                    |                                                                       |
|                                                    |                                                                       |
|                                                    |                                                                       |
|                                                    |                                                                       |
-->







