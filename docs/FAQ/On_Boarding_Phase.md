# On-Boarding Devices

This page listed the frequently asked questions about DECADA services during the on-boarding of devices.

## Planning and Provisioning Phase

### Integration with DECADA

**Q1**: How to select my device connection scheme?

**A1**: The choice depends on the capability of your devices, your business scenario and requirements. Refer to [Integration with DECADA](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2284257507/Introduction+on+Integration+to+DECADA)

**Q2**: Is there any limit on the basic information fields of model, product, asset, and asset tree?

**A2**: Is there any limit on the basic information fields of model, product, asset, and asset tree?

- Model name, product name, asset name, asset tree name: 1-64 characters.
- Product key, device key: 1-64 characters. Chinese, English, numbers and em dash (-), underscore (_), or period (.).
- Model description, product description, asset description, asset tree description: no more than 100 characters.

**Q3**: How do we connect real devices to DECADA and get their reported data?

**A3**: Real devices can be connected to DECADA directly or through a gateway proxy via MQTT/HTPP/CoAP. You need to create a device model, create a product, and register the device on DECADA. DECADA provides standard C/Java/Node.js/Python device SDKs for development.

### Device Connectivity

**Q1**: Is it possible for segregation of sensor traffic for connection from Telco (i.e. M1/SingTel) to DECADA’s Link Landing Zone?

**A1**: TBC

**Q2**: Is it possible to set-up VPN Tunnel from Edge to DECADA connecting via Internet and/or Private Network?

**A2**: TBC

**Q3**: Will DECADA be integrating with Telco portal to monitor parameter such as SIM cards/data usage?

**A3**: TBC

### Device Registration

**Q1**: Can Edge subscribe to DECADA for data? How to configure the Edge?

**A1**: The Edge can subscribe to DECADA data over the stated protocol (i.e. MQTT) or existing SDK (i.e. Python), which does not require any configuration.

The Edge is compatible with DECADA as long as it is able to communicate via the stated protocol/SDK supporting with TLS 1.2 ( no minimal requirement for hardware/OS on the Edge to be compatible with DECADA)

**Q2**: How can a device connect to DECADA if we cannot burn the authentication triples onto it or change its firmware?

**A2**: For programmable devices, authentication triples are stored in the device for static authentication.

Dynamic authentication can be used for authenticating programmable devices on a large scale. The serial number of the devices can be used as the device key.

Non-programmable devices can be connected to DECADA through Edge, the existing third-party cloud, or SCADA system.

**Q3**: Is there any limit on the basic information fields of model, product, asset, and asset tree?

**A3**: The limitation is as follows:

- Model name, product name, asset name, asset tree name: 1-64 characters.
- Product key, device key: 1-64 characters. Chinese, English, numbers and em dash (-), underscore (_), or period (.).
- Model description, product description, asset description, asset tree description: no more than 100 characters.

**Q4**: How do we connect real devices to DECADA and get their reported data?

**A4**: Real devices can be connected to DECADA directly or through a gateway proxy via MQTT/HTPP/CoAP. You need to create a device model, create a product, and register the device on DECADA. DECADA provides standard C/Java/Node.js/Python device SDKs for development.

**Q5**: Real devices can be connected to DECADA directly or through a gateway proxy via MQTT/HTPP/CoAP. You need to create a device model, create a product, and register the device on DECADA. DECADA provides standard C/Java/Node.js/Python device SDKs for development.

**A5**: Models describe objects, with four main elements: attributes, measurement points, services, and events. Products are created based on models, which can be regarded as a set of devices. Assets consists of device assets and logical assets. Device assets generally refers to real devices, and have device triples (product key, device key, device secret) which can be used for device authentication and connection to the broker. Logical assets are logical concepts of places such as buildings or organizations, and generally has no association with actual devices.

The most intuitive difference between device and logical assets is that device assets are created based on products, while logical assets are based on models.

**Q6**: What is the difference between Edge and device?

**A6**: Both Edge and device are devices, but Edge represents the gateway, which can mount sub-devices under it, and when real devices are connected, the Edge can report data and receive commands on behalf of the sub-devices.

**Q7**: Is there a limit to the number of devices that can be managed for products? What are the charges?

**A7**: For a single OU, the limit of 100k devices can be increased. Charges are based on the number of messages Agencies are to contact GovTech-DECADA Team for more information.

**Q8**: Is there technical restriction for DECADA to monitor and mange the devices (i.e. dummy sensors which are connecting to Edge via Zigbee)?

**A8**: TBC

## Service Phase

### Dashboard

**Q1**: Is DECADA able to integrate with Maps services to display sensors with a map background?

**A1**: TBC

**Q2**: Is the parameter shown on the DECADA dashboard customizable to Agencies' requirement?

**A2**: Yes. Agencies can customized based on use-case.

### Remote Controlling of Devices

**Q1**: What are the requirements for remote control commands?

**A1**: Remote control commands are based on TCP. Ports 8043 and 8099 need to be enabled.

**Q2**: Agency has a 3rd Party Application which is interfaced with DECADA (all sensors are connected to DECADA) where the controlling is done remotely via the 3rd Party Application. 

Does DECADA has the capability to ensure such command to control the sensors remotely is legitimate?

**A2**: Yes, Agencies can implement detection logic in Gateway and configure events on DECADA when such command is issued for Alert purpose.

Checks are also done on DECADA layer to ensure command initiated from the 3rd Party Application is legitimate:

- Application interacting with DECADA have the API Keys where the keys will be created upon application registration. The API Keys are tagged with specific permission to conduct the relevant actions. 
- Whitelisting of IP address.

### Multi-Tenancy

**Q1**: If a device is registered in OU 1, can I use the device in OU 2?

**A1**: You can subscribe to its data across OUs. For OU 2, devices registered on OU 1 is not visible.

### Alert Management

**Q1**: Is there a more flexible alert GUI for Agencies to use such as widgets or optional templates?

**A1**: Not for the time being. However Agencies can contact GovTech-DECADA Team for more specific use-case.

**Q2**:  How can the collected alert data be transferred to external video wall for display?

**A2**: You can subscribe to the alert data in real-time through alert data subscription via applications and display it on large screen displays.

**Q3**: Can Agencies use the Alert system to alert based on multiple rules?

**A3**: The DECADA alert engine is capable of providing alert configurations for multiple devices and measurement points, as well as other improved alert functions such as alerts based on device events, timings, combining with all the conditions (i.e. AND, OR, etc).

**Q4**: What are the dashboard templates for alerts? How do I create a template?

**A4**: TBC

### Stream Processing

**Q1**: When configuring the running mode of a stream processing pipeline, which running mode shall I choose, the Standalone Mode or the Cluster Mode?

**A1**: For the Standalone Mode, the underlying resources cannot be horizontally expanded, so the running resources are limited. However, the resource utilization efficiency of the Standalone Mode is high, and it is suitable for processing data with small traffic. For the Cluster Mode, the underlying resources can be horizontally expanded to meet the resource requirement of stream processing pipelines, and it is suitable for processing data with big traffic.

**Q2**: How much resource shall I request for running a stream processing pipeline?

**A2**: You can refer to the Operator Performance Description for the performance index of each operator. The required resource can be estimated based on the used operators, the data traffic size, and the running mode configuration of the stream processing pipeline. The most recommended method is to simulate the production data flow in the test environment, adjust the running resources of the stream processing pipeline according to the operation monitoring data, and then apply the corresponding configuration to the production environment.

**Q3**: When I start a newly published stream processing pipeline, the startup is failed. Why?

**A3**: Several reasons might cause the startup failure of stream processing pipelines. You can troubleshoot with the following steps.

1. Ensure that your network connection is ready when you perform maintenance operations on the stream processing pipeline.
2. Ensure that the requested resource quota is enough for the running resource configuration of the stream processing pipeline. You can request more resources or adjust the running resource configuration as needed.
3. If stream processing system errors are reported, you can try restarting the stream processing pipeline or contact GovTech-DECADA team.

**Q4**: My stream processing pipeline is started and running, but the calculated output is not generated as expected. Why?

**A4**: The stream processing pipeline is running, but no output data is found on the monitoring page. The situation might be caused by the following reasons. The configuration of the stream processing pipeline is not correct (i.e.  incorrect measurement point IDs)

1. The input point data is not uploaded as expected, so no output data is generated.
2. Required system pipelines are not started and running correctly, which caused the data consumption or data output failure.
3. The output point is not registered in the asset model, so the calculated data cannot be stored normally.

**Q5**: How many stream processing pipelines can be created for an organization?

**A5**: Currently, an organization can have at most 50 stream processing pipelines.

### Time Series Data Management (TSDB)

**Q1**: How does the TSDB store measurement point data?

**A1**: The TSDB uses the measurement point ID as the key to store point data. If the data of a measurement point has entered the TSDB, you cannot edit its data type, delete the measurement point, or model.

**Q2**: How can we apply for DECADA storage such as IMBD, TSDB, Archive, etc.? What are the charges?

**A2**: You can apply for file storage services in resource management. Agencies are to contact GovTech-DECADA Team for more information.

**Q3**: You can apply for file storage services in resource management. Agencies are to contact GovTech-DECADA Team for more information.

**A3**: Before configuring TSDB storage policies, you need to request for the Time Series Database resource for your organization. Otherwise, the configured TSDB storage policies will not take effect by default.

**Q4**: When should I configure TSDB storage policies?

**A4**: It is recommended that you configure TSDB storage policies after your devices are connected to DECADA and before device data is ingested. Otherwise, the ingested data will not be stored in TSDB by default. If you want to store the data that is processed by the streaming engine, you must configure the TSDB storage policies for the processed data before the stream processing pipelines start running.

**Q5**: Will the TSDB storage policies take effect immediately after the configuration is saved?

**A5**: The storage policies will take effect in about 5 minutes after the configuration is saved.

**Q6**: How many storage policy groups can be created for an organization?

**A6**: Currently, an organization can have at most 5 storage policy groups.

**Q7**: Can attributes of models and measurement points that are associated with TSDB storage policies be modified?

**A7**: When TSDB storage policies are configured, the associated measurement point IDs, measurement point types, and data types cannot be modified.

**Q8**: My devices are connected and have started uploading data to the cloud. Why could I not get data through the data service APIs?

**A8**: After device connection, you need to configure TSDB storage policies for your device measurement points. Otherwise, the ingested data will not be stored in TSDB by default, and you cannot get the data with API.

**Q9**: Can data stored in TSDB be deleted?

**A9**: Data stored in TSDB can be deleted with the Data Deletion feature.

**Q10**: Can data stored in TSDB be archived?

**A10**: Yes. Data stored in TSDB can be archived with the Data Archiving service.

### Data Federation

**Q1**: What are the differences between enabling and disabling the cross-source analysis function when starting a data federation channel?

**A1**: Enabling the cross-source analysis function requires more resource request than disabling the function. 
   Cross-source analysis supports accessing data from multiple data sources by unified SQL statements. Using a channel with cross-source analysis disabled, you can query data from a single data source only (currently supporting MySQL and Hive data sources with the corresponding querying syntax). Besides querying data, you can also download data from Hive data sources with the Federation Download feature.

**Q2**: When configuring JDBC connection in Tableau to access data in Hive through a read channel with cross-source analysis disabled, there is no response,
   or an error will be reported. How to solve this issue?

**A2**: Currently, Data Federation does not support JDBC connection in Tableau to access data in Hive through a read channel with cross-source analysis disabled.

**Q3**: Why does a timeout error occur when accessing Hive data source through a read channel with cross-source analysis disabled by JDBC?

**A3**: If aggregation or sorting statements like group by, count, and order by are used for data query, the mapreduce jobs will be started in Hive, 
   which leads to minute-level running and response time. It is recommended to access data in Hive through a read channel with cross-source analysis enabled or use the Federation Download feature.

**Q4**: The read channel is started successfully, but a message “Schema does not exit” is reported when querying data. Why?

**A4**: This error might be caused by network connection or component dependency issues. The data source is not added correctly. Try restarting the channel.

**Q5**: When dragging data in Tableau or IDE, an error about invalid SQL is reported. Why?

**A5**: Data Federation cannot fit Tableau or IDE fully because it has special requirements on data source, database, and table names.  It is recommended to use custom SQL statements or enter SQL in the IDE Console to query data.

**Q6**: When does an error occur when using query statements as follows?

#### **Code**
```
{
1SELECT * FROM mysql.test.data LEFT JOIN hive.db.device ON mysql.test.data.dev_id=hive.db.device.dev_id WHERE hive.db.device.dev_id IS NOT NULL
2hive
}
```
**A6**: Name like hive.db.device.dev_id is too long. It is recommended to use an alias. The query statement can be changed to:

#### **Code**
```
{
SELECT * FROM mysql.test.data m LEFT JOIN hive.db.device h ON m.dev_id=h.dev_id WHERE h.dev_id IS NOT NULL
}
```
### Data Archiving

**Q1**: Do data archiving jobs support both automatic and manual modes?

**A1**: The running of data archiving jobs is rule-driven. You need to configure data archiving jobs based on your business needs (such as where to store the archived data, which data to archive, and the archiving cycle). When a data archiving job is started and running, data will be archived according to the configuration without human intervention.

Currently, data archiving supports **Real-Time** and **Offline** job types. For real-time job type, the data archiving job will keep running. Once data is generated from the data source, the job will archive the data according to the configuration automatically. For offline job type, the job will run only once. After all the data specified in the configuration is archived, the job will stop running.

**Q2**: What will be impacted if the configuration of a running data archiving job is modified?

**A2**: After the data archiving job configuration is modified and submitted, the updated configuration will take effect immediately. The data that has been archived will not be impacted. For example, if the storage path of archived data is changed from /tds/ods/alarm1/ to /tds/ods/alarm2/, the new storage path will take effect immediately after the change is submitted. After about 1-2 minutes, the archived data will be stored in the alarm2 directory. The archived data that has been stored in the alarm1 directory will not be impacted.

**Q3**: How to query the data that has been archived in the target storage?

**A3**: The Data Archiving service enables archiving data from the data sources to the target storage. It is a set of archiving job configuration and management tools, but it does not provide the management of the target storage systems, nor the query ability of archived data. You need to use the corresponding management tools of the target storage systems for data query. For example:

If the target storage is Azure Blob, you can use the client tools provided by Azure platform to query the data stored in Blob Storage.

**Q4**: When the data archiving job is restarted after running failure, will the job re-archive the data at the moment when the job fails?

**A4**: For the following situations:

- For real-time data archiving, when the failed job is restarted, it will re-archive all the failed data in the last 3 days automatically. If the job failed for more than 3 days, it can process data in the latest 3 days only. Therefore, when the data archiving job failure triggers the alert notification through SMS or email, the alert receiver must take action in time to avoid data loss.
- For offline data archiving, when the failed job is restarted, it will re-archive all the data again.

### Batch Processing

**Q1**: Do Batch Processing services support system variables?

**A1**: Yes. Batch Processing services support triggering time and business date variables, time-related variables, and non-time-related variables to achieve dynamic parameter transfer.

**Q2**: Do Batch Processing services support resource isolation?

**A2**: Yes. Currently, the resources used by Batch Processing services are dynamically requested on demand. After the batch processing jobs are completed, the resources can be released. The requested resources are completely isolated and do not affect each other.

**Q3**: Does the Batch Processing service support distributed operation of multiple tasks?

**A3**: Yes. When configuring the running mode of a batch processing task, you can specify the source of the distribution key to enable distributed operation of multiple tasks for enhancing running efficiency.

**Q4**: Do Batch Processing services support alert configuration?

**A4**: Yes. After configuring alert service for the Batch Processing services, the alert messages will be sent to the specified receivers through SMS or email upon running exception.

**Q5**: Does the Batch Processing service support calling by external applications?

**A5**: Yes. The Batch Processing service provides REST APIs for integration with external applications.

**Q6**: Why does the status of a batch processing workflow remain Running when the running log shows that it is completed?

**A6**: When the running of the last task node of the workflow is completed, the status of the workflow might remain Running because the workflow status is monitored and triggered by another process. The status change has a short latency.

### Logging Mechanism

**Q1**: Is it possible to segment the logs based on devices for review by individual vendors?

**A1**: Yes, the existing multi-tenancy capabilities are implemented with the intention for only intended Contractor to review their respective sensor logs.

## Maintenance Phase

### Over-The-Air (OTA) Upgrade

**Q1**: When the device is updated by DECADA OTA, what can it be use to update for (i.e. firmware/runtime engine)?

**A1**: A device can download OTA files through DECADA OTA and it can determine what this OTA file is used for.

### Certificate Lifecycle Management

**Q1**: What should I do if the device certificate expires? Can I use OTA to renew the certificate?

**A1**: You need to renew the certificate if it has expired. Agencies will need to apply for a certificate with a renewed validity period. Before the original certificate expires, the device can still use it to get connected to DECADA. The device should use the renewed certificate to connect to DECADA after it has obtained it. OTA is not suitable for renewing certificate as it is designed for large-scale firmware upgrade.

**Q2**: What is the certificate validity period?

**A2**: It is currently set as 1-year validity period. Period is adjustable based on Agencies' requirement.

**Q3**: What Certificate Authority is DECADA using?

**A3**: DECADA is using public certificate via Comodo Certificate for server authentication. Client certificate hosted on devices/edge will be self-signed SSL cert where it will be signed by DECADA for validation of client.

**Q4**: What is the roles & responsibility between Agencies and GovTech in terms of the issuance of client certificate to devices?

**A4**: During the norm period, the deployed SSL certs installed on devices can be tracked and renewed via Client Certificate Management where Agencies can use API to generate to deploy the certificate to devices. 

However there is no fixed workflow on the workflow. Agencies can contact GovTech-DECADA Team to customize the workflow. 

## Decomissioning Phase

**Q1**: Does Agencies' data still resides in DECADA after decommissioning the devices?

**A1**: TBC
















