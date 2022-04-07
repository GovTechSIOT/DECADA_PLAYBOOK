# Security

This page listed the frequently asked questions about Cybersecurity related to DECADA.

# Identity and Access Management

**Q1**: What is password expiration?

**A1**: Based on the password strength requirements set in each organization, the system checks user passwords for expiration. Three days before the password expires, the system will remind the user of the expiration each time the user logs in, and the user should change the password before the password expires. If the password has expired, the user would need to contact the OU administrator to reset the user password.

**Q2**: What should I do if I forget my password?

**A2**: The forgot password link is provided on the login page, and you can retrieve the password through the mobile phone number or email that has been associated with the account. If there is no mobile phone number or email associated with the account, you would need to contact the OU administrator to reset the password.

**Q3**: How are users and application authenticated prior connection to DECADA?

**A3**: Access to the EnOS service APIs and portal require authentication. EnOS provides integration with customers’ user registries that supports LDAP, such as the Windows Directory Server. EnOS uses several types of credentials for authentication. These include:

1. Passwords
2. Cryptographic keys
3. Digital signatures,
4. Certificates. 
5. Multi-factor authentication (MFA) 

to log in to the portal.

# Device Security

**Q1**: How are devices authenticated and authorized prior connection to DECADA?

**A1**: Each devices are provisioned with an unique identity keys which served as an authorization upon connection to DECADA.

DECADA also provides 2 methodology for devices to be authenticated prior connection:

1. Secret-based One-Way Authentication
2. Certificate-based Two-Way Authentication
