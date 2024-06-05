# EAS - version 1 - use case 3

## getGP_SikrGrp2_1_getGPReceiverDatabyPostalCode

- GET [EAS-base]/Organization?_profile=https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html&Patient?Identifier.value=123&system=urn:oid:1.2.208.176.1.2
- This search will produce a <a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html" target="_blank">MedComMessagingOrganization</a> as a response
- EAS will in order to produce this response run through a sequence of calls from 

<br/>

<img src="./3_3_getGP_SikrGrp2_1_getGPReceiverDatabyPostalCode.png" alt="3_3_getGP_SikrGrp2_1_getGPReceiverDatabyPostalCode" width="1100">

