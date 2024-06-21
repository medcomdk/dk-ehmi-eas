# EAS - version 1 - use case 2

## Get GP for a Patient by GPId (Health Insurance Group 1) (getGP_SikrGrp1_2_getReceivingOrganizationByGPId)

- GET [EAS-base]/Organization?_profile=https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html&Patient?Identifier.value=123&system=urn:oid:1.2.208.176.1.2
- This search will produce a <a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html" target="_blank">MedComMessagingOrganization</a> as a response
- EAS will in order to produce this response run through a sequence of calls from 

This is basically conforming to this OperationDefinition: <a href="OperationDefinition-eas.SikrGrp1-getReceivingOrganizationByGPId.html">OperationDefinition-eas.SikrGrp1-getReceivingOrganizationByGPId</a>

<img src="./3_2_getGP_SikrGrp1_2_getReceivingOrganizationByGPId.png" alt="3_2_getGP_SikrGrp1_2_getReceivingOrganizationByGPId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">


## error use cases 

- error use case 2a - SOR-Information doesn't exist
- error use case 2b - EER-ReceiverData doesn't exist

### error use case 1a - PatId doesn't exist

Should an error occur during the validation of the patient identification, an error response stating this is packed and returned to the caller of EAS as illustrated in the following diagram: (margin:20px 40px 40px)

<img src="./3_1a_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1a Get GP metadata for Health Insurance Group 1 getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

### error use case 2a - SOR-Information doesn't exist

Similarly, should an error occur when obtaining the organization id (and other relevant organ-ization information), from the id of the patient’s general practitioner, an error response stat-ing that is packed and returned to the caller of EAS as illustrated in the following diagram:

<img src="./3_1b_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1b Get GP metadata for Health Insurance Group 1 getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

### error use case 2b - EER-ReceiverData doesn't exist

Finally, should an error occur when calling EER to obtain the GLN number and other relevant information, an error response stating this is packed and returned to the caller of EAS as illus-trated by:

<img src="./3_1c_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1c Get GP metadata for Health Insurance Group 1 getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

