# EAS - version 1 - use case 4

## getReceiverData_1_getReceiverDatabySORId

- GET [EAS-base]/Organization?_profile=https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html&Patient?Identifier.value=123&system=urn:oid:1.2.208.176.1.2
- This search will produce a <a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html" target="_blank">MedComMessagingOrganization</a> as a response
- EAS will in order to produce this response run through a sequence of calls from 

This is basically conforming to this OperationDefinition: <a href="OperationDefinition-eas.SikrGrp1-getGPReceiverDataByGPId.html">OperationDefinition-eas.SikrGrp1-getGPReceiverDataByGPId</a> 

<img src="./3_4_getReceiverData_1_getReceiverDatabySORId.png" alt="3_4_getReceiverData_1_getReceiverDatabySORId" width="1100">
 
