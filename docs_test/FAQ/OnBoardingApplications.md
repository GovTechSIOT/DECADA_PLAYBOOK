# On-boarding of Applications

This page listed the frequently asked questions about DECADA services during the on-boarding of applications.

## Integration with WOG Smart Nation Sensor Platform

**Q1**: What is the Firewall rules required on Agencies end to ingest data from SNSP?

**A1**: TBC

**Q2**: How real time will the telemetry data from the devices be passed from SNSP back to Agencies for data analysis and repository?

**A2**: TBC

**Q3**: Does sensors data have to be stored in SNSP prior connecting back to Agency?

**A3**: TBC

## Integration with 3rd Party Application

**Q1**: Can DECADA subscribe to third-party message brokers?

**A1**: Applications running on top of DECADA can subscribe to third-party brokers. 

**Q2**: Is there any restriction on the mode of connection from DECADA to Agencies desired destination?

**A2**: Yes, DECADA is currently provision for Agencies to connect via Internet/Private MPLS/SG-WAN. If the mode of connection required by Agencies doesn't fall under the stated category, please contact GovTech-DECADA Team.

**Q3**: What is the integration effort required from DECADA to 3rd Party Application?

**A3**: It depends based on use-case. 

For minimal effort data ingesting from DECADA to 3rd Party Application has to be:

- Norm Protocols used (i.e. HTTPS/MQTT/SFTP)
- Agencies will have to set-up relevant server to pull the data from DECADA

**Q4**: What is the Firewall rules required on Agencies end to ingest data from DECADA?

**A4**: TBC

**Q5**:How real time will the telemetry data from the devices be passed from DECADA to the 3rd Party Application for data analysis and repository?

**A5**: TBC

**Q6**: Does sensors data have to be stored in DECADA prior connecting to WOG SNSP/back to Agency?

**A6**: TBC

**Q7**: How many data subscription jobs can be created for an organization?

**A7**: Currently, an organization can have at most 15 data subscription jobs.

**Q8**: How many consumer groups are supported for a data subscription job? How many consumers are supported in a consumer group?

**A8**: The number of consumer groups for a data subscription job is not limited, but a consumer group allows 2 consumers to consume to subscribed data at the same time.

**Q9**: How long will subscribed real-time asset data be stored in Kafka topics?

**A9**: By default, subscribed data will be stored in Kafka topics for 3 days. In case the data consumption stops temporarily, you can continue consuming the subscribed data within 3 days after the real-time data is subscribed.
