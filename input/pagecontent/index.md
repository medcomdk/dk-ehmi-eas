# EHMI Addressing Service (EAS)

The EHMI Addressing Service (EAS) Implementation Guide is a Search Profile that defines some basic and reusable search patterns based on SOR and EER Resources. 

When a user of EHMI wants to send a message, the correct recipient of the message needs to be found. Such a search function already exists to varying degrees in the various user systems, and to make these searches easier, EAS provides useful standardized search services based on relevant authoritative sources.

When EAS receives a search request from a user system it in turn calls the relevant authoritative sources responsible for the information needed for the particular type of search request, and based on this EAS constructs the response for the user system.

EAS will implement searches in authoritative sources like 

- "Sikrede"
- SOR
- EER

In the first version of EAS it will expose these searches for clients in the healthcare domain:

- [Use case 1 - getgp_sikrgrp1_1_getReceivingOrganizationBypatid](./index-uc1.html)
- [Use case 2 - getgp_sikrgrp1_2_getReceivingOrganizationBygpid](./index-uc2.html)
- [Use case 3 - getgp_sikrgrp2_1_getReceivingOrganizationBypostalcode](./index-uc3.html)
- [Use case 4 - getreceiverdata_1_getReceivingOrganizationBySORID](./index-uc4.html)
- [Use case 5 - getreceiverdata_2_getReceivingOrganizationByMessageType&Postalcode](./index-uc5.html)

<br/>

<img src="./3_0_EHMI_Sundhedsadresseringsservice_1315x551.png" alt="EHMI Addressing Service (EAS) (DA)" width="100%">

