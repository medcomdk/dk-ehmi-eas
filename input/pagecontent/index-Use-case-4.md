# EAS - version 1 - use case 4

## getReceiverData_1_getReceivingOrganizationBySORId

This use case is virtually identical to the second part of use case 3. From a list in his/her local system, the user selects an organization, by id, and then calls EAS to retrieve the necessary message address metadata information for this. The sequence diagram for this is as follows:

<img src="./3_4_getReceiverData_1_getReceivingOrganizationBySORId.png" alt="3_4_getReceiverData_1_getReceivingOrganizationBySORId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">
 
Initially, when EAS receives this request, the given organization id is validated, after which relevant organization information associated with the organization id is obtained from SOR. With this and the type of message to be sent, the EHMI Endpoint Register (EER) is then called to obtain the GLN number and other relevant information, and finally the response is packed and sent back to the caller of EAS. The message type is, again, needed in the second call to EAS, such that EAS can return the correct response for the given message type – it could for example be that the system of the general practitioner does not support receiving the par-ticular type of message.

- GET [EAS-base]/Organization?_profile=https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html&Patient?Identifier.value=123&system=urn:oid:1.2.208.176.1.2
- This search will produce a <a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html" target="_blank">MedComMessagingOrganization</a> as a response
- EAS will in order to produce this response run through a sequence of calls from 

This is basically conforming to this OperationDefinition: <a href="OperationDefinition-eas.getReceivingOrganizationBySORId.html">OperationDefinition-eas.getReceivingOrganizationBySORId</a> 

## error use cases 

- error use case 4a - SOR-Information doesn't exist
- error use case 4b - EER-ReceiverData doesn't exist

### error use case 4a - SOR-Information doesn't exist

Should an error occur while validating the given organization id or obtaining the relevant or-ganization information associated with the organization id, an error response stating this is packed and returned to the caller of EAS as illustrated in the following diagram:

__*TBD: Change Sequencediagram*__

<img src="./3_1b_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1b Get GP metadata for Health Insurance Group 1 getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

### error use case 4b - EER-ReceiverData doesn't exist

Finally, should an error occur when calling EER to obtain the GLN number and other relevant information, an error response stating this is packed and returned to the caller of EAS as illustrated by:

__*TBD: Change Sequencediagram*__

<img src="./3_1c_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1c Get GP metadata for Health Insurance Group 1 getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

