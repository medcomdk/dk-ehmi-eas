/*Instance: eas.SikrGrp1-getReceivingOrganizationByPatientId
InstanceOf: OperationDefinition
Description: "EAS SikrGrp1 getReceivingOrganizationByPatientId"
Usage: #definition
* url = "http://medcomehmi.dk/ig/eas/OperationDefinition/eas_SikrGrp1_getReceivingOrganizationByPatientId"
* version = "0.1.0"
* name = "EAS SikrGrp1 getReceivingOrganizationByPatientId"
* title = "EAS SikrGrp1 getReceivingOrganizationByPatientId"
* status = #draft
* kind = #query
* date = "2025-01-01T00:00:00+01:00"
* publisher = "EHMI EAS"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://sundhedsdatastyrelsen.dk/ehmi/eas"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "ehmi-eas@sundhedsdatastyrelsen.dk"
* description = "GET [EAS-base]/Organization?_profile=http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization&Patient?Identifier.value=[Patient_Identifier]&system=urn:oid:1.2.208.176.1.2
This search will produce a EasMessagingOrganization as a response
EAS will in order to produce this response run through a sequence of calls from"
* code = #getSikrGrp1_getReceivingOrganizationByPatientId
* comment = "eas_SikrGrp1_getReceivingOrganizationByPatientId return EasMessagingOrganization"
* resource = #CapabilityStatement
* system = true
* type = false
* instance = true
* inputProfile = "http://medcomehmi.dk/ig/eas/StructureDefinition/EasCorePatient"
* outputProfile = "http://medcomehmi.dk/ig/eas/StructureDefinition/EasMessagingOrganization"
* parameter[0].name = #target
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "submitting the Patients Id would evoke this search operation"
* parameter[=].type = #Patient
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The response is a EasMessagingOrganization corresponding to the General Practitioner of the Patient"
* parameter[=].type = #Organization
/**/