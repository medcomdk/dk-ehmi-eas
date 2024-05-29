# EAS - version 1 - use case 4

## getReceiverData_1_getReceiverDatabySORId

- GET [EAS-base]/Organization?_profile=http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization&Patient?Identifier.value=123&system=urn:oid:1.2.208.176.1.2
- This search will produce a [MedComMessagingOrganization](http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization) as a response
- EAS will in order to produce this response run through a sequence of calls from 

<img src="./getReceiverData_1_getReceiverDatabySORId.png" alt="getReceiverData_1_getReceiverDatabySORId" width="1100">
 
