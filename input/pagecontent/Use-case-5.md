# Get ReceivingOrganization by MessageType and Postalcode

This use case concerns the search for the necessary message address metadata information (like the GLN number) for recipients capable of receiving specific types of messages within an area defined by postal codes. This is relevant if it is likely the message to be sent will result in the patient having to pay a visit at the receiving organization, why it is handy that the place is relatively close to the patient home (or work) address. The sequence diagram for this case is as follows: 

<img src="./3_5_getReceiverData_2_getReceivingOrganizationByMessageTypeAndPostalCode.png" alt="3_5_getReceiverData_2_getReceivingOrganizationByMessageTypeAndPostalCode" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

When EAS has received the request, the relevant organization information associated with organizations registered with an address with one of the given postal codes is obtained from SOR. With this and the type of message to be sent, the EHMI Endpoint Register (EER) is called to obtain the GLN number and other relevant information, and finally the response is packed and sent back to the caller of EAS.

This use case is conforming to this OperationDefinition: <a href="OperationDefinition-eas.getReceivingOrganizationByMessageTypeAndPostalCode.html">OperationDefinition-eas.getReceivingOrganizationByMessageTypeAndPostalCode</a>

__*OBS Operations code must be inserted here*__

    **Be aware:** The exact name of this operation may differentiate, when it comes to the real world implementation, 
    but the intention is to implement a service that given the input parameters profile will produce the output parameters Profile.

    Generated Narrative: OperationDefinition eas.SikrGrp1-getReceivingOrganizationByMessageTypeAndPostalCode

    URL: [base]/$getReceivingOrganizationByMessageTypeAndPostalCode/

    Input parameters Profile: string
    
    Output parameters Profile:

    http://medcomehmi.dk/ig/dk-ehmi-eas/StructureDefinition/EasMessagingOrganization



# Error use cases for use case 5

- error use case 5a - PostalCode or SOR-Information does not exist
- error use case 5b - EER-ReceiverData does not exist

<!-- error use case 5a - PostalCode does not exist -->
<!-- error use case 5b - SOR-Information doesn't exist -->
<!-- error use case 5c - EER-ReceiverData doesn't exist -->

### Error use case 5a - PostalCode or SOR-Information does not exist

Should the given postal codes be erroneous or an error occur when obtaining relevant organization information for organizations registered with the given postal codes, an error response stating this is packed and returned to the caller of EAS as illustrated in the following diagram:


<img src="./3_5a_getReceiverData_2_getReceivingOrganizationByMessageTypeAndPostalCode.png" alt="3_5_1a Get ReceiverData getReceivingOrganizationByMessageTypeAndPostalCode" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

### Error use case 5b - EER-ReceiverData does not exist

Correspondingly, should an error occur when calling EER to obtain the GLN number and other relevant information, an error response stating that is packed and returned to the caller of EAS as illus-trated by:

<img src="./3_5b_getReceiverData_2_getReceivingOrganizationByMessageTypeAndPostalCode.png" alt="3_5_1b Get ReceiverData getReceivingOrganizationByMessageTypeAndPostalCode" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

<!-- ### Error use case 5c - EER-ReceiverData does not exist

Should an error occur when obtaining relevant organization information for organizations registered with the given postal codes, an error response stating this is packed and returned to the caller of EAS as illustrated in the following diagram:

<img src="./3_5b_getReceiverData_2_getReceivingOrganizationByMessageTypeAndPostalCode.png" alt="3_5_1b Get ReceiverData getReceivingOrganizationByMessageTypeAndPostalCode" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

-->