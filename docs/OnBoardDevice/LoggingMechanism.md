<h1>Logging Mechanism</h1>

DECADA provides logging mechanism which allows Agencies to retrieve both system and devices logs to identify and analyze issue early and ensure that the intended functions are running smoothly. 

Logs in DECADA are categorized into two types as per the below.

- **Cloud Logs:** Include upstream and downstream messages such as device onboarding, firmware upgrades, file uploads and downloads, data parsing, data reporting, data storage, commands, etc. Logs of upstream messages are messages sent by the device to the message queue, messages flowed from the topic queue to the rule engine, and messages forwarded from the rule engine to other products and services in DECADA, while logs of downstream messages are messages sent from the cloud to the device.

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/loggingMechanism.png"/>
</div>

- **Device Logs:** Include information that are related to the device running state and processing logic. Note that devices need to support log reporting for logs to be viewed.

**<u>Before You Start</u>**

To view logs on DECADA, Agencies will need to have an account and access to the Device Management Administrator Policy. If Agencies do not have the access, please contact GovTech for the creation of account with the necessary functionality access.

Agencies may refer [here](https://support.envisioniot.com/docs/device-connection/en/2.2.0/howto/monitoring/logs.html) for more information.

<!--Note to Team:
Is there any use-case on how to configure to view device logs?-->

