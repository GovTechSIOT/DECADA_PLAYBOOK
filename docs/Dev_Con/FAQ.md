# FAQ

This page listed the frequently asked questions about DECADA services.

## Planning and Provisioning Phase

**Device Connectivity**

Q: Is it possible for segregation of sensor traffic for connection from Telco (i.e. M1/SingTel) to DECADA’s Link Landing Zone?

A: TBC

Q: Is it possible to set-up VPN Tunnel from Edge to DECADA connecting via Internet and/or Private Network?

A: TBC

Q: Will DECADA be integrating with Telco portal to monitor parameter such as SIM cards/data usage?

A: TBC

**Device Registration**

Q: Can Edge subscribe to DECADA for data? How to configure the Edge?

A: The Edge can subscribe to DECADA data over the stated protocol (i.e. MQTT) or existing SDK (i.e. Python), which does not require any configuration.
   The Edge is compatible with DECADA as long as it is able to communicate via the stated protocol/SDK supporting with TLS 1.2 ( no minimal requirement for hardware/OS on the Edge to be compatible with DECADA).

Q: How can a device connect to DECADA if we cannot burn the authentication triples onto it or change its firmware?

A: For programmable devices, authentication triples are stored in the device for static authentication.
   Dynamic authentication can be used for authenticating programmable devices on a large scale. The serial number of the devices can be used as the device key. Non-programmable devices can be connected to DECADA through Edge, the existing third-party cloud, or SCADA system.

Q: Is there any limit on the basic information fields of model, product, asset, and asset tree?

A: The limitation is as follows:
   - Model name, product name, asset name, asset tree name: 1-64 characters.
   - Product key, device key: 1-64 characters. Chinese, English, numbers and em dash (-), underscore (_), or period (.).
   - Model description, product description, asset description, asset tree description: no more than 100 characters.

Q: How do we connect real devices to DECADA and get their reported data?

A: Real devices can be connected to DECADA directly or through a gateway proxy via MQTT/HTPP/CoAP. 
   You need to create a device model, create a product, and register the device on DECADA. DECADA provides standard C/Java/Node.js/Python device SDKs for development.

Q: How are models, products, devices, and assets related? What is their inheritance relationship?

A: Models describe objects, with four main elements: attributes, measurement points, services, and events. 
   Products are created based on models, which can be regarded as a set of devices. Assets consists of device assets and logical assets. Device assets generally refers to real devices, and have device triples (product key, device key, device secret) which can be used for device authentication and connection to the broker. Logical assets are logical concepts of places such as buildings or organizations, and generally has no association with actual devices.
   The most intuitive difference between device and logical assets is that device assets are created based on products, while logical assets are based on models.

Q: What is the difference between Edge and device?

A: Both Edge and device are devices, but Edge represents the gateway, which can mount sub-devices under it, and when real devices are connected, 
   the Edge can  report data and receive commands on behalf of the sub-devices.

Q: Is there a limit to the number of devices that can be managed for products? What are the charges?

A: For a single OU, the limit of 100k devices can be increased. Charges are based on the number of messages Agencies are to contact GovTech-DECADA Team for more information.

Q: Is there technical restriction for DECADA to monitor and mange the devices (i.e. dummy sensors which are connecting to Edge via Zigbee)?

A: TBC

**Integration with DECADA**

Q: How to select my device connection scheme?

A: The choice depends on the capability of your devices, your business scenario and requirements. Refer to [“Integration with DECADA”](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2262794452/Integration+with+DECADA)

Q: Is there any limit on the basic information fields of model, product, asset, and asset tree?

A: The limitation is as follows:
   - Model name, product name, asset name, asset tree name: 1-64 characters.
   - Product key, device key: 1-64 characters. Chinese, English, numbers and em dash (-), underscore (_), or period (.).
   - Model description, product description, asset description, asset tree description: no more than 100 characters.

Q: How do we connect real devices to DECADA and get their reported data?

A: Real devices can be connected to DECADA directly or through a gateway proxy via MQTT/HTPP/CoAP. 
   You need to create a device model, create a product, and register the device on DECADA. DECADA provides standard C/Java/Node.js/Python device SDKs for development.

## Service Phase

**Dashboards**
Q: Is DECADA able to integrate with Maps services to display sensors with a map background?

A: TBC

Q: Is the parameter shown on the DECADA dashboard customizable to Agencies' requirement?

A: Yes. Agencies can customized based on use-case.

**Remote Controlling of Devices**
Q: What are the requirements for remote control commands?

A: Remote control commands are based on TCP. Ports 8043 and 8099 need to be enabled.

Q: Agency has a 3rd Party Application which is interfaced with DECADA (all sensors are connected to DECADA) where the controlling is done remotely
   via the 3rd Party Application. Does DECADA has the capability to ensure such command to control the sensors remotely is legitimate?

A: Yes, Agencies can implement detection logic in Gateway and configure events on DECADA when such command is issued for Alert purpose.
   Checks are also done on DECADA layer to ensure command initiated from the 3rd Party Application is legitimate:
   - Application interacting with DECADA have the API Keys where the keys will be created upon application registration. 
     The API Keys are tagged with specific   permission to conduct the relevant actions. 
   - Whitelisting of IP address. 

**Multi-Tenancy**

Q: If a device is registered in OU 1, can I use the device in OU 2?

A: You can subscribe to its data across OUs. For OU 2, devices registered on OU 1 is not visible.

**Alert Management**

Q: Is there a more flexible alert GUI for Agencies to use such as widgets or optional templates?

A: Not for the time being. However Agencies can contact GovTech-DECADA Team for more specific use-case.

Q: How can the collected alert data be transferred to external video wall for display?

A: You can subscribe to the alert data in real-time through alert data subscription via applications and display it on large screen displays.

Q: Can Agencies use the Alert system to alert based on multiple rules?

A: The DECADA alert engine is capable of providing alert configurations for multiple devices and measurement points,
   as well as other improved alert functions such as alerts based on device events, timings, combining with all the conditions (i.e. AND, OR, etc).

Q: What are the dashboard templates for alerts? How do I create a template?

A: TBC

**Stream Processing**

Q: When configuring the running mode of a stream processing pipeline, which running mode shall I choose, the Standalone Mode or the Cluster Mode?

A: For the Standalone Mode, the underlying resources cannot be horizontally expanded, so the running resources are limited. 
   However, the resource utilization efficiency of the Standalone Mode is high, and it is suitable for processing data with small traffic. For the Cluster Mode, the underlying resources can be horizontally expanded to meet the resource requirement of stream processing pipelines, and it is suitable for processing data with big traffic.

Q: How much resource shall I request for running a stream processing pipeline?

A: You can refer to the Operator Performance Description for the performance index of each operator. 
   The required resource can be estimated based on the used operators, the data traffic size, and the running mode configuration of the stream processing pipeline. The most recommended method is to simulate the production data flow in the test environment, adjust the running resources of the stream processing pipeline according to the operation monitoring data, and then apply the corresponding configuration to the production environment.

Q: When I start a newly published stream processing pipeline, the startup is failed. Why?

A: Several reasons might cause the startup failure of stream processing pipelines. You can troubleshoot with the following steps.
   1. Ensure that your network connection is ready when you perform maintenance operations on the stream processing pipeline.
   2. Ensure that the requested resource quota is enough for the running resource configuration of the stream processing pipeline
      You can request more resources  or adjust the running resource configuration as needed.
   3. If stream processing system errors are reported, you can try restarting the stream processing pipeline or contact GovTech-DECADA team.

Q: My stream processing pipeline is started and running, but the calculated output is not generated as expected. Why?

A: Currently, an organization can have at most 50 stream processing pipelines.

**Time Series Data Management(TSDM)**

Q: How does the TSDB store measurement point data?

A: The TSDB uses the measurement point ID as the key to store point data. If the data of a measurement point has entered the TSDB, you cannot edit its data type, delete the measurement point, or model.

Q: How can we apply for DECADA storage such as IMBD, TSDB, Archive, etc.? What are the charges?

A: You can apply for file storage services in resource management. Agencies are to contact GovTech-DECADA Team for more information.

Q: What preparation work is required before configuring TSDB storage policies?

A: Before configuring TSDB storage policies, you need to request for the Time Series Database resource for your organization.
   Otherwise, the configured TSDB storage policies will not take effect by default.

Q: When should I configure TSDB storage policies?

A: It is recommended that you configure TSDB storage policies after your devices are connected to DECADA and before device data is ingested. 
   Otherwise, the ingested data will not be stored in TSDB by default. If you want to store the data that is processed by the streaming engine, you must configure the TSDB storage policies for the processed data before the stream processing pipelines start running.

Q: Will the TSDB storage policies take effect immediately after the configuration is saved?

A: The storage policies will take effect in about 5 minutes after the configuration is saved.

Q: How many storage policy groups can be created for an organization?

A: Currently, an organization can have at most 5 storage policy groups.

Q: Can attributes of models and measurement points that are associated with TSDB storage policies be modified?

A: When TSDB storage policies are configured, the associated measurement point IDs, measurement point types, and data types cannot be modified. 

Q: My devices are connected and have started uploading data to the cloud. Why could I not get data through the data service APIs?

A: After device connection, you need to configure TSDB storage policies for your device measurement points. 
   Otherwise, the ingested data will not be stored in TSDB by default, and you cannot get the data with API.

Q: Can data stored in TSDB be deleted?

A: Data stored in TSDB can be deleted with the Data Deletion feature.

Q: Can data stored in TSDB be archived?

A: Yes. Data stored in TSDB can be archived with the Data Archiving service.

**Data Federation**
Q: What are the differences between enabling and disabling the cross-source analysis function when starting a data federation channel?

A: Enabling the cross-source analysis function requires more resource request than disabling the function. 
   Cross-source analysis supports accessing data from multiple data sources by unified SQL statements. Using a channel with cross-source analysis disabled, you can query data from a single data source only (currently supporting MySQL and Hive data sources with the corresponding querying syntax). Besides querying data, you can also download data from Hive data sources with the Federation Download feature.

Q: When configuring JDBC connection in Tableau to access data in Hive through a read channel with cross-source analysis disabled, there is no response,
   or an error will be reported. How to solve this issue?

A: Currently, Data Federation does not support JDBC connection in Tableau to access data in Hive through a read channel with cross-source analysis disabled.

Q: Why does a timeout error occur when accessing Hive data source through a read channel with cross-source analysis disabled by JDBC?

A: If aggregation or sorting statements like group by, count, and order by are used for data query, the mapreduce jobs will be started in Hive, 
   which leads to minute-level running and response time. It is recommended to access data in Hive through a read channel with cross-source analysis enabled or use the Federation Download feature.

Q: The read channel is started successfully, but a message “Schema does not exit” is reported when querying data. Why?

A: This error might be caused by network connection or component dependency issues. The data source is not added correctly. Try restarting the channel.

Q: When dragging data in Tableau or IDE, an error about invalid SQL is reported. Why?

A: Data Federation cannot fit Tableau or IDE fully because it has special requirements on data source, database, and table names. 
   It is recommended to use custom SQL statements or enter SQL in the IDE Console to query data.

Q: When does an error occur when using query statements as follows?

<!-- tabs:start -->
#### **Code**
```
{
1SELECT * FROM mysql.test.data LEFT JOIN hive.db.device ON mysql.test.data.dev_id=hive.db.device.dev_id WHERE hive.db.device.dev_id IS NOT NULL
2hive
}
```
<!-- tabs:end -->

A: Name like hive.db.device.dev_id is too long. It is recommended to use an alias. The query statement can be changed to:
<!-- tabs:start -->
#### **Code**
```
{
SELECT * FROM mysql.test.data m LEFT JOIN hive.db.device h ON m.dev_id=h.dev_id WHERE h.dev_id IS NOT NULL
}
```
<!-- tabs:end -->

**Data Subscription**
Q: How many data subscription jobs can be created for an organization?

A: Currently, an organization can have at most 15 data subscription jobs.

Q: How many consumer groups are supported for a data subscription job? How many consumers are supported in a consumer group?
A: The number of consumer groups for a data subscription job is not limited, but a consumer group allows 2 consumers to consume to subscribed data
   at the same time.

Q: How long will subscribed real-time asset data be stored in Kafka topics?
A: By default, subscribed data will be stored in Kafka topics for 3 days. In case the data consumption stops temporarily, you can continue consuming
   the subscribed data within 3 days after the real-time data is subscribed.

**Data Archiving**
Q: Do data archiving jobs support both automatic and manual modes?

A: The running of data archiving jobs is rule-driven. You need to configure data archiving jobs based on your business needs
   (such as where to store the archived data, which data to archive, and the archiving cycle). When a data archiving job is started and running, 
    data will be archived according to the configuration without human intervention. Currently, data archiving supports Real-Time and Offline job types. For real-time job type, the data archiving job will keep running. Once data is generated from the data source, the job will archive the data according to the configuration automatically. For offline job type, the job will run only once. After all the data specified in the configuration is archived, the job will stop running.

Q: What will be impacted if the configuration of a running data archiving job is modified?

A: After the data archiving job configuration is modified and submitted, the updated configuration will take effect immediately.
   The data that has been archived will not be impacted. For example, if the storage path of archived data is changed from /tds/ods/alarm1/ to /tds/ods/alarm2/, the new storage path will take effect immediately after the change is submitted. After about 1-2 minutes, the archived data will be stored in the alarm2 directory. The archived data that has been stored in the alarm1 directory will not be impacted.

Q: How to query the data that has been archived in the target storage?

A: The Data Archiving service enables archiving data from the data sources to the target storage. It is a set of archiving job configuration
   and management tools, but it does not provide the management of the target storage systems, nor the query ability of archived data. You need to use the corresponding management tools of the target storage systems for data query. For example:
   - If the target storage is Azure Blob, you can use the client tools provided by Azure platform to query the data stored in Blob Storage.

Q: When the data archiving job is restarted after running failure, will the job re-archive the data at the moment when the job fails?

A: For the following situations:
   - For real-time data archiving, when the failed job is restarted, it will re-archive all the failed data in the last 3 days automatically. 
     If the job failed for more than 3 days, it can process data in the latest 3 days only. Therefore, when the data archiving job failure triggers the alert notification through SMS or email, the alert receiver must take action in time to avoid data loss.
   - For offline data archiving, when the failed job is restarted, it will re-archive all the data again.

**Data Synchronization and Batch Processing**

Q: Does Data Synchronization service supports synchronizing both structured data and unstructured data?

A: Yes. Data Synchronization service supports synchronizing structured data and file stream (unstructured data).

Q: Do Data Synchronization and Batch Processing services support system variables?

A: Yes. Data Synchronization and Batch Processing services support triggering time and business date variables, time-related variables, and non-time-related variables to achieve dynamic parameter transfer.

Q: Do Data Synchronization and Batch Processing services support resource isolation?

A: Yes. Currently, the resources used by the Data Synchronization and Batch Processing services are dynamically requested on demand. 
   After data synchronization and batch processing jobs are completed, the resources can be released. The requested resources are completely isolated and do not affect each other.

Q: Does the Batch Processing service support distributed operation of multiple tasks?

A: Yes. When configuring the running mode of a batch processing task, you can specify the source of the distribution key to enable distributed operation
   of multiple tasks for enhancing running efficiency.

Q: Do Data Synchronization and Batch Processing services support alert configuration?

A: Yes. After configuring alert service for the Data Synchronization and Batch Processing services, the alert messages will be sent to the specified
   receivers through SMS or email upon running exception.

Q: Does the Batch Processing service support calling by external applications?

A: Yes. The Batch Processing service provides REST APIs for integration with external applications.

Q: Can data be filtered only by the row level when synchronizing data from MySQL, SQL Server, or Oracle to EnOS Hive? Can I configure column-level 
   data filtering conditions or complex query conditions to filter data in the data source?

A: Besides configuring row-level data filtering conditions in the data source, you can click Switch to SQL and enter data query statements to filter data 
   when configuring the data synchronization job. However, note that the performance of SQL query statements depends on the performance of the source databases. Running SQL statements might also impact the database performance. It is not recommended to enter SQL query statements that are too complicated.

Q: Why does the status of a batch processing workflow remain Running when the running log shows that it is completed?

A: When the running of the last task node of the workflow is completed, the status of the workflow might remain Running because the workflow status is monitored and triggered by another process. The status change has a short latency.

**Logging Mechanism**

Q: Is it possible to segment the logs based on devices for review by individual vendors?

A: Yes, the existing multi-tenancy capabilities are implemented with the intention for only intended Contractor to review their respective sensor logs.

## Maintenance Phase

**Over-The-Air (OTA) Upgrade**

Q: When the device is updated by DECADA OTA, what can it be use to update for (i.e. firmware/runtime engine)?

A: A device can download OTA files through DECADA OTA and it can determine what this OTA file is used for.

**Certificate Lifecycle Management**

Q: What should I do if the device certificate expires? Can I use OTA to renew the certificate?

A: You need to renew the certificate if it has expired. Agencies will need to apply for a certificate with a renewed validity period.
   Before the original certificate expires, the device can still use it to get connected to DECADA. The device should use the renewed certificate to connect to DECADA after it has obtained it. OTA is not suitable for renewing certificate as it is designed for large-scale firmware upgrade.

Q: What is the certificate validity period?

A: It is currently set as 1-year validity period. Period is adjustable based on Agencies' requirement.

Q: What Certificate Authority is DECADA using?

A: DECADA is using public certificate via Comodo Certificate for server authentication. Client certificate hosted on devices/edge 
   will be self-signed SSL cert where it will be signed by DECADA for validation of client.

Q: What is the roles & responsibility between Agencies and GovTech in terms of the issuance of client certificate to devices?

A: During the norm period, the deployed SSL certs installed on devices can be tracked and renewed via Client Certificate Management where Agencies can 
   use API to generate to deploy the certificate to devices. However there is no fixed workflow on the workflow. Agencies can contact GovTech-DECADA Team to customize the workflow. 

## Decommissioning Phase

Q: Does Agencies' data still resides in DECADA after decommissioning the devices?

A: TBC

## Integration with WOG Smart Nation Sensor Platform

Q: What is the Firewall rules required on Agencies end to ingest data from SNSP?
 
A: TBC

Q: How real time will the telemetry data from the devices be passed from SNSP back to Agencies for data analysis and repository?

A: TBC

Q: Does sensors data have to be stored in SNSP prior connecting back to Agency?

A: TBC

## Integration with 3rd Party Applications

Q: Can DECADA subscribe to third-party message brokers?

A: Applications running on top of DECADA can subscribe to third-party brokers. 

Q: Is there any restriction on the mode of connection from DECADA to Agencies desired destination?

A: Yes, DECADA is currently provision for Agencies to connect via Internet/Private MPLS/SG-WAN. 
    If the mode of connection required by Agencies doesn't fall under the stated category,  please contact GovTech-DECADA Team.

Q: What is the integration effort required from DECADA to 3rd Party Application?

A: It depends based on use-case. For minimal effort data ingesting from DECADA to 3rd Party Application has to be:
   - Norm Protocols used (i.e. HTTPS/MQTT/SFTP)
   - Agencies will have to set-up relevant server to pull the data from DECADA

Q: What is the Firewall rules required on Agencies end to ingest data from DECADA?
 
Q: How real time will the telemetry data from the devices be passed from DECADA to the 3rd Party Application for data analysis and repository?
 
A: TBC

Q: Does sensors data have to be stored in DECADA prior connecting to WOG SNSP/back to Agency?

A: TBC

## Security Related

**Identity And Access Management**

Q: What is password expiration?

A: Based on the password strength requirements set in each organization, the system checks user passwords for expiration.
   Three days before the password expires, the system will remind the user of the expiration each time the user logs in, and the user should change the password before the password expires. If the password has expired, the user would need to contact the OU administrator to reset the user password.

Q: What should I do if I forget my password?

A: The forgot password link is provided on the login page, and you can retrieve the password through the mobile phone number or email 
   that has been associated with the account. If there is no mobile phone number or email associated with the account, you would need to contact the OU administrator to reset the password.

Q: How are users and application authenticated prior connection to DECADA

A: Access to the EnOS service APIs and portal require authentication. 
   EnOS provides integration with customers’ user registries that supports LDAP, such as the Windows Directory Server. EnOS uses several types of credentials for authentication. These include 1) passwords, 2) cryptographic keys, 3) digital signatures, and 4) certificates. EnOS also provides the option of requiring 5) multi-factor authentication (MFA) to log in to the portal.

**Device Security**

Q: How are devices authenticated and authorized prior connection to DECADA?

A: Each devices are provisioned with an unique identity keys which served as an authorization upon connection to DECADA.
   DECADA also provides 2 methodology for devices to be authenticated prior connection:
   - Secret-based One-Way Authentication
   - Certificate-based Two-Way Authentication

## SDK & APIs

Q: Can third-parties use DECADA apps and APIs?

A: The APIs DECADA provides are open APIs, therefore, as long as the third-parties have an SA account and relevant OU authorized permissions, they can.

Q: What are the main functions provided by APIM?

A: APIM provides a complete API hosting service. Service users open capabilities, services, and data to partners and customers in the form of APIs.
   - Provide multiple methods such as attacks, request encryption, identity verification, and flow control to ensure API security and reduce API opening risks.
   - Provide full lifecycle management for the definition, release, debugging, and offlining of APIs, and generate API reference documents to improve API
     management and iteration efficiency.
   - Provide reporting, monitoring, and analysis functions to reduce API maintenance costs.

Q: What is the relationship between API, organization (OU), and EnOS application?

A: Organization users can create and mount APIs on APIM. The API belongs to the organization and can be called by DECADA to perform authentication
   with the application’s AccessKey and SecretKey.

Q: How do I call the API?

A: The DECADA API provides a series of developer tool kits to help developers efficiently complete device access, data collection, subscription
   to device data, and access to data and services without complex programming. 
   At the same time, all APIs can be called using token authentication. The AccessKey, SecretKey, and system timestamp are used to generate an 
   Access Token by encryption, and the API is called using the Access Token.

Q: What are the dimensions of API monitoring?
A: Agencies can view the number of API requests, call delays, error analysis, and call success rates in the APIM Console.

Q: How can I ensure API security?

A: To ensure API security, ensure the following tasks are done:
   - When creating an API, add OU authentication for API calls.
   - Set IP access control policies through whitelist / blacklist.
   - Set the flow control policy for the API, and set the QPS to the range that the backend service can support.

Q: Do I need to republish changes to the API?

A: After the API is published, if you edit the API parameters again, you need to republish to synchronize the modified information to the environment.

## Others

Q: Does leveraging on DECADA implies compliance to future IoT policy?

A: No, Agencies will need to conduct self-assessment to ensure compliance. 

Q: What is the cost required for Agencies to connect  to DECADA via WOG Network (i.e. SG-WAN)?

A: TBC
 
 
 
Note to Team:
To furnish more information on the SNSP platform

