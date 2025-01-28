# Get possible General Practitioner for a Patient by PostalCodes (Health Insurance Group 2)

This use case concerns the search for the necessary message address metadata information (like the GLN number) of a general practitioner selected by the user. This is relevant for patients in the National Danish health insurance group 2, and it involves two calls to EAS: First a list of general practitioners with given postal codes is obtained; Second the user selects one of these general practitioners and the necessary message address metadata information for this is retrieved. The sequence diagram is as follows:

<img src="./3_3_getGP_SikrGrp2_1_getReceivingOrganizationByPostalCode.png" alt="3_3_getGP_SikrGrp2_1_getReceivingOrganizationByPostalCode" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

Once EAS has received the first request, a list of general practitioners located within the given postal codes is obtained from the authoritative health organization register (“SOR”). This list is then packed and sent back to the caller of EAS.
The user selects a general practitioner from the returned list and calls EAS with the organization identification of the selected general practitioner. When EAS receives this, second, request, other relevant organization information associated with the organization id is obtained from SOR. With this and the type of message to be sent, the EHMI Endpoint Register (EER) is then called to obtain the GLN number and other relevant information, and finally the response is packed and sent back to the caller of EAS. The message type is, again, needed in the second call to EAS, such that EAS can return the correct response for the given message type – it could for example be that the system of the general practitioner does not support receiving the particular type of message.

This use case is conforming to this OperationDefinition: 
__*OBS Operations code must be inserted here*__
<!--a href="OperationDefinition-eas.SikrGrp1-getReceivingOrganizationByGPId.html">OperationDefinition-eas.SikrGrp1-getReceivingOrganizationByGPId</a--> 

# Error use cases for use case 3

- error use case 3a - PostalCode does not exist
- error use case 3b - SOR-Information does not exist
- error use case 3c - EER-ReceiverData does not exist

### Error use case 3a - PostalCode does not exist

Should an error occur while trying to obtain the list of general practitioners with the given postal codes, an error response stating this is packed and returned to the caller of EAS as illustrated in the following diagram:

<img src="./3_3a_getGP_SikrGrp2_1_getReceivingOrganizationByPostalCode.png" alt="3_3a get GP for SikrGrp2_1 getReceivingOrganizationByPostalCode" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

### Error use case 3b - SOR-Information does not exist

Should an error occur when obtaining relevant organization information associated with the organization id, an error response stating that is packed and returned to the caller of EAS as illustrated in the following diagram:

<img src="./3_3b_getGP_SikrGrp2_1_getReceivingOrganizationByPostalCode.png" alt="3_3b get GP SikrGrp2_1 getReceivingOrganizationByPostalCode" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

### Error use case 3c - EER-ReceiverData does not exist

Correspondingly, should an error occur when calling EER to obtain the GLN number and other relevant information, an error response stating this is packed and returned to the caller of EAS as illustrated by:

<img src="./3_3c_getGP_SikrGrp2_1_getReceivingOrganizationByPostalCode.png" alt="3_3c get GP SikrGrp2_1 getReceivingOrganizationByPostalCode" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

