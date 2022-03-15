# Overview

## Objectives

Device Management Control and Data Acquisition System (DECADA) is used as a central IoT Platform for WOG where it has economies of scale through demand aggregation and standardization.

<div align=center>
<img width="850" src="./images/picture1.png"/>
</div>


## Introduction

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

## Basic Network Design

DECADA Cloud Platform is hosted in GCC Azure and is accessible via Internet, private network and WOG Network.


<div align=center>
<img width="850" src="./images/High Level Net Arch.png"/>
</div>

<div align=center>
<img width="850" src="./images/GCC.png"/>
</div>

## Common Services of what DECADA can offer

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


Features Elaboration where is accessible from DECADA Console Portal and API:

<div align=left>
<img width="850" src="./images/provision.png"/>
</div>

<div align=left>
<img width="850" src="./images/maintain.png"/>
</div>






DECADA Connects Millions of Devices and Ingests Various types of Data, including Structured and Unstructured data feeds.
It allows application developers to quickly abstract and comprehensively describe devices to build the device digital twin. These models (some accumulated) can be used for frequently adopted devices in renewable, grid, storage, smart plant, smart building, and smart mobility domains.

<div align=center>
<img width="900" src="./images/decadaexamples.png"/>
</div>

The data can then be fed into applications developed like Dashboards for operation visibility, Analytics for AI and decision making, Mobile Apps for remote control and functionality.

<div align=center>
<img width="850" src="./images/DECADA_OV_Diagram.png"/>
</div>


?> **The IoT Tech Stack** is a set of tools and services for sensors and IoT applications and is also known as DECADA. It consists of three core components, which facilitate the acquisition and exchange of data from sensors to the cloud. Agencies can use DECADA to easily develop and run IoT applications.


The three core components of the IoT Tech Stack are as shown below.
## DECADA Edge Gateway
A product and software solution to onboard new and existing sensor nodes to DECADA easily and securely. It is both a gateway to DECADA Cloud, and an edge device to process and aggregate sensor nodes data to reduce data traffic to the cloud. Agencies can make use of its web user interface to allow for various combinations of sensor nodes connection and data processing.

## DECADA Embedded (formerly known as MANUCA)
This is a family of microcontroller-class devices that can communicate directly to DECADA Cloud. DECADA Embedded provides software reference designs for onboarding and communication with DECADA Cloud. Hence, developers can add custom application logic for their use cases and quickly have a ready-to-deploy embedded device.

## DECADA Cloud
A multi-tenant cloud platform deployed on the Government Commercial Cloud. DECADA Cloud’s features include asset management, data acquisition, event triggers, stream processing, data analytics, report generation and APIs for querying data.

Using DECADA Cloud Platform usually involves in an one-time setup in the following process/steps:-
- Model
- Product
- Batch Processing
- Device Integration
- Stream Processing
- TSDB* Storage policy  (*Time Series DataBase)
- Application Access

Diagram depicts End-to-End Process and Data Streaming within DECADA Cloud Platform.
(We will go in details on Modelling, Product, Batch Process in Onboarding Devices later.)
<div align=center>
<img width="900" src="./images/End2End_DataStream.png"/>
</div>

## Data Governance and Classification
Based on above, Data Governance can be applied throughout each process thread in DECADA Cloud Platform.
Currently, DECADA Cloud Platform has a sercurity clearance of processing and storing up to Restricted classification data.


## Operations 
- Device Management
   - Device Lifecycle (can be done via API too)
   - Over-The-Air (OTA) Firmware Update

## Decada System Diagram
<div align=center>
<img width="900" src="./images/DECADASystemDiagram.png"/>
</div>

- Domain model library: 300+ master models, can be scaled to thousands of device models from various manufactures through model reuse
- Flexible model reuse: you can inherit a public model, which will help you automatically inherit future updates to the model. You can also quickly build your own independent model by cloning an existing one.
- Multi-layer of abstraction: in addition to modelling, which helps manage the commonality of devices, you can create another layer of abstraction between the model and the individual instances, to manage device collections.

<div align=center>
<img width="900" src="./images/decadaproduct.png"/>
</div>



DECADA Web Browser Login
<div align=center>
<img width="900" src="./images/DECADA.png"/>
</div>

A sample page featuring all products in an Organisation Unit.

<div align=center>
<img width="1000" src="./images/console.png"/>
</div>


 