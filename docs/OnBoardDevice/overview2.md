# Introduction
The chapter provides and introduce to what are the building blocks which makes up DECADA. This chapter will provide Agencies insights on what is DECADA (i.e Device Management & Data Management) and how Agencies can leverage on DECADA to manage and provision their devices and to have a holistic view via their application.</p>
	
<div>
<img width="1200" src="./images/onBoardDevice/buildingBlock.png"/>
</div>
	

**Device Lifecycle Management**
	

Agencies can use the following flow chart to have an overview of the DECADA usage from on-boarding to the management of their devices via DECADA:

<div>
	<img src="./images/onBoardDevice/decadaFlow.png" width="1362px" height="1452px" usemap="#m_Map">
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
graph LR
%%{wrap}%%
    subgraph Decommission.
    direction LR
    sq[Square shape] --> ci((Circle shape))
    end
    subgraph Maintenance.
    direction LR
        od>Odd shape]-- Two line<br/>edge comment --> ro
        di{Diamond with <br/> line break} -.-> ro(Rounded<br>square<br>shape)
        di==>ro2(Rounded square shape)
    end
    %% Notice that no text in shape are added here instead that is appended further down
    subgraph Service.
    direction TB
    s1[Alerts]<-->|optional|s2[Remote Controlling</br> of Devices]
    s2<-->|optional|s3[Dashboard-Enabling/</br>Disabling of Devices]
    s3<-->|optional|s4[Multi-Tenancy.]
    s1<-->|optional|s5[Logginmg Mechanism.]
    s5<-->|optional|s6[Data Asset Management.]
    s6<-->|optional|s7[Device Integration.]
    end
    %% Comments after double percent signs
    subgraph Provision.
    P1[Device Registration.]<-->|optional|P2[Asset Tree Management.]
    end
    subgraph Planning/Design.  
    cyr{Start}-->cyr2[Determine Integration. <br> Mode of Devices<br>]
    cyr2-->cyr3[Determine</br> Connectivity Scheme  _]
    cyr3-->cyr4[Data Format  ]
    end
    cyr4-->P1
    P1-->|optional|s1
    s1-->di
    di-->sq
     classDef green fill:#9f6,stroke:#333,stroke-width:4px
     classDef orange fill:#f96,stroke:#333,stroke-width:4px
     classDef blue fill:#89CFF0,stroke:#333,stroke-width:4px
     class sq,e green
     class di orange
     class cyr orange
     class P1,P2 green
     click cyr2 "http://localhost:3000/#/OnBoardDevice/Onboard?id=integration-with-decada" _blank
     style cyr2 fill:##bbf,stroke:#333,stroke-width:4px
     click cyr3 "http://localhost:3000/#/OnBoardDevice/Onboard?id=device-connectivity" _blank
     style cyr3 fill:##bbf,stroke:#333,stroke-width:4px
     click cyr4 "http://localhost:3000/#/OnBoardDevice/Onboard?id=data-format" _blank
     style cyr4 fill:##bbf,stroke:#333,stroke-width:4px
    
</div>
<!--e((Inner / circle<br>and some odd <br>special characters))od3>Really long text with linebreak<br>in an Odd shape-->
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
%%{init: {'theme': 'dark', 'themeVariables': { 'fontSize': 16, 'background': '#f4f4f4'}}}%%
flowchart TD
%%{config: { 'fontFamily': 'Menlo', 'fontSize': 18, 'fontWeight': 400} }%%
    A1{Start}-->A[Determine the Mode of integration of devices]
    A-->B[Determine the Connection Scheme]
    B-->C[Data Format]
    C-->D[Device Registration]
    D<-->|Optional| E[Asset Tree Management]
    D-->F[Alerts]
    F-->|Optional| G[Remote Controlling of Devices]
    G-->|Optional| H[Dashboards]
    H-->|Optional| I[Multi-Tenancy]
    F-->J[Logging Mechanism]
    J-->K[Data Asset Management]
    K-->|Optional| L[Device Integration]
    F-->|Optional| M[Over-The-Air Updates-OTA]
    M<-->|Optional| N[Certificate Lifecycle Management]
    M<-->|Optional|O
    F-->|Optional| O[Decommission Devices and Revocation of Credentials]
    D-->O
    O-->P[End]
    click A "http://localhost:3000/#/OnBoardDevice/Onboard?id=integration-with-decada" _blank
    click B "http://localhost:3000/#/OnBoardDevice/Onboard?id=device-connectivity" _blank
    click C href "http://www.github.com" _blank
    click D href "http://www.github.com" "Open this in a new tab" _blank
    style Start fill:#f9f,stroke:#333,stroke-width:4px, 
    style P fill:#bbf,stroke:#f66,stroke-width:2px,color:#fff,stroke-dasharray: 5
    subgraph .
      subgraph Planning/Design
        direction TB
        A1
        A
        B
        C
      end
    end
    subgraph Provision
    direction TB  
    D
    E
    end
    subgraph Service
       subgraph ZZZ
       direction BT
       F
       G
       H
       I
       end
       subgraph YYY
       direction TB
       F
       J
       K
       L
       end
    end
    subgraph Maintenance
    direction TB
    M
    N
    end
    subgraph Decommission
    direction TB
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




			
