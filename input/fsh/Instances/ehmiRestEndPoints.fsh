Instance: EER-Org-MedCom-SORID-325421000016001
InstanceOf: EerSORIOOrganization
Description: "EerSORIOOrganization MedCom SORID-325421000016001"
* id = "EER.SOR.IO-MedCom.325421000016001"
* identifier[SOR].value = "325421000016001"
* name = "MedCom"
* type[SOR-Hierarchy].coding.code = $EerSOROrganizationType#IE
* type[SOR-Hierarchy].coding.system = $EerSOROrganizationType
* endpoint[+] = Reference(Endpoint/EER.EndPoint-MedCom.CVR-26919991)

Instance: EER-EndPoint-MedCom-CVR-26919991
InstanceOf: EerEndpointRestEds
Description: "EerEndpointRestEds MedCom CVR-26919991"
* id = "EER.EndPoint-MedCom.CVR-26919991"
* identifier.value = "26919991"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EER.SOR.IO-MedCom.325421000016001)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "https://eds.medcom.dk/"
* payloadMimeType = #application/fhir+json
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.0 

