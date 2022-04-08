**Data Format**

The endpoints transmit data to the cloud as per the attributes, measurement points, events, and services defined in the model. DECADA supports the data in both DECADA standard JSON format and custom format.

In the event that Agencies are unable to ingest data via the standard JSON format, Agencies can refer to the following “Custom Format” for more information.

**<u>DECADA Standard Data Format</u>**

Agencies are preferable to transmit data using the DECADA standard JSON format.

 <div align=center>
<img width="850" src="./images/onBoardDevice/endPoint.jpeg"/>
</div>

The sample codes below show the standard data format used for uploading data into DECADA:
<!-- tabs:start -->
#### **Code**

```
{
        "id": "123",
        "version": "1.0",
        "params": {
                "measurepoints": {
                        "Power": {
                                "value": 1.0,
                                "quality": 9
                        },
                        "temp": 1.02,
                        "branchCurr": [
                                "1.02", "2.02", "7.93"
                        ]
                },
                "time": 123456
        },
        "method": "thing.measurepoint.post"
}
```
<!-- tabs:end -->

The sample code below show the standard data format used for issuing data from DECADA to endpoints :
<!-- tabs:start -->
#### **Code**

```
{
        "id": "123",
        "version": "1.0",
        "params": {
                "temperature": 30.5
        },
        "method": "thing.service.measurepoint.set"
}
```
<!-- tabs:end -->

In the above-mentioned sample codes:

- id refers to the message ID.
- version refers to the protocol version.
- The JSON arrays packaged by params refer to the data to be transmitted.
- method refers to the request method.

**<u>Custom Format</u>**

The JSON format-based data communication with DECADA is not suitable for the endpoints with lower configurations and limited resources or those with special requirements on networking traffic. In this case, Agencies can pass the data to DECADA where DECADA will runs the parsing scripts to convert the data into the JSON format defined by DECADA. When the DECADA sends the control commands to the endpoints , the scripts may also be used to convert the JSON format defined by DECADA into the binary data that the endpoints is able to parse for issuing purpose.

<div align=center>
<img width="850" src="./images/onBoardDevice/endPoint2.jpeg"/>
</div>

For the endpoints that transmit the data by means of pass-through or in the custom format, Agencies may compile scripts in DECADA to parse the data from the endpoints. The parsing scripts support JavaScript-based development.
The DECADA parser provides the following capabilities.

1. Editing script online, and supports the validation of JavaScript syntax.
2. Upstream & downstream messaging simulation and debugging, and supports the viewing of simulation result.
3. Runtime environment after the publishing of script can be invoked for upstream & downstream messaging.

For more information, see [Parsing Custom Format Data](https://support.envisioniot.com/docs/device-connection/en/latest/howto/device/creating_data_parsing_script).

<!--https://www.envisioniot.com/docs/device-connection/en/latest/tutorial/connecting_device_simulated/index.html -->