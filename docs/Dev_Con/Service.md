# Service Phase

## Multi-Tenancy

**<u>Overview</u>**

DECADA Identity and Access Management (IAM) allows Agencies to manage user identities and control access to your resources in DECADA. It allows Agencies to manage user account lifecycles, authenticate user identities, and control the access rights to the resources. 

DECADA also applies the identity and access management (IAM) scheme to achieve multi-tenancy where it ensures that a user can access only the intended resources.

DECADA offers the following type of identities:
 - User accounts are usually created for DECADA Management Console users and operation staff.
 - Service accounts are assigned to applications for accessing the DECADA service APIs.
 - Device identities are assigned to all devices connected to DECADA

The user administration hierarchy can be divided into the following, from top to bottom:
 - Organization (i.e. Agency-based)
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/mt1.png"/>
</div>

 - User (i.e. staff who requires to access DECADA)
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/mt2.png"/>
</div>

 - User group (i.e. collection of staff who does maintenance work)
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/mt3.png"/>
</div>

Access Policies in IAM are classified into two types:
 - Built-in policies (i.e. Pre-defined access policies for typical roles in DECADA)
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/mt4.png"/>
</div>

 - Custom policies (i.e. Access policies customized to the needs of users)
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/mt5.png"/>
</div>

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/mt6.png"/>
</div>

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/mt7.png"/>
</div>

DECADA has also built-in logging mechanism to log incorrect login. See below.
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/mt8.png"/>
</div>

?> Agencies can leverage on existing API/SDK and the DECADA Management Portal to control users access/permission. 

**<u>Before You Start</u>**

To manage and configure the roles for each users, Agencies will need to have an account and write access to the Identity & Access Management Services. If Agencies do not have the access, please contact GovTech for the creation of account with the necessary functionality access.

**<u>Via DECADA Management Portal</u>**

Other than the diagram above, Agencies may refer [here](https://support.envisioniot.com/docs/enos/en/latest/iam/concept/index.html) for the implementation details via the DECADA Management Portal.

**<u>Via API Calls</u>**

Agencies may refer below for the implementation details via the existing API calls.
- [IAM Services](https://support.envisioniot.com/docs/iam-api/en/2.3.0/overview.html)

**<u>Use-case</u>**

Agencies can learn how to set up a user account in a particular organization:
- [Quick Start: Creation of user account](https://support.envisioniot.com/docs/enos/en/latest/iam/ou_admin/iam_gettingstarted_adduser)





## Dashboard

**<u>Overview</u>**

Once the devices has been provision on DECADA, Agencies can:-
- Gain an overview of their device inventory and message dynamics (i.e. real-time statistics of device behaviors and connections such as device event reporting  failures, number of message sent by and the network status of devices)
- Develop their own application for data presentation 
via the dashboarding functions.

**<u>Via DECADA Management Portal</u>**

To review and develop your own application for data presentation , Agencies will need to have a DECADA Management Portal account. If Agencies do not have the access, please contact GovTech for the creation of account with the necessary functionality access.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/dashboard.png"/>
</div>

<!--
Agencies can also zoom in to view the on-boarded device information on the dashboard to have a holistic view of the devices inventory.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/dashboards2.png"/>
</div>
Holistic View of all On-Boarded Devices

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/dashboard3.png"/>
</div>
Specific Device Inventory

DECADA also offers Agencies the function to view the real-time statistics of device behaviors and connections such as device event reporting failures, number of message sent by and the network status of devices.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/dashboard4.png"/>
</div>
Real-Time Statistics
-->

## Remote Controlling of Devices

**<u>Overview</u>**

DECADA also has the functions which allows Agencies to control their devices remotely from:
- Directly from DECADA
- 3rd Party Application owned by Agencies

?> Agencies can leverage on existing API/SDK and the DECADA Management Portal to control their on-boarded devices remotely.

**<u>Before You Start</u>**

To control the devices remotely, Agencies will need to have an account with the necessary rights access. If Agencies do not have the access, please contact GovTech.

**<u>Via DECADA Management Portal</u>**

Agencies can control their on-boarded devices via the DECADA Management Portal:

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/commands.png"/>
</div>

**<u>Via API Calls</u>**

Agencies may refer here for the details to perform remote controlling to their on-boarded devices. via the existing API calls.

- [Remote Controlling of Devices](https://github.com/EnvisionIot/enos-device-sdk-python/blob/master/enos/sample/CommandSample.py)
- [DECADA Issuing Commands to Devices](https://www.envisioniot.com/docs/device-connection/en/latest/reference/mqtt/downstream/index.html)

<!--Note to team:
Is there any use-case to quote such functionality?
Any information for the 2nd method?
DECADA will be able to generate the measurement point requested from the devices.

Agencies may refer [here](https://www.envisioniot.com/docs/device-connection/en/latest/reference/mqtt/downstream/index.html) for more information.
 - From 3rd Party Application to devices through DECADA


*Note to team:*
Is there any used case to quote such functionality?
Any information for the 2nd method?
-->

## Alerts

**<u>Overview</u>**

DECADA has available alert services which Agencies can use to monitor alerts on devices as defined by the alert triggering rules against real-time measure point telemetry. 

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/cloud_edge.png"/>
</div>

DECADA allows Agencies to generate alerts based on the following setting:
1. Measurement Point (i.e Threshold, Reporting Frequency, No update of data)
2. Events (i.e Threshold)
3. Device State

The alerts can be sent via email or SMS according to the requirements.

?> Agencies can leverage on existing API/SDK and the DECADA Management Portal to generate Alerts and their desired notification feature (i.e. SMS/Email).

**<u>Before You Start</u>**

To create alerts on DECADA, Agencies will need to have an account and access to the model, assets management and alert services. If Agencies do not have the access, please contact GovTech for the creation of account with the necessary functionality access.

**<u>Via DECADA Management Portal</u>**

Agencies may refer [here](https://support.envisioniot.com/docs/alert/en/latest/learn/alert_overview.html) for the implementation details via the DECADA Management Portal.

- Alerts will be reflected if the threshold is met or device is offline
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/alert5.png"/>
</div>

- Via Email
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/alert2.png"/>
</div>
Via email

- Via SMS
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/alert3.png"/>
</div>

?> The alerts setting available in DECADA are generic in nature. Agencies are advise to utilize the existing API should they require further customization. 

**<u>Via API Calls</u>**

Agencies may refer below for the implementation details via the existing API calls.

- [Alerts Service:](https://support.envisioniot.com/docs/alert-api/en/2.3.0/overview.html) Monitor asset statuses, define alert contents, alert types, alert severities, alert trigger conditions, and manage the alert records.
- [Notification Management Service:](https://support.envisioniot.com/docs/notification-mgmt-api/en/2.3.0/overview.html) Send messages to Agencies with specific templates and query the message sending results

**<u>Use-Case</u>**

Agencies can learn how to create the Alert ID to generate alerts based on the pre-set conditions:

 - [Quick Start: Setting Different Alert Thresholds for Devices of the Same Model](https://support.envisioniot.com/docs/alert/en/latest/howto/set_alert_rule_for_device.html)


## Logging Mechanism

**<u>Overview</u>**

DECADA provides logging mechanism which allows Agencies to retrieve both system and devices logs to identify and analyze issue early and ensure that the intended functions are running smoothly. 

Logs in DECADA are categorized into two types as per the below.
- **Cloud Logs:** Include upstream and downstream messages such as device onboarding, firmware upgrades, file uploads and downloads, data parsing, data reporting, data storage, commands, etc. Logs of upstream messages are messages sent by the device to the message queue, messages flowed from the topic queue to the rule engine, and messages forwarded from the rule engine to other products and services in DECADA, while logs of downstream messages are messages sent from the cloud to the device.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/LoggingMechanism.png"/>
</div>

- **Device Logs:** Include information that are related to the device running state and processing logic. Note that devices need to support log reporting for logs to be viewed.

**<u>Before You Start</u>**

To view logs on DECADA, Agencies will need to have an account and access to the Device Management Administrator Policy. If Agencies do not have the access, please contact GovTech for the creation of account with the necessary functionality access.

Agencies may refer [here](https://support.envisioniot.com/docs/device-connection/en/2.2.0/howto/monitoring/logs.html) for more information.

<!--Note to Team:
Is there any use-case on how to configure to view device logs?-->


## Data Asset Management

**<u>Overview</u>**

DECADA provides functions relating to Data Asset Management which allows Agencies to manage, consume and store data according to their business needs.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/DataAssetManagement.png"/>
</div>

<!--
**Data Asset Catalog Services**
DECADA enables Agencies to search the metadata of models and measurement points (i.e. basic information, stream processing lineage) and all the instances that are associated with the model to which a measurement point belongs.
-->

The data flow of real-time data in DECADA Data Asset Management can be viewed through 3 key capabilities:
- Stream Analytics (i.e. Stream Processing, Batch Processing)
- Storage Management & Access (i.e. Time Series Database TSDB, Data Archiving, Data Federation)
- Data Governance (i.e. Data Subscription Services)

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/DataAssetManagementOverview.png"/>
</div>

**<u>Before You Start</u>**

To leverage on the following services for better data management, Agencies will need to have an account and access to the corresponding services If Agencies do not have the access, please contact GovTech for the creation of account with the necessary functionality access.

**<u>Stream Processing Services</u>**

Powered by Apache SparkTM Streaming, DECADA Stream Analytics targets to meet the real-time data processing requirement of devices and assets where it can be used for the following scenarios:

- Aggregating and calculating asset raw data
- Computation of device state

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/StreamProcessing.png"/>
</div>

By leveraging on such service, Agencies will be ensured of the following:
- High throughput and low latency stream processing.
- Commonly used stream processing algorithms in the IoT field.
- Visualized template-based configurations to help Agencies quickly perform their stream data processing jobs.
- A set of underlying packaged StreamSets operators for developers to develop customized stream data processing jobs to meet the requirements of complex business scenarios. Agencies may refer here for more information on the existing StreamSets operators.

?> Agencies can leverage on existing API/SDK and the DECADA Management Portal to create the analytics pipeline to meet the real-time data processing requirement of devices and assets

**<u>Via DECADA Management Portal</u>**

Agencies may refer [here](https://www.envisioniot.com/docs/stream-processing/en/latest/gettingstarted_ai.html) for the implementation details via the DECADA Management Portal.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/StreamProcessingService.png"/>
</div>

**<u>Via API Calls</u>**

Agencies may refer [here](https://support.envisioniot.com/docs/stream-processing-api/en/2.3.0/overview.html) for the implementation details via the existing API calls.

**<u>Batch Processing Service</u>**

DECADA provides Dataflow Service that enables batch data processing based on scheduled workflows. The batch data processing operations support various scenarios from simple data transformation to complete ETL (extract-transform-load). The Batch Processing Service also provides common libraries out-of-the-box for most frequently used data processing operations.

?> Agencies can leverage on existing API/SDK and the DECADA Management Portal to manage the data synchronization, data development, and workflow operation tasks for batch data processing.

**<u>Via DECADA Management Portal</u>**

Agencies may refer [here](https://www.envisioniot.com/docs/batch-processing/en/latest/managing_resource.html) for the implementation details via the DECADA Management Portal.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/BatchProcessingServices.png"/>
</div>

**<u>Via API Calls</u>**

Agencies may refer [here](https://www.envisioniot.com/docs/batch-processing-api/en/latest/v2.1/overview.html) for the implementation details via the existing API calls.



**<u>Time Series Data Management (TSDB)</u>**

The Time Series Database (TSDB) provides efficient and stable storage and management for time series data that is ingested from devices or generated by the stream processing engine by having a variety of data storage options based on Agencies' data storage and reading requirements. It allows Agencies to view the latest data ingested from devices via the Data Insights feature and delete historical data via the Data Deletion feature.

?> 1. The data storage policy must be configured before the devices start uploading data to DECADA. Otherwise, the uploaded device data will not be stored in TSDB. 2. Agencies can leverage on existing API/SDK and the DECADA Management Portal to query and update related storage resources.

**<u>Via DECADA Management Portal</u>**

Agencies may refer [here](https://www.envisioniot.com/docs/time-series-data/en/latest/policy.html) for the implementation details via the DECADA Management Portal.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/TSDBFeature.png"/>
</div>

**<u>Via API Calls</u>**

Agencies may refer below for the implementation details via the existing API calls.

- [TSDB Policy Service:](https://support.envisioniot.com/docs/tsdb-policy-api/en/2.3.0/v2.1/overview.html) To query and update TSDB Storage Policies
- [TSDB Data Service:](https://support.envisioniot.com/docs/tsdb-data-api/en/2.3.0/v2.1/v21.html) Query assets data that is stored in the DECADA TSDB and filter/aggregate the data based on use-case

**<u>Data Archiving Service</u>**

DECADA supports archiving and storing data from the real-time message channel, data from the offline message channels, real-time alert records, and data stored in TSDB. It provides flexible storage configurations to reduce Agencies data storage costs.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/DataArchivingService.png"/>
</div>

Agencies may refer [here](https://www.envisioniot.com/docs/data-archiving/en/latest/archive_policy.html)for more information.

**<u>Data Federation Service</u>**

DECADA provides data reading and writing services from and to multi-source heterogeneous data storage systems. Agencies can read data from and write data to heterogeneous data sources through unified SQL statements.

?> Agencies can leverage on existing API/SDK and the DECADA Management Portal to manage data federation channels, and read data from or write data to multi-source heterogeneous data storage systems.

**<u>Via DECADA Management Portal</u>**

Agencies may refer [here](https://www.envisioniot.com/docs/data-federation/en/latest/index.html) for the implementation details via the DECADA Management Portal.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/DataFederationService.png"/>
</div>

**<u>Via API Calls</u>**

Agencies may refer [here](https://support.envisioniot.com/docs/data-federation-api/en/2.3.0/overview.html) for the implementation details via the existing API calls.
 
**<u>Data Subscription Services</u>**

Agencies can subscribe to both the original and the calculated data, so that the asset data can be consumed by Agencies' application directly The subscription setting can be configured though the Data Subscription function in the DECADA Management Portal and existing API.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/DataSubscriptionService_DataAsset.png"/>
</div>

Agencies may refer [here](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2258043087) for more information.

<!--## Data Analytics

**Overview**

DECADA provides functions relating to Data Analytics which allows Agencies to obtain insights from data which are stored via batch processing.
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/dataanalytics1.png"/>
</div>
Data Analytics

It provides an end-to-end tooling for:
- Simple data transformation
- Complete ETL (Extract-Transform-Load) Pipeline
- Further interactive exploration
- Providing the modeling-ready data for machine learning, or writing the data to a data store that is optimized for analytics and visualization. 

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/dataanalytics2.png"/>
</div>




Note to Team:
To mentioned about ML?
-->

## Device Integration

**<u>Overview</u>**

The device integration functionality is a flow that allows Agencies to design and deploy process in a seamless manner. This will provides Agencies the functionality to schedule, automate, and orchestrate integration flows when they need to integrate device data across enterprises or organizations. 

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/DeviceIntegration.png"/>
</div>
<!--Device Integration Overview-->

**<u>Before You Start</u>**

To utilize the services, Agencies will need to have an account and access to the Device Integration resources. If Agencies do not have the access, please contact GovTech for the creation of account with the necessary functionality access.

**<u>Via DECADA Management Portal</u>**

Agencies may refer [here](https://support.envisioniot.com/docs/device-integration/en/latest/howto/gettingstarted_storing_data.html) for the implementation details via the DECADA Management Portal.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/DeviceIntegration_Portal.png"/>
</div>
Device Integration - DECADA Management Portal

**<u>Use Case</u>**

Agencies can learn how to set up a user account in a particular organization:

-[PC Device Data Integration](https://support.envisioniot.com/docs/device-integration/en/latest/howto/tutorial_pc_device_mgmt.html)
