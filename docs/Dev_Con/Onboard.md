# Planning and Provisioning

## Device Connectivity

DECADA Cloud Platform is hosted in GCC Azure and is connectable via:
1. Internet
   - Agencies subscribing to Internet shall ensure the connectivity is TLS 1.2
   - Agencies shall provide public IP for whitelisting purpose
2. Private network (i.e. APN/VPN, MPLS)
   - Agencies shall subscribe to their own private APN & VPN and tag it to GovTech Cloud Connect
3. WOG Intranet Network
4. 3rd Party System
   - Agencies shall provide public IP for whitelisting purpose


<div align=center>
<img width="850" src="./images/High Level Net Arch.png"/>
</div>

Note to team:
1. For connection to GCC DECADA, does agencies need to subscribe to the cloud connect to connect to GCC DECADA?
2. Is there the editable version of this architecture to include 3rd party application connectivity?

## Device Registration

### Overview
In the provisioning phase, Agencies will need to plan and design on ways to manage the endpoints. DECADA allows user to determine the **model** of the devices such as attributes and measure points for the device information, and also determine the device's **hierarchy** if required. DECADA also determines the **connection** scheme of the devices based on device's hardware designs, deployment methods or security requirements.

For devices on-boarding directly to DECADA. there are two ways of connection:
1. On-boarding smart devices to DECADA
2. On-boarding non-smart devices to DECADA

<div align=center>
<img width="850" src="./images/deviceregistration.png"/>
</div>


Based on the selected connection scheme, Agencies will need to:
### Register devices to obtain the device identities
<u>Step 1: Defining a Model</u>

<div align=center>
<img width="850" src="./images/createmodel.png"/>
</div>
Create Model

<div align=center>
<img width="850" src="./images/publishmodel.png"/>
</div>
Attributes of End-Points


Agencies may refer [here](https://www.envisioniot.com/docs/device-connection/en/latest/howto/model/creating_model.html) for more information.

<u>Step 2: Creating a Product</u>

A product is a collection of devices with the same features. Using the device model as a base, a product further defines the communication specifications for the device.

<div align=center>
<img width="1200" src="./images/createsensor.png"/>
</div>
Creation of end-points (sensors)
<div align=center>
<img width="850" src="./images/creategateway.png"/>
</div>
Creation of End-points (Gateway)
On device security, Agencies may select the mode of authentication accordingly to their needs:
<div align=center>
<img width="850" src="./images/createproduct.png"/>
</div>
Creation of Product and Authentication Mechanism

Agencies can refer [here](https://www.envisioniot.com/docs/device-connection/en/latest/howto/device/creating_product.html) for more information.


<u>Step 3: Registering a Device</u>

A device is the instance of a product. It is created from a product so that it inherits not only the basic features of the model, but also the communication features of the product (for example, the device key-secret pair and device certificate used for secure communication).

<div align=center>
<img width="850" src="./images/newdevice.png"/>
</div>
Creation of Devices

<div align=center>
<img width="850" src="./images/newdevice_cred.png"/>
</div>
Creation of Devices(Credentials)

Agencies can refer [here](https://www.envisioniot.com/docs/device-connection/en/latest/howto/device/creating_product.html) for more information.

Use device SDKs to perform device-end development so that devices are authenticated to the cloud and start to transmit data.
The sample codes below shows the connection initiated from devices to be connected to DECADA:

<!-- tabs:start -->

#### **Code**
``` 
    while __name__ == '__main__':
    client = MqttClient(str("tcp://mqtt.decada.gov.sg:11883"), "Product Key", "Device Key", "Device Secret")
    client.get_profile().set_auto_reconnect(True)  # if connection interrupted, the client can automaticlly reconnect
    client.setup_basic_logger('INFO')
    client.connect()
```
<!-- tabs:end -->

Measurement points received from devices can be seen from DECADA
<div align=center>
<img width="850" src="./images/device_auth.png"/>
</div>
Devices authenticated successfully

The sample codes below show the devices is generated randomized measurement point to DECADA: 

<!-- tabs:start -->
#### **Code**
```
     measure_point_request = MeasurepointPostRequest.builder() \
     .add_measurepoint('HDB_RT_Current', random.randint(1001, 2001)) \
     .set_timestamp(int(time.time() * 1000)) \
     .build()
      measure_point_response = client.publish(measure_point_request) # publish request and wait for the response
      if measure_point_response:
        print("Generated data by Fridge meter")
```
<!-- tabs:end -->


Measurement points received from devices can be seen from DECADA
<div align=center>
<img width="850" src="./images/measuringpt2.png"/>
</div>
 Measuring Points

On-boarded devices will be reflected as “online” in DECADA


<div align=center>
<img width="850" src="./images/measuringpt.png"/>
</div>
Measurement Points

### Used Cases

Agencies can learn how to quickly connect a typical IoT devices or an edge devices to DECADA and start sending telemetries between the devices and the cloud:
 - [Quick Start: Connect a Smart Device](https://support.envisioniot.com/docs/device-connection/en/latest/quickstart/gettingstarted_device_connection)
 - [Quick Start: Connect a Non-Smart Device](https://support.envisioniot.com/docs/device-connection/en/latest/quickstart/gettingstarted_edge_connection)



## Managing Asset Tree

### Overview

Asset tree is a key function of the Asset Management service of DECADA. Asset tree is mainly for asset owners who understand the enterprise asset management business where they can quickly create the asset topology to manage assets in the cloud.
The asset tree management is decoupled from device provisioning, which means that the device provisioning operation is independent from the asset tree management. Therefore, Agencies can complete device provisioning first and then bind the connected devices to the nodes of the asset tree. Agencies can also create an asset tree before provisioning and connecting the devices. Generally, a connected device is usually bound to a node of the asset tree.


<div align=center>
<img width="850" src="./images/asset_tree.png"/>
</div>

Asset Tree

Agencies may refer [here](https://www.envisioniot.com/docs/device-connection/en/latest/howto/asset_tree/assettree_overview) for more information.

### Used Case

Agencies can learn how to set up an Asset Tree in DECADA:
- [Quick Start: Asset Tree Management](https://www.envisioniot.com/docs/device-connection/en/latest/howto/asset_tree/gettingstarted_assettree#)

## Integration with DECADA

DECADA provides several connection solutions for Agencies to connect sensors to DECADA. The first step to determine which solution to use is to check whether the device to connect meets the following two conditions.

  - Supports TCP/UDP communication.
  - Supports the data format of the EnOS device connection protocol through firmware upgrade.

If the device meets both conditions, the device can be directly connected to DECADA.
If the device does not meet either of the conditions and is connected to another system or cloud platform, Agencies should refer to the “Cloud-to-Cloud” method to connect to DECADA. 

Communications to DECADA can be done via any one of the following methods:

<div align=center>
<img width="850" src="./images/integration_with_decada.png"/>
</div>

### <u>DIRECT CONNECTION</u> 

<div align=center>
<img width="850" src="./images/snsp.png"/>
</div>

### Using Device SDK
Direct connection can be made via the use of GovTech provided SDKs which are available in
Java, Python 2/3 and C/C++. The device SDKs encapsulate protocols for data transmission and provide features such as device registration, device data ingestion and device control.

Supported platforms include x86 and ARM. DECADA’s SDKs are all open source in nature, and are available for reference [here](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2263220229/DECADA+SDK+API). Need to confirm this link. Faultly link(!) will be fixed

This option is applicable only for sensors with the capability for direct access. There are a few scenarios for direct connection:
  - Connected device is registered, and the device is burned with a **unique** product and device keys provided by DECADA portal. This scenario is mainly for **small number of devices**, and the device is burned with device triple (product key, device key and device secret key) through cloud registration.

  - Connected devices are registered, and devices are burned with the **same** product information (product key and product secret key) in batch. Agencies to call the REST API to register the devices in batch and once they are connected to the network they will be automatically connect to the cloud.


### Non-SDK Methods
If the device SDKs provided by GovTech cannot meet Agencies’s requirements, Agencies can choose to send telemetries based on DECADA's device protocol standards. The supported protocols are as follows:

  - <u>MQTT Based Protocol:</u>
  Device Protocol for MQTT defines the data format of the MQTT-based transmission between devices and DECADA.
    Agencies need to ensure that the MQTT clients running on their devices support minimally MQTT v3.1.1, secret-based one-way authentication for unclassified data and certificate-based two-way authentication for restricted data.
Details of implementation can be found [here](https://support.envisioniot.com/docs/device-connection/en/latest/learn/connection_protocols/enos_mqtt).

  - <u>CoAP Based Protocol:</u>
    The Constrained Application Protocol is a protocol designed for use in low-power embedded environments. DECADA exposes a set of APIs which can be accessed via CoAP and devices can connect into the DECADA cloud platform as long as the data format conforms to the standard.
Details of implementation can be found [here](https://support.envisioniot.com/docs/device-connection/en/latest/learn/connection_protocols/enos_coap).

   - <u>RESTful API via HTTPS:</u>
     Used commonly in the Web Technology world, connection with DECADA can be performed through a comprehensive set of RESTful APIs which can be easily accessed via HTTPS. Details of implementation can be found [here](https://support.envisioniot.com/docs/device-connection/en/latest/learn/connection_protocols/enos_http).

Agencies (with the right internet login access) can refer to the [Appendix](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2264956988/Appendix) for more information.

### Protocols Comparison

| FUNCTION                         | MQTT              | CoAP              | HTTPS                             |
| -------------------------------- | :---------------: | :---------------: | :-------------------------------: |
| Static authentication            | Supported       | Supported       | Supported                             |
| Dynamic authentication           | Supported       | Supported       | Not Supported                         |
| Certificate based bi-directional | Supported       |     /           | Only certificate based unidirectional |
| authentication                   | Supported       |                 | authentication is supported (platform |
|                                  |                 |                 | authenticated devices)                |
| Reporting of the tags,           | Supported       | Supported       | Supported                             |
| attributes, measurement points,  |                 |                 |                                       |
| and events of devices            |                 |                 |                                       |
| Passing data through             | Supported       | Supported       | /                                     |
| File-type data reporting         | Not supported   | Not supported   | Supported                             |
| Batch reporting of measurement   | Supported       | Not supported   | Not supported                         |
| points and offline measurement   |                 |                 |                                       |
| points                           |                 |                 |                                       |
| Measurement point setting and    | Supported       | Supported       | Not supported                         |
| service invocation               |                 |                 |                                       |
| Receiving passed-through data    | Supported       | Not supported   | Supported                             |
| Device registration, sub-device  | Supported       | Not supported   | Not supported                         |
| upper & lower thresholds, and    |                 |                 |                                       |
| device lifecycle management      |                 |                 |                                       |
| Firmware OTA update              | Supported       | Not supported   | Not supported                         |

Agencies to use the following flow chart to determine which protocol the sensors should use to connect to DECADA:

<div align=center>
<img width="850" src="./images/flowchart_protocol.png"/>
</div>

**<u>Connection via Edge</u>**

<div align=center>
<img width="850" src="./images/snsp2.png"/>
</div>
DECADA Edge is a GovTech provided software solution which can be deployed on a x86/ARM
architecture either on-premises or as a virtual instance on the cloud. 

As a front end, DECADA Edge extends the capability of the platform via support for offline caching and conversion of various communication protocol such as:
 - ModbusTCP
 - ModbusRTU
 - IEC60870-5-104
 - DNP3.0
 - OPC-DA
 - OPC-XML-DA
 - OPC-UA
 - MQTT
 - DL/T645-2007
 - COAP
 - BACNET
 - DDS
 - HTTP(S)
 - DL/T645-1997

With these protocols, Agencies can easily create the data template of the device, which can then be directly used after simple configuration to avoid development or integration of protocols.
The **recommended** hardware requirements for edge hardware for the edge software installation is as follows:
 - Intel® AtomTM E3805 dual core 1.33 GHz / 1 MB or better
 - 2 x 10/100 Fast Ethernet (RJ-45).
 - Main port supports PoE (15.4W)
 - 3G/4G SIM Card Module or Ethernet based Internet access
 - USB: 1x USB 2.0, 1x USB 3.0
 - Wireless LAN: 2.4GHz, 802.11b/g/n/Bluetooth Low Energy 4.0
 - 2 GB Memory
 - Ubuntu Core 16
 - Serial to Ethernet adapter if Modbus RTU or DNP3 serial protocol is used
 - 128GB Storage

 **<u>Cloud-to-Cloud Connection with DECADA</u>**

<div align=center>
<img width="850" src="./images/snsp3.png"/>
</div>


In the event where direct link to DECADA is not possible, Cloud-to-Cloud connection is possible via a myriad of mechanism.
For example: 
 - Calling of RESTful APIs on 3rd Party Cloud (Pull).
   In this case, DECADA Cloud shall make periodic calls to the the 3rd Party Cloud to retrieve the required sensor data.
 - Calling of RESTful APIs on DECADA Cloud (Push)
   In this case, the 3rd Party Cloud shall utilize the DECADA RESTful APIs for pushing of sensor data to DECADA cloud. 
For more information, see [Message Integration](https://support.envisioniot.com/docs/device-connection/en/latest/learn/ingestion/index).

As Cloud-to-Cloud implementation is a project-specific solution, close collaboration will be required between both technical teams (GovTech & Agencies) to make it work.
In general, both teams will have to minimally agree to provide APIs for the following:
 - Access to sensor device attributes (Example: Device Id, Location, Type etc)
 - Access to sensor device data format via a unique identifier.
 - Access to sensor device measure points via a unique identifier.

 <div align=center>
<img width="850" src="./images/external.png"/>
</div>

**<u>Summary</u>**


| Type of Communication  | Pros                              | Cons                            |
| ---------------------- | :-------------------------------: | :-----------------------------: | 
| Direct Connection      | No intermediate data nodes        | Device firmware has to          |
|                        | resulting in lower latency.       | modified.                       |
|                        | Full control of device which is   | Device has direct access        |
|                        | capable of leveraging on the full | to DECADA. This might not be    |
|                        | suite of service offered by       | possible for low-end processor  |
|                        | DECADA. (i.e. 2 way-communication,| commonly found on embedded      |
|                        | OTA firmware update etc.)         | devices.                        |
|                        |                                   | Device has to be capable of     | 
|                        |                                   | supporting communication via    |
|                        |                                   | MQTT, HTTPS or CoAP             |
|                        |                                   |                                 |
| via EDGE               | No modification to device firmware| Additional resources required   |
|                        | has to be done.                   | in terms of hardware            |
|                        | Much larger suite of protocol     | (if on-premise) or Virtual      |
|                        | support as compared to direct     | Instance (if on cloud).         |
|                        | connection.                       | Addtional data latency.         |
|                        | Offline caching in event of       |                                 |
|                        | communication breakdown.          |                                 |
|                        | More secured since connection     |                                 |
|                        | between EDGE and sensors can be   |                                 |
|                        | isolated in the private network   |                                 |
|                        | while exposing only the connection|                                 |
|                        | between EDGE and Cloud            |                                 |
|                        |                                   |                                 |
| Cloud-to-Cloud         | No modification to device         | Limited control of devices.     |
|                        | firmware is required.             | Additional data latency.        |
|                        | Limited restriction on the        |                                 |
|                        | as most changes are made on the   |                                 |
|                        | cloud.                            |                                 |


*Note to team:*
1. Is there editable file to update “SDX”?
2. To confirm that it is not mandatory that only devices connecting via internet access is able to leverage on (1) mode of connection.
3. Understanding is that as long as device is able to support the following protocols, it doesn't have to meet the stated SDK?
4. There are more than the stated protocols (i.e. MQTT/CoAP/HTTPS) to integrate with DECADA for Edge Connection. Why none-SDK device method can only support 3? Or as long as the device is using protocol listed in the table (i.e. ModbusRTU), it is able to be compatible with DECADA?

## Data Format

The endpoints transmit data to the cloud as per the attributes, measurement points, events, and services defined in the model. DECADA supports the data in both DECADA standard JSON format and custom format.

**<u>DECADA Standard Data Format</u>**

Agencies are preferable to transmit data using the DECADA standard JSON format.

 <div align=center>
<img width="850" src="./images/endpoint.jpeg"/>
</div>

The sample codes below show the standard data format used for uploading data into DECADA:
<!-- tabs:start -->
#### **Code**
```
{
        "id": "123",
        "version": "1.0",
        "params": {
                "measurepoints": {
                        "Power": {
                                "value": 1.0,
                                "quality": 9
                        },
                        "temp": 1.02,
                        "branchCurr": [
                                "1.02", "2.02", "7.93"
                        ]
                },
                "time": 123456
        },
        "method": "thing.measurepoint.post"
}
```
<!-- tabs:end -->

The sample code below show the standard data format used for issuing data from DECADA to endpoints :
<!-- tabs:start -->
#### **Code**
```
{
        "id": "123",
        "version": "1.0",
        "params": {
                "temperature": 30.5
        },
        "method": "thing.service.measurepoint.set"
}
```
<!-- tabs:end -->

In the above-mentioned sample codes:
 - id refers to the message ID.
 - version refers to the protocol version.
 - The JSON arrays packaged by params refer to the data to be transmitted.
 - method refers to the request method.

**<u>Custom Format</u>**

The JSON format-based data communication with DECADA is not suitable for the endpoints with lower configurations and limited resources or those with special requirements on networking traffic. In this case, Agencies can pass the data to DECADA where DECADA will runs the parsing scripts to convert the data into the JSON format defined by DECADA. When the DECADA sends the control commands to the endpoints , the scripts may also be used to convert the JSON format defined by DECADA into the binary data that the endpoints is able to parse for issuing purpose.


 <div align=center>
<img width="850" src="./images/endpoint2.jpeg"/>
</div>

For the endpoints that transmit the data by means of pass-through or in the custom format, Agencies may compile scripts in DECADA to parse the data from the endpoints. The parsing scripts support JavaScript-based development.
The DECADA parser provides the following capabilities.
1. Editing script online, and supports the validation of JavaScript syntax.
2. Upstream & downstream messaging simulation and debugging, and supports the viewing of simulation result.
3. Runtime environment after the publishing of script can be invoked for upstream & downstream messaging.

For more information, see [Parsing Custom Format Data](https://support.envisioniot.com/docs/device-connection/en/latest/howto/device/creating_data_parsing_script).