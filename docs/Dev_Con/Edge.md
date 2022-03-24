# Edge Gateway 

Setup Edge Gateway

Edge gateways are a commonly used architectural component in Internet of Things (IoT) systems. They improve the performance of IoT systems by running functions such as analytics closer to the device and allow a variety of devices to be connected to the Cloud. An edge extends the connectivity of DECADA to support more communication protocols and data formats. The edge can be hardware-bsed deployed on-site or software-based deployed on the cloud.

In the device connection data link, the devices send data to the edge, and the edge aggregates the data and uploads the data into the DECADA Cloud. The data transmission is bottom-up process. While the device connection configuration is a top-down process, where you configure the connection between the cloud and edge first, then configure the connection between the dege and the devices.

Because the devices connected through DECADA can be different product models with different names for the data collecting points, hyou'll need to specify the mapping relationship between the data collecting points and the standard model points through a device template.
Design Overview

DECADA Edge Gateway software is written on top of open-source QT C++ framework. There are two main parts in the software - Core modules and Plugins. Core modules comprise managers that provides services for plugins to function.




## Key Concepts
- Template
Device template, which is the adaptor between device model and real device, mainly define the communication protocol and mapping relationship between the data acquisition points and device model points.

### Connection mode
The DECADA Edge can connect to the DECADA Cloud in the following modes:
- TCP/IP client
Edge connects the cloud as a TCP/IP client
- TCP/IP server
Edged connects to the cloud as a TCP/IP server
- HTTP(s) Client
Edge connect to the cloud as an HTTP(s) Client
- HTTP(s) Server
Edge connects to the cloud as an HTTP(s) Server

### Short or long connection
The connection between EDGE and DECADA Cloud can be a short connection or a long connection.
- Short Connection
1. The client initiates the connection request. The bi-directional connection is established when the server receives the request.
2. The client sends messages to the server and get responses from the server. A session is completed.
3. Either party can initiate the termination request to close the connection. Usually, it is the client to initiate the termination request.

- Long Connection
1. The client intiates the connection request. The bi-directional connection is established when the server receives the request.
2. The client sends messages to the server and gets responses from the server. A session is completed.
3. The connection is not terminated after a session is completed. Future transmissions reuse the same connection.

## Applicable Scenarios of Edge connection
In energy, power, building and energy storage industries, most of the devices are not compatible with MQTT protocols. In these scenarios, edge with multiple convention analysis abilities is often used.
Moreover, instea of communicating directly with Cloud platform, some devices are connected to a third party system, and the data is relayed via the third party system to the Cloud platform. 

## Steps to connect devices through Edge
### Step 1: Apply for an Edge
Apply for an Edge from the Project Manager
You will receive a serial number that you will later use for activating your Edge.

### Step 2: Create sites and devices
In DECADA, the devices and the organisations entity where the devices belong to are managed as assets. You will first need to create your devices and sites in DECADA console.

Use the **Asset Management --> Sites and Devices** function to create sites and associate devices into your sites. 

### Step 3: Organise Sites
In practise, devices are typically organized hierarchically. The hierarchical structure is an asset tree. Asset Managment is elaborated in the Asset management page.

Use the **Asset Management --> Asset Tree** function to arrange your sites hierarchically according to their organization in the real world.

### Step 4: Create templates that adapts device models to the real devices
Device template, which is the adaptor between device models and real devices, mainly define the communication protocol and mapping relationship between the data acquisition points and device model points. Use **Template** funciton to create templates for your devices.

### Step 5: Activate the Edge
Use the **Edge Connection** function to activate your Edge. Enter the Edge serial number that getting from project manager and then activate it.

### Step 6: Configure the Edge connection and add devices into the Edge connection
The major procedure is as follows:
1. Define the Edge connection parameters, such as IP address, Port, connection mode: short connections, or long connections.
2. Add devices ino the relevant Edge connection.
3. Bind templates for devices.
4. Configure the logical address or offset
