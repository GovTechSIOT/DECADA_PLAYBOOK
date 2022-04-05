# On-Boarding Devices to DECADA
## Device Lifecycle at a Glance
Device on-boarding typically follows the lifecycle depicted below diagram:
 1. **Planning/Design;** 
 2. **Provisioning;**
 3. **Service;**
 4. **Maintenance;** and finally
 5. **Decommissioning.**

<div align=center>
<img width="800" src="./images/onBoardDevice/decadalc2.png"/>
</div>

## Device Connection Methods
1. Connect through DECADA IOT Hub via MQTT protocol
This method requires device end to support MQTT protocol and is applicable to most of the new IoT devices.

2. Connect through on-site EDGE Gateway
In this case, the EDGE is deployed on-site with the devices. This method applies to most traditional devices and systems that do not support the MQTT protocol.

3. Connect through remote EDGE Gateway
EDGE is deployed at the cloud site. This method applies to most traditional devices and systems that do not support MQTT protocol.

4. Connect through Cloud EDGE Cluster (Cloud Service)
This requires that the device to be connected has an unique ID and can upload data through supported communication protocols. This method is frequently used for the photovoltaic device connection.



