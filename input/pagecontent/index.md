# EHMI Addressing Service (EAS)

The EHMI Addressing Service (EAS) Implementation Guide is a Search Profile that defines some basic and reusable search patterns based on the EER Resources. 

EAS will implement searches in authoritative sources like 

- "Sikrede"
- SOR
- EER

In the first version of EAS it will expose these searches for clients in the healthcare domain:

- [getgp_sikrgrp1_1_getgpreceiverdatabypatid](#getgp_sikrgrp1_1_getgpreceiverdatabypatid)
- [getgp_sikrgrp1_2_getgpreceiverdatabygpid](#getgp_sikrgrp1_2_getgpreceiverdatabygpid)
- [getgp_sikrgrp2_1_getgpreceiverdatabypostalcode](#getgp_sikrgrp2_1_getgpreceiverdatabypostalcode)
- [getreceiverdata_1_getreceiverdatabysorid](#getreceiverdata_1_getreceiverdatabysorid)
- [getreceiverdata_2_getreceiverdatabymessagetypepostalcode](#getreceiverdata_2_getreceiverdatabymessagetypepostalcode)

<br/>

<img src="./3_EHMI_Sundhedsadresseringsservice_1315x551.png" alt="EHMI Addressing Service (EAS) (DA)" width="1100">

<br/>

### getGP_SikrGrp1_1_getGPReceiverDatabyPatId

- GET [EAS-base]/Organization?_profile=http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization&Patient?Identifier.value=[Patient_Identifier]&system=urn:oid:1.2.208.176.1.2
- This search will produce a [MedComMessagingOrganization](http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization) as a response
- EAS will in order to produce this response run through a sequence of calls from 

<br/>

<img src="./getGP_SikrGrp1_1_getGPReceiverDatabyPatId.png" alt="getGP_SikrGrp1_1_getGPReceiverDatabyPatId" width="1100">

<br/>

### getGP_SikrGrp1_2_getGPReceiverDatabyGPId

- GET [EAS-base]/Organization?_profile=http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization&Patient?Identifier.value=123&system=urn:oid:1.2.208.176.1.2
- This search will produce a [MedComMessagingOrganization](http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization) as a response
- EAS will in order to produce this response run through a sequence of calls from 

<br/>

<img src="./getGP_SikrGrp1_2_getGPReceiverDatabyGPId.png" alt="getGP_SikrGrp1_2_getGPReceiverDatabyGPId" width="1100">

<br/>

### getGP_SikrGrp2_1_getGPReceiverDatabyPostalCode

- GET [EAS-base]/Organization?_profile=http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization&Patient?Identifier.value=123&system=urn:oid:1.2.208.176.1.2
- This search will produce a [MedComMessagingOrganization](http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization) as a response
- EAS will in order to produce this response run through a sequence of calls from 

<br/>

<img src="./getGP_SikrGrp2_1_getGPReceiverDatabyPostalCode.png" alt="getGP_SikrGrp2_1_getGPReceiverDatabyPostalCode" width="1100">

<br/>

### getReceiverData_1_getReceiverDatabySORId

- GET [EAS-base]/Organization?_profile=http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization&Patient?Identifier.value=123&system=urn:oid:1.2.208.176.1.2
- This search will produce a [MedComMessagingOrganization](http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization) as a response
- EAS will in order to produce this response run through a sequence of calls from 

<img src="./getReceiverData_1_getReceiverDatabySORId.png" alt="getReceiverData_1_getReceiverDatabySORId" width="1100">
 
<br/>

### getReceiverData_2_getReceiverDataByMessageType&PostalCode

- GET [EAS-base]/Organization?_profile=http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization&Patient?Identifier.value=123&system=urn:oid:1.2.208.176.1.2
- This search will produce a [MedComMessagingOrganization](http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization) as a response
- EAS will in order to produce this response run through a sequence of calls from 

<br/>

<img src="./getReceiverData_2_getReceiverDataByMessageType&PostalCode.png" alt="getReceiverData_2_getReceiverDataByMessageType&PostalCode" width="1100">

<br/>
