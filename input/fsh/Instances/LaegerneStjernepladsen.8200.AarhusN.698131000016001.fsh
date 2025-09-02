Instance: LaegerneStjernepladsen.8200.AarhusN.698131000016001
InstanceOf: EasMessagingOrganization
Title: "Example EER Messaging Organization"
Description: "An example instance of the EER Messaging Organization with a required endpoint."
* id = "LaegerneStjernepladsen.8200.AarhusN.698131000016001"
* name = "Lægerne Stjernepladsen I/S"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "543210987654321"
//* type[SOR-Hierarchy].coding.code = $EasMessagingOrganizationType#
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#IO
//* type[SOR-Hierarchy].coding.system = $EerMessagingOrganizationType
//* identifier[EAN-ID].system = "https://www.gs1.org/gln"
//* identifier[EAN-ID].value = "5790000121526"
* endpoint[+] = Reference(Endpoint/LaegerneStjernepladsen.8200.AarhusN.5790002401428)

Instance: LaegerneStjernepladsen.8200.AarhusN.698141000016008
InstanceOf: EasMessagingOrganization
Title: "EER Messaging Organization - LaegerneStjernepladsen.8200.AarhusN.698141000016008"
Description: "EER Messaging Organization - LaegerneStjernepladsen.8200.AarhusN.698141000016008"
* id = "LaegerneStjernepladsen.8200.AarhusN.698141000016008"
* name = "Lægerne Stjernepladsen I/S"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "543210987654321"
* partOf = Reference(Organization/LaegerneStjernepladsen.8200.AarhusN.698131000016001)
//* type[SOR-Hierarchy].coding.code = $EasMessagingOrganizationType#
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#HI
//* type[SOR-Hierarchy].coding.system = $EerMessagingOrganizationType
//* identifier[EAN-ID].system = "https://www.gs1.org/gln"
//* identifier[EAN-ID].value = "5790000121526"
* endpoint[+] = Reference(Endpoint/LaegerneStjernepladsen.8200.AarhusN.5790002401428)

Instance: LaegerneStjernepladsen.8200.AarhusN.698161000016009
InstanceOf: EasMessagingOrganization
Title: "EER Messaging Organization - LaegerneStjernepladsen.8200.AarhusN.698161000016009"
Description: "EER Messaging Organization - LaegerneStjernepladsen.8200.AarhusN.698161000016009"
* id = "LaegerneStjernepladsen.8200.AarhusN.698161000016009"
* name = "Tine Nørregaard Nielsen"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "543210987654321"
* partOf = Reference(Organization/LaegerneStjernepladsen.8200.AarhusN.698141000016008)
//* type[SOR-Hierarchy].coding.code = $EasMessagingOrganizationType#
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#OU
//* type[SOR-Hierarchy].coding.system = $EerMessagingOrganizationType
//* identifier[EAN-ID].system = "https://www.gs1.org/gln"
//* identifier[EAN-ID].value = "5790000121526"
* endpoint[+] = Reference(Endpoint/LaegerneStjernepladsen.8200.AarhusN.5790002401428)

Instance: LaegerneStjernepladsen.8200.AarhusN.5790002401428
InstanceOf: EasEndpointMessagingEdelivery
Title: "EER Messaging Endpoint - LaegerneStjernepladsen.8200.AarhusN.5790002401428"
Description: "EER Messaging Endpoint - LaegerneStjernepladsen.8200.AarhusN.5790002401428"
* id = "LaegerneStjernepladsen.8200.AarhusN.5790002401428"
* identifier.value = "5790002401428"
* status = #active
* period.start = "2025-01-01"
* connectionType.code = #EerMessagingEdelivery
* name = "EER Messaging Endpoint - LaegerneStjernepladsen.8200.AarhusN.5790002401428 FHIR Endpoint"
* managingOrganization.reference = "Organization/LaegerneStjernepladsen.8200.AarhusN.698131000016001"
* extension[networkSupplySystem].valueReference = Reference(EerDeviceAP-MultiMedAP)
* address = "https://example.org/fhir"
* payloadMimeType[+] = #text/xml
* payloadMimeType[+] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0	
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdh:1.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdhacknowledgement:1.0
