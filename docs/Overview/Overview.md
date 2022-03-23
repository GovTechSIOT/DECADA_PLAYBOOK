# DECADA Overview

**<u>Overview</u>**

**De**vice Management **C**ontrol **a**nd **D**ata **A**cquisition System (DECADA) is used as a central IoT Platform for Whole-of-Government (WOG) where it has economies of scale through demand aggregation and standardization.

<div align=center>
<img width="850" src="./images/decada_ov_firstpic1.png"/>
</div>

DECADA also allows Agencies to develop and deploy their Smart Systems solution rapidly.

**<u>Introduction</u>**

DECADA is a Multi-Tenant Cloud Platform which forms the Device Management Layer of the Smart Nation Sensor Platform. Together with other SNSP components, DECADA offers an easy and powerful solution for Agencies to implement and manage their IoT networks. 


<div align=center>
<img width="850" src="./images/DECADA_OV.png"/>
</div>

For Agencies with IoT sensors deployment needs, DECADA can offer the following:
- Handling multiple sensor protocols
- Multiple 3rd Party IoT System integration
- Security aspects
- Develop custom application based on use-case 
- Handle up to confidential data classification
- Provide training, SDK, API for development and integration
- Enhanced user experience with GSIB laptop access

**<u>Basic Network Design</u>**

DECADA Cloud Platform is hosted in GCC Azure and is accessible via Internet, private network and WOG Network.


<div align=center>
<img width="850" src="./images/High Level Net Arch.png"/>
</div>

<div align=center>
<img width="850" src="./images/GCC.png"/>
</div>

**<u>Common Services of what DECADA can offer</u>** <!--## Common Services of what DECADA can offer-->

DECADA is made up of 3 main building blocks:

1. [Device Management and Connectivity](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2281537544)
2. [Data Management](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2257813613/Data+Asset+Management)
3. [Data Analytics](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2282520682)

<div align=center>
<img src="./images/DecadaService.png"/>
</div>

DECADA Cloud Platform provides APIs/SDK for data ingress, data egress and platform management to provide as a stack for building of IoT devices. 

- Device Enrollment
- Data Acquisition
- Event Triggering
- Data Analytics
- Dashboarding
- Report Generation
- API and SDK

<div align=center>
<img width="850" src="./images/DecadaLC2.png"/>
</div>

It caters services such as:
- **Device Management:** Supports Agencies in managing the commissioning an decommissioning aspect of their field devices and equipment 
- **Dash-boarding:** Supports Agencies to quickly deploy dashboard interface for their project needs in a shorter time
- **Security Management:** Agencies users is able to use two-factor authentication (2FA) instead of one-time password for login
- **Data Analytics:** The processed data set can be used with 3rd party tools such as Tableau.

GovTech provides a **DECADA Management Portal** where Agencies can easily on-board their devices and/or application to achieve the stated services.
<div align=center>
<img width="900" src="./images/Decada_home.png"/>
</div>

Alternatively Agencies can leverage on existing API/SDK to achieve the same results or to customized further based on their use-case. 

Features Elaboration where is accessible from DECADA Console Portal and API:

<div align=left>
<img width="850" src="./images/provision.png"/>
</div>

<div align=left>
<img width="850" src="./images/maintain.png"/>
</div>

**<u>DECADA Use-Cases</u>**

Some general use-cases are featured in below diagrams. 
For more examples, refer [here](Dev_Con/usedcase.md).

Use-Case 1: Smart Nation Sensor Platform (SNSP) will send sensor data to Agency Application Server

<div align=center>
<img width="850" src="./images/ovuc1.png"/>
</div>
<!--                        Use-Case 1-->


Use-Case 2: Agencies can access DECADA from WOG environment

<div align=center>
<img width="850" src="./images/ovuc2.png"/>
</div>
<!--Use-Case 2-->



