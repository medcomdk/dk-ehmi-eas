# EAS - version 1 - use case 1 - getGP_SikrGrp1

## Get GP for a Patient (Sygesikringsgruppe 1)

(getGP_SikrGrp1_1_getReceivingOrganizationByPatId)

- GET [EAS-base]/Organization?_profile=http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization&Patient?Identifier.value=[Patient_Identifier]&system=urn:oid:1.2.208.176.1.2
- This search will produce a <a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html" target="_blank">MedComMessagingOrganization</a> as a response
- EAS will in order to produce this response run through a sequence of calls from 

This is basically conforming to this OperationDefinition: <a href="OperationDefinition-eas.SikrGrp1-getReceivingOrganizationByPatientId.html">OperationDefinition-eas.SikrGrp1-getReceivingOrganizationByPatientId</a>

Test adding more text here

Test adding more text here

Test adding more text here

Test adding more text here

<img src="./3_1_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1_getGP_SikrGrp1_1_getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;right-margin:20px;bottom-margin:20px;top-margin:20px">

## error use cases 

- error use case 1 - PatId doesn't exist
- error use case 2 - SOR-Information doesn't exist
- error use case 3 - EER-ReceiverData doesn't exist

### error use case 1a - PatId doesn't exist

<img src="./3_1a_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1a_getGP_SikrGrp1_1_getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;right-margin:20px;bottom-margin:20px;top-margin:20px">

### error use case 1b - SOR-Information doesn't exist

<img src="./3_1b_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1b_getGP_SikrGrp1_1_getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;right-margin:20px;bottom-margin:20px;top-margin:20px">

### error use case 1c - EER-ReceiverData doesn't exist

<img src="./3_1c_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1c_getGP_SikrGrp1_1_getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;right-margin:20px;bottom-margin:20px;top-margin:20px">

