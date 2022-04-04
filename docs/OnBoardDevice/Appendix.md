# Appendix

**Device Protocol for MQTT**
The MQTT version that DECADA supports:
- MQTT v3.1.1 on port 11883 if Agencies is using secret-based one-way authentication
- MQTT v3.1.1 over SSL/TLS port 18883 if Agencies is using certificate based two-way authentication

DECADA offers a series of APIs that devices can call via the publishing and subscribing of formatted MQTT topics, akin to that of a typical HTTPS RESTful call. The only difference here is that the request/response mechanism of a HTTPS call is implemented using publish/subscribe instead.




Click [here](./downloads/Appendix.pdf':ignore') for download.




The following table summarizes the available APIs:

| API Name                          | Req Topic                           | Reply Topic                                                    |
|:----------------------------------|:------------------------------------|:---------------------------------------------------------------|
| **Upstream**                                                                                                                            |
| Device Registration               | /sys/{productKey}/{deviceKey}/thing/device/register   | /sys/{productKey}/{deviceKey}/thing/device/register_reply   |
| Add Topological Relationships of Sub-devices  | /sys/{productKey}/{deviceKey}/thing/topo/add    | /sys/{productKey}/{deviceKey}/thing/topo/add_reply    |
| Delete Topological Relationships of Sub-devices  | /sys/{productKey}/{deviceKey}/thing/topo/delete    | /sys/{productKey}/{deviceKey}/thing/topo delete_reply |
| Get Topological Relationships of Sub-devices     | /sys/{productKey}/{deviceKey}/thing/topo/get          | /sys/{productKey}/{deviceKey}/thing/topo/get_reply          |
| Connect Sub-devices to EnOS Cloud                | /ext/session/{productKey}/{deviceKey}/combine/login   | /ext/session/{productKey}/{deviceKey}/combine login_reply   |
| Disconnect Sub-devices from EnOS Cloud           | /ext/session/{productKey}/{deviceKey}/combine/logout  | /ext/session/{productKey}/{deviceKey}/combine/logout_reply  |
| Query Tags                                       | /sys/{productKey}/{deviceKey}/thing/tag/query         | /sys/{productKey}/{deviceKey}/thing/tag/query_reply         |
| Report Tags                                      | /sys/{productKey}/{deviceKey}/thing/tag/update        | /sys/{productKey}/{deviceKey}/thing/tag/update_reply        |
| Delete Tags                                      | /sys/{productKey}/{deviceName}/thing/tag/delete       | /sys/{productKey}/{deviceName}/thing/tag/delete_reply       |
| Get Attributes                                   | /sys/{productKey}/{deviceKey}/thing/attribute/query   | /sys/{productKey}/{deviceKey}/thing/attribute/query_reply   |
| Delete Attributes                        | /sys/{productKey}/{deviceKey}/thing/attribute/delete                   | /sys/{productKey}/{deviceKey}/thing/attribute/delete_reply                   |
| Report Attributes                        | /sys/{productKey}/{deviceKey}/thing/attribute/update                   | /sys/{productKey}/{deviceKey}/thing/attribute/update_reply                   |
| Report Device Measure Points             | /sys/{productKey}/{deviceKey}/thing/measurepoint/post                  | /sys/{productKey}/{deviceKey}/thing/measurepoint/post_reply                  |
| Report Device Events​ (Non-Passthrough)  | /sys/{productKey}/{deviceKey}/thing/event/{tsl.event.identifier}/post  | /sys/{productKey}/{deviceKey}/thing/event/{tsl.event.identifier}/post_reply  |
| Report Device Events​ (Passthrough)      | /sys/{productKey}/{deviceKey}/thing/model/up_raw                       | /sys/{productKey}/{deviceKey}/thing/model/up_raw_reply                       |






