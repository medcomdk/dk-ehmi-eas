# Get ReceivingOrganization by SORID

This use case is virtually identical to the second part of use case 3. From a list in his/her local system, the user selects an organization, by id, and then calls EAS to retrieve the necessary message address metadata information for this. The sequence diagram for this is as follows:

<img src="./3_4_getReceiverData_1_getReceivingOrganizationBySORId.png" alt="3_4_getReceiverData_1_getReceivingOrganizationBySORId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">
 
Initially, when EAS receives this request, the given organization id is validated, after which relevant organization information associated with the organization id is obtained from SOR. With this and the type of message to be sent, the EHMI Endpoint Register (EER) is then called to obtain the GLN number and other relevant information, and finally the response is packed and sent back to the caller of EAS. The message type is, again, needed in the second call to EAS, such that EAS can return the correct response for the given message type – it could for example be that the system of the general practitioner does not support receiving the particular type of message.

This use case is conforming to this OperationDefinition: 

__*OBS Operations code must be inserted here*__

    **Be aware:** The exact name of this operation may differentiate, when it comes to the real world implementation, 
    but the intention is to implement a service that given the input parameters profile will produce the output parameters Profile.

    Generated Narrative: OperationDefinition eas.SikrGrp1-getReceivingOrganizationByGPId

    URL: [base]/$getReceivingOrganizationBySORID/EasCoreOrganization?identifer=[SOR-identifer]

    Input parameters Profile:

    http://medcomehmi.dk/ig/dk-ehmi-eas/StructureDefinition/EasCoreOrganization

    Output parameters Profile:

    http://medcomehmi.dk/ig/dk-ehmi-eas/StructureDefinition/EasMessagingOrganization


# Error use cases for use case 4

- error use case 4a - SOR-Information does not exist
- error use case 4b - EER-ReceiverData does not exist

### Error use case 4a - SOR-Information does not exist

Should an error occur while validating the given organization id or obtaining the relevant or-ganization information associated with the organization id, an error response stating this is packed and returned to the caller of EAS as illustrated in the following diagram:

<img src="./3_4a_getReceiverData_1_getReceivingOrganizationBySORId.png" alt="3_4a get ReceiverData 1 getReceivingOrganizationBySORId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

### Error use case 4b - EER-ReceiverData does not exist

Correspondingly, should an error occur when calling EER to obtain the GLN number and other relevant information, an error response stating this is packed and returned to the caller of EAS as illustrated by:

<img src="./3_4b_getReceiverData_1_getReceivingOrganizationBySORId.png" alt="3_4a get ReceiverData 1 getReceivingOrganizationBySORId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

