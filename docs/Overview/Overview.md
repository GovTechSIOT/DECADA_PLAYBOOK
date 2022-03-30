# DECADA Overview

**<u>Overview</u>**

**De**vice Management **C**ontrol **a**nd **D**ata **A**cquisition System (DECADA) is used as a central IoT Platform for Whole-of-Government (WOG) where it has economies of scale through demand aggregation and standardization.

<div align=center>
<img width="850" src="./images/DECADA_OV_FIRSTPIC1.png">
</div>


DECADA also allows Agencies to develop and deploy their Smart Systems solution rapidly.

?> DECADA only allows the hosting of up to **RESTRICTED** sensors/system data classification.

**<u>Introduction</u>**

In collaboration with Envision, DECADA is built on-top of their solution (EnOS) to form the Device Management Layer of the Smart Nation Sensor Platform.a Multi-Tenant Cloud Platform which forms the Device Management Layer of the Smart Nation Sensor Platform.

<div align=center>
<img width="850" src="./images/Decada_OV_Diagram.png"/>
</div>

EnOS provides the following functional building blocks to develop an end-to-end platform:

1. Device Management System: To manage all field equipment (i.e. sensors and systems) and ensure that all the devices adhere to the device lifecycle management process
2. Multi-Agencies Tenancy: To support multi-Agencies with DECADA via providing role-based access control
3. Security Management: To support the utilization of the Certificate (Public Key Infrastructure) for all encryption functionality within DECADA
4. API/SDK: To provide existing API/SDK which allows GovTech and/or Agencies for future enhancement development and security purpose 

With these functional building made readily available, this will save GovTech the additional effort to rebuild what is available in the market. GovTech can also leverage on these building blocks to develop solution which are specific to Agencies use-case (i.e. Custom Data Integration solution).

Together with other SNSP components, DECADA offers an easy and powerful solution for Agencies to implement and manage their IoT networks.

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

DECADA is made up of 2 main building blocks:

1. [Device Management and Connectivity](Dev_Con/OV.md)
2. [Data Management](http://localhost:3000/#/Dev_Con/Service?id=data-asset-management)

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

?>Agencies can contact GovTech for the creation of an account in the management portal to test out its functionality. 

Alternatively Agencies can leverage on existing **API/SDK** to achieve the same results or to customized further based on their use-case. 

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



