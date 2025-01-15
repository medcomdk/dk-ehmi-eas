Instance: ExampleEasMessagingOrganization
InstanceOf: EasMessagingOrganization
Title: "Example EAS Messaging Organization"
Description: "An example instance of the EAS Messaging Organization with a required endpoint."
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
* endpoint[0].reference = "Endpoint/example-endpoint"

Instance: ExampleEndpoint
InstanceOf: EasEndpoint
Title: "Example EAS Messaging Endpoint"
Description: "An example endpoint for the EAS Messaging Organization."
* id = "example-endpoint"
* identifier.value = "543210987654321"
* status = #active
* period.start = "2025-01-01"
* connectionType.code = #hl7-fhir-rest
* connectionType.display = "hl7-fhir-rest"
* connectionType.system = "http://medcomehmi.dk/ig/dk-ehmi-eer/CodeSystem/ehmi-connection-type"
* name = "Example FHIR Endpoint"
* managingOrganization.reference = "Organization/example-eas-messaging-organization"
* address = "https://example.org/fhir"
* payloadType[+] = $EasEasMedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
