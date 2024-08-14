# EHMI Addressing Service (EAS)

The EHMI Addressing Service (EAS) Implementation Guide is a Search Profile that defines some basic and reusable search patterns based on resources from authoritative sources (like SOR and EER). 

When a user of EHMI wants to send a message, the correct recipient of the message needs to be found. Such a search function already exists to varying degrees in the various user systems, and to make the following searches easier, EAS provides useful standardized search services based on relevant authoritative sources.

When EAS receives a search request from a user system it in turn calls the relevant authoritative sources responsible for the information needed for the particular type of search request, and based on this EAS constructs the response for the user system.

EAS will implement searches in authoritative sources like 

- SOR
- EER
- "Insured (Sikrede DA)"

In the first version of EAS it will expose the following searches for clients in the healthcare domain:

- [Use case 1 - Get General Practitioner for a Patient by PatientId (Health Insurance Group 1)](./Use-case-1.html)
- [Use case 2 - Get General Practitioner for a Patient by GPId (Health Insurance Group 1)](./Use-case-2.html)
- [Use case 3 - Get possible General Practitioner for a Patient by PostalCodes (Health Insurance Group 2)](./Use-case-3.html)
- [Use case 4 - Get ReceivingOrganization by SORID](./Use-case-4.html)
- [Use case 5 - Get ReceivingOrganization by MessageType and Postalcode](./Use-case-5.html)

<br/>

<img src="./EHMI Pixi - Addressing Service.png" alt="EHMI Addressing Service (EAS) (DA)" width="100%">

