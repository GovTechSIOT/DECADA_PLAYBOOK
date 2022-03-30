# Integration with 3rd Party Application

**<u>Overview</u>**

Agencies can ingest data from DECADA to their Application via the push or pull method:

1. Push (via Kafka Pipe, Data Subscription)
2. Pull (via RESTFUL API)

?> To integrate 3rd Party application to DECADA, Agencies will need to have an account and access to the intended resources. If Agencies do not have the access, please contact GovTech for the creation of account with the necessary functionality access.

**<u>Application Registration</u>**

Prior on-boarding Agencies' 3rd Party Application to DECADA via APIs, Agencies will have to create an application via the “application registration” for the access and secret keys with the appropriate access roles in order to carry out its intended purpose.

<div align=center>
<img src="./images/ApplicationRegisteration.png"/>
</div>

This will allow Agencies to create, delete and manage the applications and its users via permission management. Agencies can refer [here](https://support.envisioniot.com/docs/app-development/en/latest/app_portal/app_developer/developing_apps.html#:~:text=Log%20in%20to%20the%20EnOS%20Management%20Console%2C%20select,about%20the%20application%20to%20complete%20the%20application%20registration.) for more information via DECADA Management Portal.

Alternatively, Agencies may refer [here](https://support.envisioniot.com/docs/app-portal-api/en/2.3.0/overview.html) for the implementation details on permission management via the existing API calls.

**<u>Mode of Connections</u>**

Once the on-boarding of the Agencies 3rd Party application is completed, Agencies will have to consider the mode of connection to ingest data from DECADA to their application via existing APIs. Some modes of connectivity for consideration:

1. GEN Network (i.e SG-WAN)
2. Internet
3. Intranet

!> DECADA has existing SG-WAN connections for Agencies to connect via, however the APIs to call is in the roadmap. Agencies are advised to contact GovTech if they require such APIs and/or further customization. 

**<u>Type of Protocol</u>**

Once the connectivity is firmed up, Agencies will have to open the relevant ports and whitelisted IP address for data to be ingested to the 3rd Party Application successfully.

Data can be ingested via the following protocol:

1. HTTPS (via RESTFUL or Data Subscription Service)
2. MQTT (via Data Subscription Service)
3. TCP-Based Protocols (via Data Subscription Service)

!> Agencies are advised to contact GovTech if they require further customization on the protocol to ingest data to their application. 

**<u>Data Subscription Services</u>**

For data to be ingested from DECADA to 3rd Party applications, Agencies can consider leveraging on this services and install the necessary SDK to receive the data. Agencies can subscribe to both original and calculated data where the asset data can be consumed by application directly. The subscription settings can be configured through the Data Subscription Service.

<div align=center>
<img src="./images/DataSubscriptionService.png"/>
</div>

The DECADA Data Subscription Service utilize the Kafka Pipeline to improves the API calling efficiency of applications with active data push, which supports subscription to various data types such as real-time asset data, asset alert data, and event data. Applications do not need to call APIs repeatedly and frequently to get the asset data. Instead the subscribed data will be pushed automatically and applications can consume the pushed data as needed. 

Agencies can use the provided SDKs to retrieve the subscribed data:

1. [Java SDK](https://mvnrepository.com/artifact/com.envisioniot/enos-subscribe)
2. [Python SDK](https://github.com/EnvisionIot/enos-subscription-service-sdk-python)

<div align=center>
<img src="./images/DataSubscriptionService_Portal.png"/>
</div>

Agencies may refer [here](https://www.envisioniot.com/docs/data-subscription/en/latest/data_subscription_overview.html) for more information.

**<u>Use-Case</u>**

Agencies can learn how to quickly connect a typical IoT devices DECADA and start sending data to another system real-time:

- [Subscribing to Device Real-Time Data and Alert Records](https://www.envisioniot.com/docs/enos-tutorials/en/latest/subscribing_to_device_data/index.html)

?> Agencies will have to ensure that the protocol has to be TCP based