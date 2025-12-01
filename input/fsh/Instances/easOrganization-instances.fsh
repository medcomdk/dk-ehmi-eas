Instance: ExampleEasMessagingOrganization2
InstanceOf: EasMessagingOrganization
Title: "Example EasMessagingOrganization2"
Description: "An example instance of the EasMessagingOrganization with a required endpoint.2"
* id = "example-eas-messaging-organization2"
* name = "Example EasMessagingOrganization"
* identifier[SOR-ID].value = "543210987654321"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#OU
* endpoint[0].reference = "Endpoint/example-endpoint2"

Instance: ExampleEndpoint2
InstanceOf: EerEndpointMessagingEdelivery
Title: "Example EasMessagingEndpoint2"
Description: "An example endpoint2 for an EasMessagingOrganization."
* id = "example-endpoint2"
* identifier.value = "543210987654321"
* identifier.system = "https://www.gs1.org/gln"
* status = #active
* period.start = "2025-01-01"
* name = "Example FHIR Endpoint"
* managingOrganization.reference = "Organization/example-eas-messaging-organization"
* address = "https://example.org/fhir"
* payloadMimeType[+] = #text/xml
* payloadMimeType[+] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0	
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdh:1.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdhacknowledgement:1.0
