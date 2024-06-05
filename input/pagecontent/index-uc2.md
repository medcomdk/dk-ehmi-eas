# EAS - version 1 - use case 2

## getGP_SikrGrp1_2_getGPReceiverDatabyGPId

- GET [EAS-base]/Organization?_profile=http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization&Patient?Identifier.value=123&system=urn:oid:1.2.208.176.1.2
- This search will produce a [MedComMessagingOrganization](http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization) as a response
- EAS will in order to produce this response run through a sequence of calls from 

<br/>

<img src="./3_2_getGP_SikrGrp1_2_getGPReceiverDatabyGPId.png" alt="3_2_getGP_SikrGrp1_2_getGPReceiverDatabyGPId" width="1100">

