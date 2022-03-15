# Service Phase

## Dashboard

   Once the devices has been provision on DECADA, Agencies can gain an overview of their device and message dynamics through the device management dashboard that DECADA. Agencies can also develop your own application for data presentation.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/dashboard.png"/>
</div>
Device Management Dashboard

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


## Remote Controlling of Devices

Agencies can also control their on-boarded devices via:
 - From DECADA to devices
 The sample codes below shows the connection initiated from devices to be connected to DECADA:


<!-- tabs:start -->
#### **Code**
```
from enos.message.downstream.tsl.MeasurepointSetCommand import MeasurepointSetCommand
from enos.message.upstream.tsl.MeasurepointPostRequest import MeasurepointPostRequest
from enos.message.downstream.tsl.ServiceInvocationCommand import ServiceInvocationCommand
from enos.message.downstream.tsl.ServiceInvocationReply import ServiceInvocationReply

def set_measurepoint_command_handler(arrived_message, arg_list):
    print('receive measurepoint set command, params: {}'.format(arrived_message.get_params()))
    print('product key = {}, device key = {}'.format(arg_list[0], arg_list[1]))
    print ("measurepoints set success")
    params = arrived_message.get_params()
    print('service params: {}'.format(params))
    measure_point_request = MeasurepointPostRequest.builder() \
        .add_measurepoint('HDB_RT_Current', 6000) \
        .set_timestamp(int(time.time() * 1000)) \
        .build()
    measure_point_response = client.publish(measure_point_request)
    print ("publish new measurepoint")
     
def get_measurepoint_command_handler(arrived_message, arg_list):
    print('receive service invocation command: {}, args: {}'.format(arrived_message, arg_list))
    product_key = arg_list[0]
    device_key = arg_list[1]
    service_name = arg_list[2]
    params = arrived_message.get_params()
    print('service params: {}'.format(params))
    if service_name == <condition>:
        return ServiceInvocationReply.builder()\
            .add_output_data('HDB_RT_Current', 5000)\
            .set_code(201)\
            .build()
    else:
        return ServiceInvocationReply.builder().set_message('unknown service:').set_code(220).build()

if __name__ == "__main__":
    client = MqttClient(str("MQTT Broker URL"), "Product Key", "Device Key","Device Secret")
    client.get_profile().set_auto_reconnect(True)  # if connection interrupted, the client can automaticlly reconnect
    client.setup_basic_logger('INFO')
    # register a msg handler to handle the downstream measurepoint set command
    client.register_arrived_message_handler(MeasurepointSetCommand.get_class(), set_measurepoint_command_handler)
    client.register_arrived_message_handler(MeasurepointGetCommand.get_class(), get_measurepoint_command_handler)
    client.connect()
```
<!-- tabs:end -->

From the code above, the devices will report the requested measurement point.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/measuring1.png"/>
</div>

DECADA will be able to generate the measurement point requested from the devices.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/measuring2.png"/>
</div>

Commands logs are available on DECADA when commands are initiated to the devices.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/measuring3.png"/>
</div>
Commands initiated from DECADA

Agencies may refer [here](https://www.envisioniot.com/docs/device-connection/en/latest/reference/mqtt/downstream/index.html) for more information.
 - From 3rd Party Application to devices through DECADA


*Note to team:*
Is there any used case to quote such functionality?
Any information for the 2nd method?


## Alerts


**Overview**
DECADA has available alert services which Agencies can use to monitor alerts on devices as defined by the alert triggering rules against real-time measure point telemetry. 

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/cloud_edge.png"/>
</div>
Alert Overview

The alerts can be sent via email or SMS according to the requirements.
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/alert2.png"/>
</div>
Via email

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/alert3.png"/>
</div>
Via SMS

DECADA allows Agencies to generate alerts based on the following setting:
1. Measurement Point (i.e Threshold, Reporting Frequency, No update of data)
2. Events (i.e Threshold)
3. Device State

1
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/alert4.png"/>
</div>
Configuration to generate alerts when device is offline

2
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/alert5.png"/>
</div>
Alerts will be reflected if the threshold is met or device is offline

Agencies may refer [here](https://support.envisioniot.com/docs/alert/en/latest/learn/alert_overview.html) for more information.

**Used case**

Agencies can learn how to create the Alert ID to generate alerts based on the pre-set conditions:
 - [Quick Start: Setting Different Alert Thresholds for Devices of the Same Model](https://support.envisioniot.com/docs/alert/en/latest/howto/set_alert_rule_for_device.html)


## Data Asset Management

**Overview**
DECADA provides the following functions which allows Agencies to manage, consume and store data according to their business needs 

**Data Asset Catalog Services**
DECADA enables Agencies to search the metadata of models and measurement points (i.e. basic information, stream processing lineage) and all the instances that are associated with the model to which a measurement point belongs.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/dam1.png"/>
</div>

**<u>Stream Processing Services</u>**
By leveraging on such service, Agencies will be ensured of the following:
 - High throughput and low latency stream processing.
 - Commonly used stream processing algorithms in the IoT field.
 - Visualized template-based configurations to help Agencies quickly perform their stream data processing jobs.
 - A set of underlying packaged StreamSets operators for developers to develop customized stream data processing jobs to meet the requirements of complex business scenarios.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/dam2.png"/>
</div>
Stream Processing Services


Agencies may refer [here](https://www.envisioniot.com/docs/stream-processing/en/latest/streaming_overview.html) for more information.

**<u>Time Series Data Management (TSDB)</u>**

The Time Series Database (TSDB) provides efficient and stable storage and management for time series data that is ingested from devices or generated by the stream processing engine by having a variety of data storage options based on Agencies' data storage and reading requirements. It allows Agencies to view the latest data ingested from devices via the Data Insights feature and delete historical data via the Data Deletion feature.
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/dam3.png"/>
</div>

Note: The data storage policy must be configured before the devices start uploading data to DECADA. Otherwise, the uploaded device data will not be stored in TSDB.
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/dam5.png"/>
</div>
TSDB Feature

Agencies may refer [here](https://www.envisioniot.com/docs/time-series-data/en/latest/overview.html) for more information.

**<u>Data Federation Service</u>**
DECADA provides data reading and writing services from and to multi-source heterogeneous data storage systems. Agencies can read data from and write data to heterogeneous data sources through unified SQL statements.
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/dam6.png"/>
</div>
Data Federation Service

Agencies may refer [here](https://www.envisioniot.com/docs/data-federation/en/latest/index.html) for more information.

**<u>Data Subscription Service</u>**

The data subscription service improves the API calling efficiency of applications with active data push, which supports subscription to various data types such as real-time asset data, asset alert data, and event data. Agencies can use the provided Java SDK to retrieve the subscribed data.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/dam7.png"/>
</div>
Agencies may refer [here](https://www.envisioniot.com/docs/data-subscription/en/latest/data_subscription_overview.html) for more information.



**<u>Data Archiving Service</u>**

DECADA supports archiving and storing data from the real-time message channel, data from the offline message channels, real-time alert records, and data stored in TSDB. It provides flexible storage configurations to reduce Agencies data storage costs.
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/dam8.png"/>
</div>
Data Archiving Service

Agencies may refer [here](https://www.envisioniot.com/docs/data-archiving/en/latest/archive_policy.html) for more information.

**<u>Data Synchronization Service</u>**

DECADA supports synchronizing data between extensive heterogeneous data sources (i.e. synchronizing structured data from external source databases to the Hive database in DECADA and from the DECADA Hive database to external target databases).
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/dam9.png"/>
</div>
Data Synchronization Service
Agencies may refer [here](https://www.envisioniot.com/docs/data-sync/en/latest/di_overview.html) for more information.


**<u>Batch Processing Service</u>**

DECADA provides a GUI-based Dataflow Service that enables batch data processing based on scheduled workflows. The batch data processing operations support various scenarios from simple data transformation to complete ETL (extract-transform-load). The Batch Processing Service also provides common libraries out-of-the-box for most frequently used data processing operations.
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/dam10.png"/>
</div>
Batch Processing Service

Agencies may refer [here](https://www.envisioniot.com/docs/batch-processing/en/latest/dataide_overview.html) for more information.


## Multi-Tenancy

**Overview**

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
Organization Profile (OU)

 - User (i.e. staff who requires to access DECADA)
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/mt2.png"/>
</div>
Users

 - User group (i.e. collection of staff who does maintenance work)
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/mt3.png"/>
</div>
User Group

Access Policies in IAM are classified into two types:
 - Built-in policies (i.e. Pre-defined access policies for typical roles in DECADA)
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/mt4.png"/>
</div>
Built-In Policies

 - Custom policies (i.e. Access policies customized to the needs of users)
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/mt5.png"/>
</div>
Customization of roles required

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/mt6.png"/>
</div>
Customization of roles required

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/mt7.png"/>
</div>
User accessing DECADA

DECADA has also built-in logging mechanism to log incorrect login. See below.
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/mt8.png"/>
</div>

Agencies may refer [here](https://support.envisioniot.com/docs/enos/en/latest/iam/concept/index.html) for more information.


**<u>Used case</u>**
Agencies can learn how to set up a user account in a particular organization:
[Quick Start: Creation of user account](https://support.envisioniot.com/docs/enos/en/latest/iam/ou_admin/iam_gettingstarted_adduser)

## Logging Mechanism

**Overview**

DECADA provides logging mechanism which allows Agencies to identify and analyze issue early and ensure that the device intended functions are running smoothly. 

Logs in DECADA are categorized into two types as per the below.
 - Cloud Logs: Include upstream and downstream messages such as device onboarding, firmware upgrades, file uploads and downloads, data parsing, data reporting, data storage, commands, etc. Logs of upstream messages are messages sent by the device to the message queue, messages flowed from the topic queue to the rule engine, and messages forwarded from the rule engine to other products and services in DECADA, while logs of downstream messages are messages sent from the cloud to the device.
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/lm1.png"/>
</div>
 
 - Device Logs: Include information that are related to the device running state and processing logic. Note that devices need to support log reporting for logs to be viewed.

Agencies may refer [here](https://support.envisioniot.com/docs/device-connection/en/2.2.0/howto/monitoring/logs.html) for more information.

*Note to Team:*
Is there any use-case on how to configure to view device logs?





