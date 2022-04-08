<h1>Multi-Tenancy</h1>

DECADA Identity and Access Management (IAM) allows Agencies to manage user identities and control access to your resources in DECADA. It allows Agencies to manage user account lifecycles, authenticate user identities, and control the access rights to the resources. 

DECADA also applies the identity and access management (IAM) scheme to achieve multi-tenancy where it ensures that a user can access only the intended resources.

DECADA offers the following type of identities:
 - User accounts are usually created for DECADA Management Console users and operation staff.
 - Service accounts are assigned to applications for accessing the DECADA service APIs.
 - Device identities are assigned to all devices connected to DECADA

The user administration hierarchy can be divided into the following, from top to bottom:
 - Organization (i.e. Agency-based)
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/mt1.png"/>
</div>

 - User (i.e. staff who requires to access DECADA)
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/mt2.png"/>
</div>

 - User group (i.e. collection of staff who does maintenance work)
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/mt3.png"/>
</div>

Access Policies in IAM are classified into two types:
 - Built-in policies (i.e. Pre-defined access policies for typical roles in DECADA)
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/mt4.png"/>
</div>

 - Custom policies (i.e. Access policies customized to the needs of users)
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/mt5.png"/>
</div>

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/mt6.png"/>
</div>

<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/mt7.png"/>
</div>

DECADA has also built-in logging mechanism to log incorrect login. See below.
<div align=center>
<name=Device Management Dashboard>
<img width="850" src="./images/onBoardDevice/mt8.png"/>
</div>

?> Agencies can leverage on existing API/SDK and the DECADA Management Portal to control users access/permission. 

**<u>Before You Start</u>**

To manage and configure the roles for each users, Agencies will need to have an account and write access to the Identity & Access Management Services. If Agencies do not have the access, please contact GovTech for the creation of account with the necessary functionality access.

**<u>Before you Start</u>**

To manage and configure the roles for each users, Agencies will need to have an account and write access to the Identity & Access Management Services. If Agencies do not have the access, please contact GovTech for the creation of account with the necessary functionality access.

**<u>Via DECADA Management Portal</u>**

Other than the diagram above, Agencies may refer [here](https://support.envisioniot.com/docs/enos/en/latest/iam/concept/index.html) for the implementation details via the DECADA Management Portal.

**<u>Via API Calls</u>**

Agencies may refer below for the implementation details via the existing API calls.
- [IAM Services](https://support.envisioniot.com/docs/iam-api/en/2.3.0/overview.html)

**<u>Use-case</u>**

Agencies can learn how to set up a user account in a particular organization:
- [Quick Start: Creation of user account](https://support.envisioniot.com/docs/enos/en/latest/iam/ou_admin/iam_gettingstarted_adduser)
