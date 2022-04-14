# DECADA API

**<u>Overview</u>**

DECADA provide REST APIs where Agencies can access resources within DECADA system to develop various applications.

Below are some API Services DECADA provides:

**Functionality**|**Purpose**|**API Calls**
:-----:|:-----:|:-----:
Device Registration|Search and get the details of the models, product and devices in an organization.|<div>[**Creation of Modeling Service**](https://support.envisioniot.com/docs/model-api/en/2.3.0/overview.html)</div><div> [**Creation of Product and Devices**](https://support.envisioniot.com/docs/connection-api/en/2.3.0/overview.html)</div>
Asset Tree|Create, manage, and update the assets in an organization|<div>[**Asset Service**](https://support.envisioniot.com/docs/asset-api/en/2.3.0/overview.html)</div><div>[**Asset Tree Service**](https://support.envisioniot.com/docs/asset-tree-api/en/2.3.0/overview.html)</div>
Remote Controlling of Devices|To control the on-boarded devices remotely from DECADA and/or 3rd Party Application|<div>[**Remote Controlling of Devices**](https://github.com/EnvisionIot/enos-device-sdk-python/blob/master/enos/sample/CommandSample.py)</div><div>[**DECADA Issuing Commands to Devices**](https://www.envisioniot.com/docs/device-connection/en/latest/reference/mqtt/downstream/index.html)</div>
Alert Service|Search and manage asset alerts.|<div>[**Alerts Service**](https://support.envisioniot.com/docs/alert-api/en/2.3.0/overview.html)</div><div>[**Notification Management Service**](https://support.envisioniot.com/docs/notification-mgmt-api/en/2.3.0/overview.html)
Notification Management Service|Provide message push management service interface and enable push message push function.|[**Notification Management Service**](https://support.envisioniot.com/docs/notification-mgmt-api/en/2.3.0/overview.html)
Streaming Service|Provide query and management of stream processing jobs for application developers.|[**Streaming Process Service**](https://support.envisioniot.com/docs/stream-processing-api/en/2.3.0/overview.html)
TSDB Policy & Data Service|Access the TSDB storage configuration information and stored asset data.|<div>[**TSDB Policy Service**](https://support.envisioniot.com/docs/tsdb-policy-api/en/2.3.0/v2.1/overview.html)</div><div>[**TSDB Data Service**](https://support.envisioniot.com/docs/tsdb-data-api/en/2.3.0/v2.1/v21.html)
Data Federation Service|Provide data reading and data writing services for multi-source heterogeneous data storage systems.|[**Data Federation Service**](https://support.envisioniot.com/docs/data-federation-api/en/2.3.0/overview.html)
Batch Processing Service|Provide data integration, data development, data operation, and maintenance services that are required for big data analysis.|[**Batch Processing Service**](https://www.envisioniot.com/docs/batch-processing-api/en/latest/v2.1/overview.html)
Certificate Lifecycle Management|Provide certificate management related function|<div>[**How to Get Root CA Certificate and CRL**](https://support.envisioniot.com/docs/enos/en/2.1.0/security/x509_ca/using_ca_service_api.html)</div><div>[**Creating your Certificate Signing Request (CSR) File**](https://support.envisioniot.com/docs/enos/en/2.1.0/security/x509_ca/creating_csr.html)
Application Portal Service|Get information about users, assets, and applications, and configure permissions for the DECADA Application Portal.|[**Application Portal Service**](https://support.envisioniot.com/docs/app-portal-api/en/2.3.0/overview.html)
IAM Service|Manage user account lifecycles, authenticate user identities, and control the access rights to the resources in DECADA.|[**IAM Service**](https://support.envisioniot.com/docs/iam-api/en/2.3.0/overview.html)


Agencies can refer [here](https://developer.envisioniot.com/enos-apis/) for more release on available APIs to leverage on. 

**<u>API Management (APIM)</u>**

DECADA provides API Monitoring services for Agencies to utilize.

<div align=center>
<img src="./images/sdkApi/sdk.png"/>
</div>
API Management

Link not working (checking with Envision): 
https://support.envisioniot.com/docs/apim/en/latest/api_management_overview.html

Agencies can refer [here](https://www.envisioniot.com/docs/app-development/en/latest/apim/api_management_overview#:~:text=The%20EnOS%20API%20Management%20%28APIM%29%20publishes%20all%20the,unlock%20the%20potential%20of%20their%20data%20and%20services.) for more information on the functions. 
