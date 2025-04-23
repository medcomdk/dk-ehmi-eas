# Get General Practitioner for a Patient (Health Insurance Group 1)

This use case concerns the quite common search for the necessary message address metadata information (like the GLN number) of a patient’s general practitioner based on the identification of the patient, which is relevant for citizens in the National Danish health insurance group 1. The sequence diagram for this case is as follows:

<img src="./3_1_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1 Get General Practitioner metadata for Health Insurance Group 1 getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;margin: 5px 20px 30px 0px">

Once EAS has received the request, it validates the patient identification, and if this goes well, the id of the patient’s general practitioner (the so-called “Ydernummer” in Danish) is obtained from the authoritative source for general practitioners of the citizens (“Insured (Sikrede DA)” in Danish). 

From the authoritative health organization register (“SOR”) the organization id (and other relevant organization information) corresponding to the id of the general practitioner is obtained. 

With this and the type of message to be sent, the EHMI Endpoint Register (EER) is finally called to obtain the GLN number and other relevant information, and the response is packed and sent back to the caller of EAS. Note that the message type is needed in the initiating call to EAS, such that EAS can return the correct response for the given message type – it could for example be that the system of the general practitioner does not support receiving the particular type of message.

This use case is conforming to this OperationDefinition: 

    **Be aware:** The exact name of this operation may differentiate, when it comes to the real world implementation, 
    but the intention is to implement a service that given the input parameters profile will produce the output parameters Profile.

    Generated Narrative: OperationDefinition eas.SikrGrp1-getReceivingOrganizationByPatientId

    URL: [base]/$getSikrGrp1_getReceivingOrganizationByPatientId/easPatient?identifier=[cpr-identifier]&MessageType=[MessageType]

    Input parameters Profile:

    http://medcomehmi.dk/ig/eas/StructureDefinition/EasCorePatient
    
    Output parameters Profile:

    http://medcomehmi.dk/ig/eas/StructureDefinition/EasMessagingOrganization


# Important error use cases for use case 1

- error use case 1a - PatId does not exist
- error use case 1b - SOR-Information does not exist
- error use case 1c - EER-ReceiverData does not exist

### Error use case 1a - PatId does not exist

Should an error occur during the validation of the patient identification, an error response stating this is packed and returned to the caller of EAS as illustrated in the following diagram:

<img src="./3_1a_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1a Get General Practitioner metadata for Health Insurance Group 1 getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;margin: 5px 20px 30px 0px">

### Error use case 1b - SOR-Information does not exist

Similarly, should an error occur when obtaining the organization id (and other relevant organization information), from the id of the patient’s general practitioner, an error response stating that is packed and returned to the caller of EAS as illustrated in the following diagram:

<img src="./3_1b_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1b Get General Practitioner metadata for Health Insurance Group 1 getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;margin: 5px 20px 30px 0px">

### Error use case 1c - EER-ReceiverData does not exist

Correspondingly, should an error occur when calling EER to obtain the GLN number and other relevant information, an error response stating this is packed and returned to the caller of EAS as illustrated by:

<img src="./3_1c_getGP_SikrGrp1_1_getReceivingOrganizationByPatientId.png" alt="3_1c Get General Practitioner metadata for Health Insurance Group 1 getReceivingOrganizationByPatId" style="width:100%;height:auto;border=1;margin: 5px 20px 30px 0px">

