# Direct Device Connection (Through MQTT)

Smart devices can establish a safe bi-directional connection with the IoT Hub through the mainstream IoT protocol, MQTT, ramping up IoT projects by IoT engineers.
<div align=center>
<img width="800" src="./images/techstack_system.png"/>
</div>

## Before you start

You can create your assets by instantiating the device models. However, if your device does not have a matching model, you'll need to create a device model. For more information, you can refer to Device Modelling under On-Boarding Devices

## Step 1: Create Sites and Devices
 The devices and the organisation entity where the devices belong to are managed as assets. You will first need to create your devices and sites in DECADA.

 Use **Asset Management -> Site and Devices** function to create sites and associate devices into your sites. For more information, see Creating sites and devices.

## Step 2: Organise sites
In practice, devices are typically hierarchically. The hierarchical structure is an asset tree. Fore more information about the asset management mechanism of DECADA, see Asset Management Overview.

Use the **Asset Management -> Site and Devices** function to arrange your sites hierarchically according to their organisation in the real world. For more information, see Creating Asset tree.

## Step 3: Create licenses for the devices to connect
To enable device to connect to DECADA, you will need to create a license, which defines the properties of the connection allowed, themes to publish/subscribe, and access policies.

Use the **Asset Management -> Devices Connections** function to create the licenses and relevant configuration.

## Step 4: Configure physical devices with connection credentials
The major procedure is as follows:
1. From the Device Connections, click the licenses that you created to show the list of connections under the license.
2. Click the Edit icon for a connectiona nd not the Connection name and Connection key.
3. Configure the physical device with the connection credentials that you noted in 2.
The device can then connect to the MQTT broker by presenting the credentials. The device authenticates through the credentials and authorised through the definition of the license.

## Step 5: Configure the data transmission format for devices
When a device uploads data through the MQTT protocol, you need to configure the data transceiving format at the device's end.
