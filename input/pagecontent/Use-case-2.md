# Get General Practitioner for a Patient by GPId (Health Insurance Group 1)

This use case concerns the search for the necessary message address metadata information (like the GLN number) of a general practitioner based on the identification of the general practitioner. This is relevant, for example, when the general practitioner of a patient in the National Danish health insurance group 1 is already known. The sequence diagram for this case is as follows:

<img src="./3_2_getGP_SikrGrp1_2_getReceivingOrganizationByGPId.png" alt="3_2_getGP_SikrGrp1_2_getReceivingOrganizationByGPId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

Once EAS has received the request, the organization id (and other relevant organization in-formation) corresponding to the id of the general practitioner is obtained from the authorita-tive health organization register (“SOR”). With this and the type of message to be sent, the EHMI Endpoint Register (EER) is called to obtain the GLN number and other relevant infor-mation, and finally the response is packed and sent back to the caller of EAS. The message type is, again, needed in the initiating call to EAS, such that EAS can return the correct re-sponse for the given message type – it could for example be that the system of the general practitioner does not support receiving the particular type of message.

- GET [EAS-base]/Organization?_profile=https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html&Patient?Identifier.value=123&system=urn:oid:1.2.208.176.1.2
- This search will produce a <a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html" target="_blank">MedComMessagingOrganization</a> as a response
- EAS will in order to produce this response run through a sequence of calls from 

This is basically conforming to this OperationDefinition: <a href="OperationDefinition-eas.SikrGrp1-getReceivingOrganizationByGPId.html">OperationDefinition-eas.SikrGrp1-getReceivingOrganizationByGPId</a>

# Error use cases for use case 2

- error use case 2a - SOR-Information doesn't exist
- error use case 2b - EER-ReceiverData doesn't exist

### Error use case 2a - SOR-Information doesn't exist

Should an error occur when obtaining the organization id (and other relevant organization information), from the id of the patient’s general practitioner, an error response stating that is packed and returned to the caller of EAS as illustrated in the following diagram:

<img src="./3_2a_getGP_SikrGrp1_2_getReceivingOrganizationByGPId.png" alt="3_2a Get General Practitioner metadata for Health Insurance Group 1 getReceivingOrganizationByGPId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

### Error use case 2b - EER-ReceiverData doesn't exist

Finally, should an error occur when calling EER to obtain the GLN number and other relevant information, an error response stating this is packed and returned to the caller of EAS as illus-trated by:

<img src="./3_2b_getGP_SikrGrp1_2_getReceivingOrganizationByGPId.png" alt="3_1c Get General Practitioner metadata for Health Insurance Group 1 getReceivingOrganizationByGPId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

