Instance: ExampleEasMedComMessagingOrganization
InstanceOf: EasMedComMessagingOrganization
Title: "Example EAS MedCom Messaging Organization"
Description: "An example instance of the EAS MedCom Messaging Organization with a required endpoint."
* id = "example-eas-medcom-messaging-organization"
* name = "Example Organization"
* identifier.system = "http://example.org/identifier-system"
* identifier.value = "OrgID"
* identifier[SOR].value = "325421000016001"
* telecom[0].system = #phone
* telecom[0].value = "+123456789"
* telecom[1].system = #email
* telecom[1].value = "info@example.org"
* address[0].line = "123 Example Street"
* address[0].city = "Example City"
* address[0].postalCode = "12345"
* endpoint[0].reference = "Endpoint/example-endpoint"

Instance: ExampleEndpoint
InstanceOf: Endpoint
Title: "Example Endpoint"
Description: "An example endpoint for the EAS MedCom Messaging Organization."
* id = "example-endpoint"
* status = #active
* connectionType.system = http://hl7.org/fhir/ValueSet/endpoint-connection-type
* connectionType.code = #hl7-fhir-rest
* connectionType.display = "hl7-fhir-rest"
* connectionType.system = "http://medcomehmi.dk/ig/dk-ehmi-eer/CodeSystem/ehmi-connection-type"
* name = "Example FHIR Endpoint"
* managingOrganization.reference = "Organization/example-eas-medcom-messaging-organization"
* address = "https://example.org/fhir"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
