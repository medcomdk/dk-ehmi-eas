Instance: ExampleEasMessagingOrganization2
InstanceOf: EasMessagingOrganization
Title: "Example EasMessagingOrganization2"
Description: "An example instance of the EasMessagingOrganization with a required endpoint.2"
* id = "example-eas-messaging-organization2"
* name = "Example EasMessagingOrganization"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "543210987654321"
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#OU
//* identifier[EAN-ID].system = "https://www.gs1.org/gln"
//* identifier[EAN-ID].value = "5790000121526"
//* telecom[0].system = #phone
//* telecom[0].value = "+123456789"
//* telecom[1].system = #email
//* telecom[1].value = "info@example.org"
//* address[0].line = "123 Example Street"
//* address[0].city = "Example City"
//* address[0].postalCode = "12345"
* endpoint[0].reference = "Endpoint/example-endpoint2"

Instance: ExampleEndpoint2
InstanceOf: EerEndpointMessagingEdelivery
Title: "Example EasMessagingEndpoint2"
Description: "An example endpoint2 for an EasMessagingOrganization."
* id = "example-endpoint2"
* identifier.value = "543210987654321"
* status = #active
* period.start = "2025-01-01"
//* connectionType.code = #EerMessagingEdelivery
//* connectionType.display = "EerMessagingEdelivery"
//* connectionType.system = "http://medcomehmi.dk/ig/dk-ehmi-eer/CodeSystem/ehmi-connection-type"
* name = "Example FHIR Endpoint"
* managingOrganization.reference = "Organization/example-eas-messaging-organization"
* address = "https://example.org/fhir"
* payloadMimeType[+] = #text/xml
* payloadMimeType[+] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
//* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:hospitalnotification:3.0
//* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:carecommunication:3.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0	
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdh:1.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdhacknowledgement:1.0
