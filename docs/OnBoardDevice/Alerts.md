<h1>Alerts</h1>

**<u>Overview</u>**

DECADA has available alert services which Agencies can use to monitor alerts on devices as defined by the alert triggering rules against real-time measure point telemetry. 

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/cloudEdge.png"/>
</div>

DECADA allows Agencies to generate alerts based on the following setting:
1. Measurement Point (i.e Threshold, Reporting Frequency, No update of data)
2. Events (i.e Threshold)
3. Device State

The alerts can be sent via email or SMS according to the requirements.

?> Agencies can leverage on existing API/SDK and the DECADA Management Portal to generate Alerts and their desired notification feature (i.e. SMS/Email).

**<u>Before You Start</u>**

To create alerts on DECADA, Agencies will need to have an account and access to the model, assets management and alert services. If Agencies do not have the access, please contact GovTech for the creation of account with the necessary functionality access.

**<u>Via DECADA Management Portal</u>**

Agencies may refer [here](https://support.envisioniot.com/docs/alert/en/latest/learn/alert_overview.html) for the implementation details via the DECADA Management Portal.

- Alerts will be reflected if the threshold is met or device is offline
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/alert5.png"/>
</div>

- Via Email
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/alert2.png"/>
</div>
Via email

- Via SMS
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/alert3.png"/>
</div>

?> The alerts setting available in DECADA are generic in nature. Agencies are advise to utilize the existing API should they require further customization. 

**<u>Via API Calls</u>**

Agencies may refer below for the implementation details via the existing API calls.

- [Alerts Service:](https://support.envisioniot.com/docs/alert-api/en/2.3.0/overview.html) Monitor asset statuses, define alert contents, alert types, alert severities, alert trigger conditions, and manage the alert records.
- [Notification Management Service:](https://support.envisioniot.com/docs/notification-mgmt-api/en/2.3.0/overview.html) Send messages to Agencies with specific templates and query the message sending results

**<u>Use-Case</u>**

Agencies can learn how to create the Alert ID to generate alerts based on the pre-set conditions:

 - [Quick Start: Setting Different Alert Thresholds for Devices of the Same Model](https://support.envisioniot.com/docs/alert/en/latest/howto/set_alert_rule_for_device.html)

