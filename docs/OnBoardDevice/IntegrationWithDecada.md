<h1>Integration with DECADA</h1>

DECADA provides several connection solutions for Agencies to connect sensors to the platform.
Communications to DECADA can be done via any one of the following methods:

<div align=center>
<img width="850" src="./images/onBoardDevice/integrationWithDecada.png"/>
</div>
Integration Methodology

**<u>Mode of Connection</u>**

**1. Direct Connection**

Agencies can leverage on this mode of connection if the sensors is able to communicate to DECADA via SDKs and/or MQTT/CoAP/HTTPS. For more information, please refer [here](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2284191770/Direct+Connection). 
 
**2. Connect through on-site/Cloud Edg Gateway**

Agencies can leverage on this mode of connection by deploying a physical/cloud edge if the sensors has limited capabilities. For more information, please refer [here](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2284322826/Connection+Via+Edge). 
 
**3. Connect through Cloud**

Agencies can leverage on this mode of connection if they have an existing application residing in Cloud and wish to integrate with DECADA or where direct link to DECADA is not possible. For more information, please refer [here](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2284814349/Cloud-to-Cloud+Connection). 

**<u>Flow Chart to Determine The Mode of Connection</u>**

Agencies can use the following flow chart to the determine which mode of connection to use to on-board their devices to DECADA

<div align=center>
<img src="./images/onBoardDevice/integrationFlowchart.png"/>
</div>

**<u>Comparison on the Mode of Connections </u>**

Agencies can consider the following when selecting the Mode of Connections:

| <p align="center">**Type of Connections**</p>     | <p align="center">**Pros**</p>                                                                                                                                                                                                                                                                                                                                                                             | <p align="center">**Cons**</p>                                                                                                                                                                                                                                                                |
|---------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Direct Connection               | <div>- No intermediate data nodes resulting in lower latency.</div> <div>- Full control of device which is capable of leveraging on the full suite of service offered by DECADA. (i.e. 2 way-communication, OTA Firmware Update etc)</div>                                                                                                                                                  | <div>- Device firmware has to modified</div> <div>- Device has direct access to DECADA. This might not be possible for low-end processor commonly found on embedded devices.</div> <div>- Device has to be capable of supporting communication via MQTT, HTTPS or CoAP. </div> |
| Via on-Site/Cloud Edge Gateway  | <div>- No modification to device firmware has to be done.</div> <div>- Much larger suite of protocol support as compared to direct connections.</div> <div>- Offline caching in event of communication breakdown</div> <div>- More secured since connection between EDGE and sensors can be isolated in the private network while exposing only the connection between EDGE and Cloud</div> | <div>- Additional resources required in terms of hardware (if on-premise) or Virtual Instance (if on cloud).</div> <div>- Additional data latency</div>                                                                                                                        |
| Cloud-to-Cloud via API          | <div>- No modification to device firmware has to be done.</div> <div>- Limited restriction on the endpoint as most changes are made on the Cloud</div>                                                                                                                                                                                                                                      | <div>- Limited control of devices</div> <div>- Additional data latency</div>                                                                                                                                                                                                   |

**<u>Flow Chart to determine the Mode of Connections</u>**

Agencies can use the following flow chart to the determine which mode of connection to use to on-board their devices to DECADA

<div align=center>
<img width="850" src="./images/onBoardDevice/integrationFC.png"/>
</div>

 



### Direct Connection

<div align=center>
<img width="850" src="./images/onBoardDevice/snsp.png"/>
</div>


**Using Device SDK**

Direct connection can be made via the use of GovTech provided SDKs which are available in
Java, Python 2/3 and C/C++. The device SDKs encapsulate protocols for data transmission and provide features such as device registration, device data ingestion and device control.

Supported platforms include x86 and ARM. DECADA’s SDKs are all open source in nature, and are available for reference [here](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2263220229/DECADA+SDK+API). 

This option is applicable only for sensors with the capability for direct access. There are a few scenarios for direct connection:
  - Connected device is registered, and the device is burned with a **unique** product and device keys provided by DECADA portal. This scenario is mainly for **small number of devices**, and the device is burned with device triple (product key, device key and device secret key) through cloud registration.

  - Connected devices are registered, and devices are burned with the **same** product information (product key and product secret key) in batch. Agencies to call the REST API to register the devices in batch and once they are connected to the network they will be automatically connect to the cloud.


**Non-SDK Methods**

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

     Flow Chart for the selection of protocols

Agencies to use the following flow chart to determine which protocol the sensors should use to connect to DECADA:

<div align=center>
<img width="850" src="./images/onBoardDevice/flowchartProtocol.png"/>
</div>

**<u>Protocol Comparison</u>**

<div align=center>
<img src="./images/onBoardDevice/directConnectionProtocolComparison.png"/>
</div>

### Connection via Edge

<div align=center>
<img width="850" src="./images/onBoardDevice/snsp2.png"/>
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

 ### Cloud-to-Cloud Connection with DECADA

<div align=center>
<img width="850" src="./images/onBoardDevice/snsp3.png"/>
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
<img width="850" src="./images/onBoardDevice/external.png"/>
</div>

?> To register the applications onto DECADA, Agencies will need to have an account and write access to the Application Management Layer. If Agencies do not have the access, please contact GovTech for the creation of account with the necessary functionality access.
