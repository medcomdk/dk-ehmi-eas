# EAS - version 1 - use case 3

## Use case 3 - Get possible GP for a Patient by PostalCodes (Health Insurance Group 2) (getGP_SikrGrp2_1_getReceivingOrganizationByPostalCode)

- GET [EAS-base]/Organization?_profile=https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html&Patient?Identifier.value=123&system=urn:oid:1.2.208.176.1.2
- This search will produce a <a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html" target="_blank">MedComMessagingOrganization</a> as a response
- EAS will in order to produce this response run through a sequence of calls from 

This is basically conforming to this OperationDefinition: <a href="OperationDefinition-eas.SikrGrp1-getReceivingOrganizationByGPId.html">OperationDefinition-eas.SikrGrp1-getReceivingOrganizationByGPId</a> 

<img src="./3_3_getGP_SikrGrp2_1_getReceivingOrganizationByPostalCode.png" alt="3_3_getGP_SikrGrp2_1_getReceivingOrganizationByPostalCode" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

## error use cases 

- error use case 3a - PostalCode does not exist
- error use case 3b - SOR-Information doesn't exist
- error use case 3c - EER-ReceiverData doesn't exist

### error use case 3a - PostalCode doesn't exist

__*TBD: New Sequencediagram and text*__

### error use case 3b - SOR-Information doesn't exist

__*TBD: Change Sequencediagram and text accordingly*__

Similarly, should an error occur when obtaining the organization id (and other relevant organ-ization information), from the id of the patient’s general practitioner, an error response stat-ing that is packed and returned to the caller of EAS as illustrated in the following diagram:

<img src="./3_1b_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1b Get GP metadata for Health Insurance Group 1 getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

### error use case 3c - EER-ReceiverData doesn't exist

Finally, should an error occur when calling EER to obtain the GLN number and other relevant information, an error response stating this is packed and returned to the caller of EAS as illus-trated by:

<img src="./3_1c_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1c Get GP metadata for Health Insurance Group 1 getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

