Instance: ExampleEasMessagingOrganization2
InstanceOf: EasMessagingOrganization
Title: "Example EasMessagingOrganization2"
Description: "An example instance of the EasMessagingOrganization with a required endpoint.2"
* id = "example-eas-messaging-organization2"
* name = "Example EasMessagingOrganization"
* identifier[SOR-ID].value = "543210987654321"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* type[SOR-Hierarchy] = $EerMessagingOrganizationType#OU
* endpoint[0] = Reference(ExampleEndpoint2)

Instance: ExampleEndpoint2
InstanceOf: EerEndpointMessaging
Title: "Example EasMessagingEndpoint2"
Description: "An example endpoint2 for an EasMessagingOrganization."
* id = "example-endpoint2"
* identifier.value = "5790002288289"
* identifier.system = "https://www.gs1.org/gln"
* status = #active
* period.start = "2025-01-01"
* name = "Example FHIR Endpoint"
* managingOrganization = Reference(ExampleEasMessagingOrganization2)
* address = "https://example.org/fhir"
* connectionType = $EerEndpointConnectionType#EerMessagingEdelivery
* payloadMimeType[+] = #text/xml
* payloadMimeType[+] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition::homecareobservation-message##urn:dk:medcom:fhir:homecareobservation-message::1.2
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition::acknowledgement-message##urn:dk:medcom:fhir:acknowledgement-message::2.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:messaging:oasis:ebxml:schema:xsd::ehmisbdh-acknowledgement##urn:dk:ehmi:sbdh:ehmisbdh-acknowledgement::1.0
