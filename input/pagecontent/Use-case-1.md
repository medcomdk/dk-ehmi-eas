# Get GP for a Patient (Health Insurance Group 1)

- GET [EAS-base]/Organization?_profile=http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization&Patient?Identifier.value=[Patient_Identifier]&system=urn:oid:1.2.208.176.1.2
- This search will produce a <a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html" target="_blank">MedComMessagingOrganization</a> as a response
- EAS will in order to produce this response run through a sequence of calls from 

This is basically conforming to this OperationDefinition: <a href="OperationDefinition-eas.SikrGrp1-getReceivingOrganizationByPatientId.html">OperationDefinition-eas.SikrGrp1-getReceivingOrganizationByPatientId</a>

This use case concerns the quite common search for the necessary message address metadata information (like the GLN number) of a patient’s general practitioner based on the identification of the patient, which is relevant for citizens in the National Danish health insurance group 1. The sequence diagram for this case is as follows:

<img src="./3_1_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1 Get GP metadata for Health Insurance Group 1 getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;margin: 5px 20px 30px 0px">

Once EAS has received the request, it validates the patient identification, and if this goes well, the id of the patient’s general practitioner (the so-called “Ydernummer” in Danish) is obtained from the authoritative source for general practitioners (“Sikrede” in Danish). 

From the authoritative health organization register (“SOR”) the organization id (and other relevant organization information) corresponding to the id of the general practitioner is obtained. 

With this and the type of message to be sent, the EHMI Endpoint Register (EER) is finally called to obtain the GLN number and other relevant information, and the response is packed and sent back to the caller of EAS. Note that the message type is needed in the initiating call to EAS, such that EAS can return the correct response for the given message type – it could for example be that the system of the general practitioner does not support receiving the particular type of message.

# Error use cases for use case 1

- error use case 1a - PatId doesn't exist
- error use case 1b - SOR-Information doesn't exist
- error use case 1c - EER-ReceiverData doesn't exist

### error use case 1a - PatId doesn't exist

Should an error occur during the validation of the patient identification, an error response stating this is packed and returned to the caller of EAS as illustrated in the following diagram: (margin:20px 40px 40px)

<img src="./3_1a_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1a Get GP metadata for Health Insurance Group 1 getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;margin: 5px 20px 30px 0px">

### error use case 1b - SOR-Information doesn't exist

Similarly, should an error occur when obtaining the organization id (and other relevant organ-ization information), from the id of the patient’s general practitioner, an error response stat-ing that is packed and returned to the caller of EAS as illustrated in the following diagram:

<img src="./3_1b_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1b Get GP metadata for Health Insurance Group 1 getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;margin: 5px 20px 30px 0px">

### error use case 1c - EER-ReceiverData doesn't exist

Finally, should an error occur when calling EER to obtain the GLN number and other relevant information, an error response stating this is packed and returned to the caller of EAS as illus-trated by:

<img src="./3_1c_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1c Get GP metadata for Health Insurance Group 1 getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;margin: 5px 20px 30px 0px">

