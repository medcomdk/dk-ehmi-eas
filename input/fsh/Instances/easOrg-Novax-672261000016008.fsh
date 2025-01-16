Instance: EER-Org-Novax-SORID-672261000016008
InstanceOf: Eer.Sor.Organization
Description: "[EerSOROrganization Novax-lægehus SORID-672261000016008](https://vhewer.com/?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/Organization?identifier=672261000016008)"
* id = "EER.SOR.IO-Novax.672261000016008"
//* identifier[SOR].value = "672261000016008"
* identifier.value = "672261000016008"
* name = "Lægerne Skt. Clemens Bro I/S"
* type[SOR-Hierarchy].coding.code = $EerSOROrganizationType#IE
//* type[SOR-Hierarchy].coding.system = $EerSOROrganizationType
* endpoint[+] = Reference(Endpoint/EER.EndPoint-Novax.GLNID-5790002288289)

Instance: EER-Org-Novax-SORID-672271000016003
InstanceOf: Eer.Sor.Organization
Description: "EER SOR HIOrganization Novax-lægehus SORID-672271000016003"
* id = "EER.SOR.HI-Novax.672271000016003"
//* identifier[SOR].value = "672271000016003"
* identifier.value = "672271000016003"
* name = "Lægerne Skt. Clemens Bro"
* type[SOR-Hierarchy].coding.code = $EerSOROrganizationType#SI
//* type[SOR-Hierarchy].coding.system = $EerSOROrganizationType
* partOf = Reference(Organization/EER.SOR.IO-Novax.672261000016008)
* endpoint[+] = Reference(Endpoint/EER.EndPoint-Novax.GLNID-5790002288289)

Instance: EER-Org-Novax-SORID-672291000016004
InstanceOf: Eer.Sor.Organization
Description: "EER SOR OUOrganization Novax-læge SORID-672291000016004"
* id = "EER.SOR.OU-Novax.672291000016004"
//* identifier[SOR].value = "672291000016004"
* identifier.value = "672291000016004"
* name = "Lægerne Skt. Clemens Bro, Andreas Rosborg Kristensen"
* type[SOR-Hierarchy].coding.code = $EerSOROrganizationType#OE
//* type[SOR-Hierarchy].coding.system = $EerSOROrganizationType
* partOf = Reference(Organization/EER.SOR.HI-Novax.672271000016003)
* endpoint[+] = Reference(Endpoint/EER.EndPoint-Novax.GLNID-5790002288289)

Instance: EER-Org-Novax-SORID-672281000016001
InstanceOf: Eer.Sor.Organization
Description: "EER SOR OUOrganization Novax-læge SORID-672281000016001"
* id = "EER.SOR.OU-Novax.672281000016001"
//* identifier[SOR].value = "672281000016001"
* identifier.value = "672281000016001"
* name = "Lægerne Skt. Clemens Bro, Charlotte Melchior Bendtsen"
* type[SOR-Hierarchy].coding.code = $EerSOROrganizationType#OE
//* type[SOR-Hierarchy].coding.system = $EerSOROrganizationType
* partOf = Reference(Organization/EER.SOR.HI-Novax.672271000016003)
* endpoint[+] = Reference(Endpoint/EER.EndPoint-Novax.GLNID-5790002288289)

Instance: EER-EndPoint-Novax-GLNID-5790002288289
InstanceOf: eer.dk.messaging.edelivery.fhir
Description: "EER Messaging EndpointeDeliveryFhir Novax-læge GLNID-5790002288289"
* id = "EER.EndPoint-Novax.GLNID-5790002288289"
* identifier.value = "5790002288289"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EER.SOR.HI-Novax.672271000016003)
* period.start = "2025-01-01"
* period.end = "2027-01-01"
* address = "http://novax.dk/edelivery-endpoint"
* payloadMimeType[+] = #text/xml
* payloadMimeType[+] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* payloadType[+] = $EerMessageDefinitionUriVS#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.0
* payloadType[+] = $EerMessageDefinitionUriVS#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0	
* payloadType[+] = $EerMessageDefinitionUriVS#urn:dk:healthcare:medcom:messaging:envelope:xml:sbdh:1.0
* payloadType[+] = $EerMessageDefinitionUriVS#urn:dk:healthcare:medcom:messaging:envelope:xml:sbdhacknowledgement:1.0


