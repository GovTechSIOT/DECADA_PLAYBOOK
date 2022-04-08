**Device Registration**

In the provisioning phase, Agencies will need to plan and design on ways to manage the endpoints. DECADA allows user to determine the **model** of the devices such as attributes and measure points for the device information, and also determine the device's **hierarchy** if required. DECADA also determines the **connection** scheme of the devices based on device's hardware designs, deployment methods or security requirements.

For devices on-boarding directly to DECADA. there are two ways of connection:
1. On-boarding smart devices to DECADA
2. On-boarding non-smart devices to DECADA

<div align=center>
<img width="850" src="./images/onBoardDevice/deviceRegistration.png"/>
</div>


According to the above, deployed devices can be divided into 2 major categories:

**Smart Devices:**

- Support firmware burning, as well as direct connection to DECADA via Wi-Fi, GPRS, 3G, or 4G signals. A smart device can directly connect to and communicate with DECADA to complete authentication and data transmission.
- Example: Surveillance cameras, and smart thermometers and hygrometers

**Non-Smart Devices:**

- Do not support firmware burning, and lack the ability to connect to DECADA via Wi-Fi, 3G, or 4G. In this scenario, the devices need to connect through an edge gateway that is able to support firmware burning and network to DECADA. The data of these devices are then collected by the edge gateway. The device connected via this solution is also called the sub-device. The gateway serves as a proxy of the sub-devices to help them complete operations such as authentication, login, and data transmission.
- Example: SCADA, Inverters

?> Agencies can leverage on either existing **DECADA Management Portal** or **API/SDK** to on-board their devices. See below.

**<u>Before you Start</u>**

To register the devices onto DECADA, Agencies will need to have an account and write access to the Device Management. If Agencies do not have the access, please contact GovTech for the creation of account with the necessary functionality access. 

**<u>Via DECADA Management Portal</u>**

Based on the selected connection scheme, Agencies will need to:

Register devices to obtain the device identities

<u>Step 1: Defining a Model</u>

A model is an abstraction of the product’s features, and defines what the product is, what it can do, and what services it can provide. This section shows how to create a model and define custom features for the model.

<div align=center>
<img width="850" src="./images/onBoardDevice/createModel.png"/>
</div>

Agencies may refer [here](https://www.envisioniot.com/docs/device-connection/en/latest/howto/model/creating_model.html) for more information.

<u>Step 2: Creating a Product</u>

A product is a collection of devices with the same features. Using the device model as a base, a product further defines the communication specifications for the device.

<div align=center>
<img width="850" src="./images/onBoardDevice/createGateway.png"/>
</div>

Agencies can refer [here](https://www.envisioniot.com/docs/device-connection/en/latest/howto/device/creating_product.html) for more information.

<u>Step 3: Registering a Device</u>

A device is the instance of a product. It is created from a product so that it inherits not only the basic features of the model, but also the communication features of the product (for example, the device key-secret pair and device certificate used for secure communication).

<div align=center>
<img width="850" src="./images/onBoardDevice/newDevice.png"/>
</div>

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
<div align=center>
<img width="850" src="./images/onBoardDevice/newDevice.png"/>
</div>
<!-- tabs:end -->

On-boarded devices will be reflected as “online” in DECADA

**<u>Via API Calls</u>**

Agencies may refer below for the required API to perform search and get the details of models, product and device that are defined or created in DECADA.
Creation of Modeling Service
Creation of Product and Devices

- [Creation of Modelling Service](https://support.envisioniot.com/docs/model-api/en/2.3.0/overview.html)
- [Creation of Product and Devices](https://support.envisioniot.com/docs/connection-api/en/2.3.0/overview.html)

**<u>Use-Case</u>**

Agencies can learn how to quickly connect a typical IoT devices or an edge devices to DECADA and start sending telemetries between the devices and the cloud:
 - [Quick Start: Connect a Smart Device](https://support.envisioniot.com/docs/device-connection/en/latest/quickstart/gettingstarted_device_connection)
 - [Quick Start: Connect a Non-Smart Device](https://support.envisioniot.com/docs/device-connection/en/latest/quickstart/gettingstarted_edge_connection)
