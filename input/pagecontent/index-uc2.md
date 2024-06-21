# EAS - version 1 - use case 2

## Get GP for a Patient by GPId (Health Insurance Group 1) (getGP_SikrGrp1_2_getReceivingOrganizationByGPId)

- GET [EAS-base]/Organization?_profile=https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html&Patient?Identifier.value=123&system=urn:oid:1.2.208.176.1.2
- This search will produce a <a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html" target="_blank">MedComMessagingOrganization</a> as a response
- EAS will in order to produce this response run through a sequence of calls from 

This is basically conforming to this OperationDefinition: <a href="OperationDefinition-eas.SikrGrp1-getReceivingOrganizationByGPId.html">OperationDefinition-eas.SikrGrp1-getReceivingOrganizationByGPId</a>

<img src="./3_2_getGP_SikrGrp1_2_getReceivingOrganizationByGPId.png" alt="3_2_getGP_SikrGrp1_2_getReceivingOrganizationByGPId" width="1100">

