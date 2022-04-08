# Logging and Auditing

**<u>Overview</u>**

The centralized logging service in DECADA is configured to aggregate activity logs and show security related metrics at real-time. DECADA logs all user activities to the portal. The activity log contains details about each access request (i.e. request type, requested resource, requestor’s IP, and the date and time of the request). 

DECADA also logs all user activities to the portal involving the use of service APIs. The access log contains details about each access request including the request type, the requested resource, the requestor’s IP, and the time and date of the request.

Agencies may refer [here](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2258927733) for more information.

?>DECADA implements the following services (Graylog & Grafana) in DECADA for logging and monitoring purpose. 

**<u>Auditing</u>**

DECADA also utilize the  collected logs for audit purpose. This allows Agencies to trace the resource access activities of all users that are registered in IAM to decide whether users are assigned properly to roles and what kind of activities a particular user has performed (events).

<div align=center>
<img src="./images/security/activitiesonIoTHub.png"/>
</div>

<div align=center>
<img src="./images/security/eventsOccuringatTSDB.png"/>
</div>

Accounts with proper privileges may access authorized resources via DECADA service APIs and portal. Access validation is performed for each access attempt. Success or failure attempts are recorded in IAM logs for auditing and abnormality detection purposes.

<div align=center>
<img src="./images/security/activitiesOnValidationLogin.png"/>
</div>

Agencies may refer [here](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2258436183/Multi-Tenancy) for more information on the logging of validation login to DECADA management portal.