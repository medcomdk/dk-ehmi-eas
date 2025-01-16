Instance: ExampleEerMessagingOrganization
InstanceOf: EasMessagingOrganization
Title: "Example EER Messaging Organization"
Description: "An example instance of the EER Messaging Organization with a required endpoint."
* id = "example-eas-messaging-organization"
* name = "Example Organization"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "543210987654321"
//* identifier[EAN-ID].system = "https://www.gs1.org/gln"
//* identifier[EAN-ID].value = "5790000121526"
* telecom[0].system = #phone
* telecom[0].value = "+123456789"
* telecom[1].system = #email
* telecom[1].value = "info@example.org"
* address[0].line = "123 Example Street"
* address[0].city = "Example City"
* address[0].postalCode = "12345"
//* endpoint[0].reference = "Endpoint/example-endpoint"
* endpoint[+] = Reference(Endpoint/EER.EndPoint-Novax.GLNID-5790002288289)

Instance: ExampleEndpoint
InstanceOf: EasEndpointMessagingEdelivery
Title: "Example EAS Messaging Endpoint"
Description: "An example endpoint for the EAS Messaging Organization."
* id = "example-endpoint"
* identifier.value = "543210987654321"
* status = #active
* period.start = "2025-01-01"
* connectionType.code = #EerMessagingEdelivery
* name = "Example FHIR Endpoint"
* managingOrganization.reference = "Organization/example-eas-messaging-organization"
* address = "https://example.org/fhir"
* payloadMimeType[+] = #text/xml
* payloadMimeType[+] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.0
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0	
* payloadType[+] = $EerMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdh:1.0
* payloadType[+] = $EerMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdhacknowledgement:1.0
