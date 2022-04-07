# Role-Based Access Control

**<u>Overview</u>**

The Identity and Access Management (IAM) enables Agencies to create and manage permissions for DECADA resources. The IAM unifies access control for Cloud Platform services into a single system and presents a consistent set of operations. DECADA applies the IAM scheme to support multi-tenancy, where each tenant is managed as an organizational unit. Data that belongs to different organizations are securely segregated and can only be accessed by users that are registered to the organization.

The current IAM provides Agencies with capabilities for identity management, authentication, authorization, and auditing.

**<u>Identity Management</u>**

With IAM, a hierarchy structure is introduced to represent the relationship that exists within an organization. Each tenant is identified as an organizational unit (OU).

DECADA offers the following types of identities:

- User accounts are usually created for DECADA Management Console Agencies users and operation staff.
- Service accounts (a.k.a. application tokens) are assigned to applications for accessing the DECADA service APIs.
- Device identities are assigned to all devices (including edge devices) that connect to DECADA.

All identities are created under organizations. Among the types of user identities, DECADA provides several types of user accounts. Agencies may refer [here](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2258436183) for more information.

**<u>Authentication</u>**

IAM provides different authentication methods for different account types.

- User accounts are authenticated through valid credentials (username and password). Strong passwords with the required complexity is enforced by the security policy managed by the OU administrators. 

<div align=center>
<img src="./images/security/passwordPolicy.png"/>
</div>

- Multi-factor authentication is available as a configurable security option. DECADA used Two-Factor Authentication during the setting up process (inputting of password and sending of SMS/Email for verification).

<div align=center>
<img src="./images/security/2fa.png"/>
</div>

- Service accounts use access keys (i.e. digital signatures) for DECADA authentication. Agencies may refer [here](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2258698485) for more information.

- Devices and edges use X.509 certifications to establish the secure data communication tunnels with DECADA. Agencies may refer [here](https://siotteam.atlassian.net/wiki/spaces/DUG/pages/2258829411) for more information.

**<u>Authorization</u>**

DECADA adopts Role-Based-Access-Control (RBAC), which is a policy neutral access control mechanism defined around roles and privileges. The access control rule is defined as a 3-tuples in the form of role-permission-resource. The resource includes the following:

- Applications: applications that a role has access to
- User Interface: menu items or buttons that a role can see
- API: APIs that a role can invoke
- Data: data that a role can read or write
- Reports: reports that a role can read
- Events: events from an application that a role can view or handle

The IAM allows the organization unit (OU) administrator to define access control rules to grant privileges/permissions of resources to other accounts through DECADA Management Console GUI or through the APIs.

Accounts with the appropriate privileges granted may access the corresponding resources via the DECADA service APIs/Management Console. Access control validation is performed by IAM service for each access attempt.

