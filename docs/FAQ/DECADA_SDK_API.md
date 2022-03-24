# DECADA SDK & API 

This page listed the frequently asked questions about DECADA SDK & API.

**Q1**: Can third-parties use DECADA apps and APIs?

**A1**: The APIs DECADA provides are open APIs, therefore, as long as the third-parties have an SA account and relevant OU authorized permissions, they can.

**Q2**: What are the main functions provided by APIM?

**A2**: APIM provides a complete API hosting service. Service users open capabilities, services, and data to partners and customers in the form of APIs.

- Provide multiple methods such as attacks, request encryption, identity verification, and flow control to ensure API security and reduce API opening risks.
- Provide full lifecycle management for the definition, release, debugging, and offlining of APIs, and generate API reference documents to improve API management and iteration efficiency.
- Provide reporting, monitoring, and analysis functions to reduce API maintenance costs.

**Q3**: What is the relationship between API, organization (OU), and DECADA application?

**A3**: Organization users can create and mount APIs on APIM. The API belongs to the organization and can be called by DECADA to perform authentication with the application’s AccessKey and SecretKey.

**Q4**: How do I call the API?

**A4**: The DECADA API provides a series of developer tool kits to help developers efficiently complete device access, data collection, subscription to device data, and access to data and services without complex programming. 

At the same time, all APIs can be called using token authentication. The AccessKey, SecretKey, and system timestamp are used to generate an Access Token by encryption, and the API is called using the Access Token.

**Q5**: What are the dimensions of API monitoring?

**A5**: Agencies can view the number of API requests, call delays, error analysis, and call success rates in the APIM Console.

**Q6**: How can I ensure API security?

**A6**: - When creating an API, add OU authentication for API calls.

- Set IP access control policies through whitelist / blacklist.

- Set the flow control policy for the API, and set the QPS to the range that the backend service can support.

