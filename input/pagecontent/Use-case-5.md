# Get ReceivingOrganization by MessageType and Postalcode

- GET [EAS-base]/Organization?_profile=https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html&Patient?Identifier.value=123&system=urn:oid:1.2.208.176.1.2
- This search will produce a <a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html" target="_blank">MedComMessagingOrganization</a> as a response
- EAS will in order to produce this response run through a sequence of calls from 

This is basically conforming to this OperationDefinition: <a href="OperationDefinition-eas.getReceivingOrganizationByMessageTypeAndPostalCode.html">OperationDefinition-eas.getReceivingOrganizationByMessageTypeAndPostalCode</a> 

<img src="./3_5_getReceiverData_2_getReceivingOrganizationByMessageTypeAndPostalCode.png" alt="3_5_getReceiverData_2_getReceivingOrganizationByMessageTypeAndPostalCode" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

# Error use cases for use case 5

- error use case 5a - PostalCode does not exist
- error use case 5b - SOR-Information doesn't exist
- error use case 5c - EER-ReceiverData doesn't exist

### Error use case 5a - PostalCode doesn't exist

__*TBD: New Sequencediagram and text*__

### Error use case 5b - SOR-Information doesn't exist

__*TBD: Change Sequencediagram and text accordingly*__

Similarly, should an error occur when obtaining the organization id (and other relevant organ-ization information), from the id of the patient’s general practitioner, an error response stat-ing that is packed and returned to the caller of EAS as illustrated in the following diagram:

<img src="./3_1b_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1b Get General Practitioner metadata for Health Insurance Group 1 getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

### Error use case 5c - EER-ReceiverData doesn't exist

Finally, should an error occur when calling EER to obtain the GLN number and other relevant information, an error response stating this is packed and returned to the caller of EAS as illus-trated by:

<img src="./3_1c_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1c Get General Practitioner metadata for Health Insurance Group 1 getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

