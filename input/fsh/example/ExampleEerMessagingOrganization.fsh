Instance: ExampleEerMessagingOrganization
InstanceOf: EasMessagingOrganization
Title: "Example EasMessagingOrganization"
Description: "An example instance of the EasMessagingOrganization with a required endpoint."
* id = "example-eas-messaging-organization"
* name = "Example EasMessagingOrganization"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "543210987654321"
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#OU
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
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0	
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdh:1.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdhacknowledgement:1.0
