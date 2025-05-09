Instance: EER-Org-Novax-SORID-672261000016008
InstanceOf: EasMessagingOrganization
Description: "[EerSOROrganization Novax-lægehus SORID-672261000016008](https://vhewer.com/?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/Organization?identifier=672261000016008)"
* id = "EER.SOR.IO-Novax.672261000016008"
//* identifier[SOR].value = "672261000016008"
* identifier[SOR-ID].value = "672261000016008"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægerne Skt. Clemens Bro I/S"
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#IE
//* type[SOR-Hierarchy].coding.system = $EerMessagingOrganizationType
* endpoint[+] = Reference(Endpoint/EER.EndPoint-Novax.GLNID-5790002288289)

Instance: EER-Org-Novax-SORID-672271000016003
InstanceOf: EasMessagingOrganization
Description: "EER SOR HIOrganization Novax-lægehus SORID-672271000016003"
* id = "EER.SOR.HI-Novax.672271000016003"
//* identifier[SOR].value = "672271000016003"
* identifier[SOR-ID].value = "672271000016003"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægerne Skt. Clemens Bro"
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#SI
//* type[SOR-Hierarchy].coding.system = $EerMessagingOrganizationType
//* partOf = Reference(Organization/EER.SOR.IO-Novax.672261000016008)
* endpoint[+] = Reference(Endpoint/EER.EndPoint-Novax.GLNID-5790002288289)

Instance: EER-Org-Novax-SORID-672291000016004
InstanceOf: EasMessagingOrganization
Description: "EER SOR OUOrganization Novax-læge SORID-672291000016004"
* id = "EER.SOR.OU-Novax.672291000016004"
//* identifier[SOR].value = "672291000016004"
* identifier[SOR-ID].value = "672291000016004"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægerne Skt. Clemens Bro, Andreas Rosborg Kristensen"
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#OE
//* type[SOR-Hierarchy].coding.system = $EerMessagingOrganizationType
//* partOf = Reference(Organization/EER.SOR.HI-Novax.672271000016003)
* endpoint[+] = Reference(Endpoint/EER.EndPoint-Novax.GLNID-5790002288289)

Instance: EER-Org-Novax-SORID-672281000016001
InstanceOf: EasMessagingOrganization
Description: "EER SOR OUOrganization Novax-læge SORID-672281000016001"
* id = "EER.SOR.OU-Novax.672281000016001"
//* identifier[SOR].value = "672281000016001"
* identifier[SOR-ID].value = "672281000016001"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægerne Skt. Clemens Bro, Charlotte Melchior Bendtsen"
* type[SOR-Hierarchy].coding.code = $EerMessagingOrganizationType#OE
//* type[SOR-Hierarchy].coding.system = $EerMessagingOrganizationType
//* partOf = Reference(Organization/EER.SOR.HI-Novax.672271000016003)
* endpoint[+] = Reference(Endpoint/EER.EndPoint-Novax.GLNID-5790002288289)

Instance: EER-EndPoint-Novax-GLNID-5790002288289
InstanceOf: eer.dk.messaging.edelivery.fhir
Description: "EER Messaging EndpointeDeliveryFhir Novax-læge GLNID-5790002288289"
* id = "EER.EndPoint-Novax.GLNID-5790002288289"
* identifier.value = "5790002288289"
* identifier.system = "https://www.gs1.org/gln"
//* identifier[SOR-ID].use = "official"
* status = #active
* managingOrganization = Reference(Organization/EER.SOR.HI-Novax.672271000016003)
* period.start = "2025-01-01"
* period.end = "2027-01-01"
* address = "http://novax.dk/edelivery-endpoint"
* payloadMimeType[+] = #text/xml
* payloadMimeType[+] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0	
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdh:1.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdhacknowledgement:1.0
