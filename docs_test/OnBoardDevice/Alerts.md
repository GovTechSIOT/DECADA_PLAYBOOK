<h1>Alerts</h1>

DECADA has available alert services which Agencies can use to monitor alerts on devices as defined by the alert triggering rules against real-time measure point telemetry. 

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/cloudEdge.png"/>
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
<img width="850" src="./images/onBoardDevice/alert5.png"/>
</div>

- Via Email
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/alert2.png"/>
</div>
Via email

- Via SMS
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/alert3.png"/>
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
<img width="850" src="./images/onBoardDevice/loggingMechanism.png"/>
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
<img width="850" src="./images/onBoardDevice/dataAssetManagement.png"/>
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
<img width="850" src="./images/onBoardDevice/dataAssetManagementOverview.png"/>
</div>

**<u>Before You Start</u>**

To leverage on the following services for better data management, Agencies will need to have an account and access to the corresponding services If Agencies do not have the access, please contact GovTech for the creation of account with the necessary functionality access.

**<u>Stream Processing Services</u>**

Powered by Apache SparkTM Streaming, DECADA Stream Analytics targets to meet the real-time data processing requirement of devices and assets where it can be used for the following scenarios:

- Aggregating and calculating asset raw data
- Computation of device state

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/streamProcessing.png"/>
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
<img width="850" src="./images/onBoardDevice/streamProcessingService.png"/>
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
<img width="850" src="./images/onBoardDevice/batchProcessingServices.png"/>
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
<img width="850" src="./images/onBoardDevice/tsdbFeature.png"/>
</div>

**<u>Via API Calls</u>**

Agencies may refer below for the implementation details via the existing API calls.

- [TSDB Policy Service:](https://support.envisioniot.com/docs/tsdb-policy-api/en/2.3.0/v2.1/overview.html) To query and update TSDB Storage Policies
- [TSDB Data Service:](https://support.envisioniot.com/docs/tsdb-data-api/en/2.3.0/v2.1/v21.html) Query assets data that is stored in the DECADA TSDB and filter/aggregate the data based on use-case

**<u>Data Archiving Service</u>**

DECADA supports archiving and storing data from the real-time message channel, data from the offline message channels, real-time alert records, and data stored in TSDB. It provides flexible storage configurations to reduce Agencies data storage costs.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/dataArchivingService.png"/>
</div>

Agencies may refer [here](https://www.envisioniot.com/docs/data-archiving/en/latest/archive_policy.html)for more information.

**<u>Data Federation Service</u>**

DECADA provides data reading and writing services from and to multi-source heterogeneous data storage systems. Agencies can read data from and write data to heterogeneous data sources through unified SQL statements.

?> Agencies can leverage on existing API/SDK and the DECADA Management Portal to manage data federation channels, and read data from or write data to multi-source heterogeneous data storage systems.

**<u>Via DECADA Management Portal</u>**

Agencies may refer [here](https://www.envisioniot.com/docs/data-federation/en/latest/index.html) for the implementation details via the DECADA Management Portal.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/DataFederationService.png"/>
</div>

**<u>Via API Calls</u>**

Agencies may refer [here](https://support.envisioniot.com/docs/data-federation-api/en/2.3.0/overview.html) for the implementation details via the existing API calls.
 
**<u>Data Subscription Services</u>**

Agencies can subscribe to both the original and the calculated data, so that the asset data can be consumed by Agencies' application directly The subscription setting can be configured though the Data Subscription function in the DECADA Management Portal and existing API.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/dataSubscriptionServiceDataAsset.png"/>
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
<img width="850" src="./images/onBoardDevice/deviceIntegration.png"/>
</div>
<!--Device Integration Overview-->

**<u>Before You Start</u>**

To utilize the services, Agencies will need to have an account and access to the Device Integration resources. If Agencies do not have the access, please contact GovTech for the creation of account with the necessary functionality access.

**<u>Before you Start</u>**
To utilize the services, Agencies will need to have an account and access to the Device Integration resources. If Agencies do not have the access, please contact GovTech for the creation of account with the necessary functionality access.

**<u>Via DECADA Management Portal</u>**

Agencies may refer [here](https://support.envisioniot.com/docs/device-integration/en/latest/howto/gettingstarted_storing_data.html) for the implementation details via the DECADA Management Portal.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/deviceIntegrationPortal.png"/>
</div>
Device Integration - DECADA Management Portal

**<u>Use Case</u>**

Agencies can learn how to set up a user account in a particular organization:

-[PC Device Data Integration](https://support.envisioniot.com/docs/device-integration/en/latest/howto/tutorial_pc_device_mgmt.html)
