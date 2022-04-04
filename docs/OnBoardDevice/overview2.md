# Introduction
The chapter provides and introduce to what are the building blocks which makes up DECADA. This chapter will provide Agencies insights on what is DECADA (i.e Device Management & Data Management) and how Agencies can leverage on DECADA to manage and provision their devices and to have a holistic view via their application.</p>
	
<div>
<img width="1200" src="./images/buildingblock.png"/>
</div>
	

**Device Lifecycle Management**
	

Agencies can use the following flow chart to have an overview of the DECADA usage from on-boarding to the management of their devices via DECADA:

<div>
	<img src="./images/decada_flow.png" width="1362px" height="1452px" usemap="#m_Map">
	<map name="m_Map">
		<area name="Integrate" shape="rect" coords="57,288,240,380" href="./#/Dev_Con/Onboard?id=integration-with-decada" title="Integration">
	 </map>
</div>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="jquery.rwdImageMaps.min.js"></script>
<script>
$(document).ready(function(e) {
	$('img[usemap]').rwdImageMaps();
     alert("hello section");
	$('area').on('click', function() {
		alert($(this).attr('alt') + ' clicked');
	});
});
</script>
<div class="mermaid">
%%{init: {'theme': 'base', 'themeVariables': { 'fontSize': '26px'}}}%%
flowchart LR
    A4-->B1
    B1-->C4
    C4-->D1
    D1-->E1
    subgraph Decommission
    direction LR
    E1[Decommission devices and Revocation of credentials]-->E2[End]
    end
    subgraph Maintenance
    direction LR
    D1[Over-The-Air-Updates]<-->|optional|D2[Certificate Lifecycle Management]
    end
    subgraph Service
    direction LR
    C1[Multi-Tenancy]<-->|optional|C2[Dashboards-Enable/Disable Devices]
    C2[Dashboards-Enable/Disable Devices]<-->|optional|C3[Remote Control of Devices]
    C3[Remote Control of Devices]<-->|optional|C4[Alerts]
    C4[Alerts]<-->|optional|C5[Logging Mechanism]
    C5[Logging Mechanism]<-->|optional|C6[Data Alert Management]
    C6[Data Alert Management-Stream Process,Batch Processing,TSDB]<-->|optional|C7[Device Integration]
    end
    subgraph Provision
    direction LR
    B1[Device Registration]<-->|optional|B2[Asset Tree Management]
    end
    subgraph Planning/Design
    direction LR
    A1[Start]-->A2[Determine Integration Mode of Devices]
    A2[Determine Integration Mode of Devices]-->A3[Connection Schemes]
    A3[Connection Schemes]-->A4[Data Format]
    end
    click A2 "http://localhost:3000/#/OnBoardDevice/Onboard?id=integration-with-decada" _blank
    style A2 fill:##bbf,stroke:#333,stroke-width:1px
    click A3 "http://localhost:3000/#/OnBoardDevice/Onboard?id=device-connectivity" _blank
    style A3 fill:##bbf,stroke:#333,stroke-width:1px
    click A4 "http://localhost:3000/#/OnBoardDevice/Onboard?id=data-format" _blank
    style A4 fill:##bbf,stroke:#333,stroke-width:1px
    click B1 "http://localhost:3000/#/OnBoardDevice/Onboard?id=device-registration" _blank
    style B1 fill:##bbf,stroke:#333,stroke-width:1px
    click B2 "http://localhost:3000/#/OnBoardDevice/Onboard?id=managing-asset-tree" _blank
    style B2 fill:##bbf,stroke:#333,stroke-width:1px
    click C1 "http://localhost:3000/#/OnBoardDevice/Service?id=multi-tenancy" _blank
    style C1 fill:##bbf,stroke:#333,stroke-width:1px
    click C2 "http://localhost:3000/#/OnBoardDevice/Service?id=dashboard" _blank
    style C2 fill:##bbf,stroke:#333,stroke-width:1px
    click C3 "http://localhost:3000/#/OnBoardDevice/Service?id=remote-controlling-of-devices" _blank
    style C3 fill:##bbf,stroke:#333,stroke-width:1px
    click C4 "http://localhost:3000/#/OnBoardDevice/Service?id=alerts" _blank
    style C4 fill:##bbf,stroke:#333,stroke-width:1px
    click C5 "http://localhost:3000/#/OnBoardDevice/Service?id=logging-mechanism" _blank
    style C5 fill:##bbf,stroke:#333,stroke-width:1px
    click C6 "http://localhost:3000/#/OnBoardDevice/Service?id=data-asset-management" _blank
    style C6 fill:##bbf,stroke:#333,stroke-width:1px
    click C7 "http://localhost:3000/#/OnBoardDevice/Service?id=device-integration" _blank
    style C7 fill:##bbf,stroke:#333,stroke-width:1px
    click D1 "http://localhost:3000/#/OnBoardDevice/Maintenance?id=over-the-air-ota-upgrade" _blank
    style D1 fill:##bbf,stroke:#333,stroke-width:1px
    click D2 "http://localhost:3000/#/OnBoardDevice/Maintenance?id=certificate-lifecycle-management" _blank
    style D2 fill:##bbf,stroke:#333,stroke-width:1px
    click E1 href "http://localhost:3000/#/OnBoardDevice/Decommis"
    style E1 fill:##bbf,stroke:#333,stroke-width:1px,fontSize:18
    style Start fill:#f9f,stroke:#333,stroke-width:4px
</div>
<!---Stream Process,Batch Processing,TSDB-->

<div class="mermaid">
%%{init: {'theme': 'base', 'themeVariables': { 'fontSize': 40, 'background': '#f4f4f4'}}}%%
flowchart TD
%%{config: { 'fontFamily': 'Menlo', 'fontSize': 18, 'fontWeight': 400} }%%
    Start-->A[Determine the Mode of integration of devices]
    A-->B[Determine the Connection Scheme]
    B-->C[Data Format]
    C-->D[Device Registration]
    D<-->|Optional| E[Asset Tree Management]
    D-->F[Alerts]
    F<-->|Optional| G[Remote Controlling of Devices]
    G<-->|Optional| H[Dashboards]
    H<-->|Optional| I[Multi-Tenancy]
    F-->J[Logging Mechanism]
    J-->K[Data Asset Management]
    K-->|Optional| L[Device Integration]
    F-->|Optional| M[Over-The-Air Updates-OTA]
    M<-->|Optional| N[Certificate Lifecycle Management]
    F-->|Optional| O[Decommission Devices and Revocation of Credentials]
    D-->O
    O-->P[End]
    click A "http://localhost:3000/#/OnBoardDevice/Onboard?id=integration-with-decada" _blank
    click B "http://localhost:3000/#/OnBoardDevice/Onboard?id=device-connectivity" _blank
    click C href "http://www.github.com" _blank
    click D href "http://www.github.com" "Open this in a new tab" _blank
    style Start fill:#f9f,stroke:#333,stroke-width:4px, 
    style P fill:#bbf,stroke:#f66,stroke-width:2px,color:#fff,stroke-dasharray: 5
    subgraph Planning
    Start
    A
    B
    C
    end
    subgraph Provision
    D
    E
    end
    subgraph Service
    I
    H
    G
    F
    J
    K
    L
    end
    subgraph Maintenance
    M
    N
    end
    subgraph Decommission
    O
    P
    end
</div>


<div class="mermaid">
        graph TD 
        A[Client] --> B[Load Balancer] 
        B --> C[Server01] 
        B --> D[Server02]
</div>



<div class="mermaid">
%%{init: {'theme': 'base', 'themeVariables': { 'primaryColor': '#ff0000', 'fontSize'=30px}}}%%
  flowchart LR
    id1[This is the text in the box]
</div>




			
