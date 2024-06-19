Instance: eas.SikrGrp1-getGPReceiverDataByPatId
InstanceOf: OperationDefinition
Description: "EAS SikrGrp1 getGPReceiverDataByPatId"
Usage: #definition
* url = "http://easbase.eas.dk/OperationDefinition/eas_SikrGrp1_getGPReceiverDataByPatId"
* version = "0.1.0"
* name = "EAS SikrGrp1 getGPReceiverDataByPatId"
* title = "EAS SikrGrp1 getGPReceiverDataByPatId"
* status = #draft
* kind = #query
* date = "2024-06-01T00:00:00+01:00"
* publisher = "EHMI EAS"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://sundhedsdatastyrelsen.dk/ehmi/eas"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "ehmi-eas@sundhedsdatastyrelsen.dk"
* description = "GET [EAS-base]/Organization?_profile=http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization&Patient?Identifier.value=[Patient_Identifier]&system=urn:oid:1.2.208.176.1.2
This search will produce a MedComMessagingOrganization as a response
EAS will in order to produce this response run through a sequence of calls from"
* code = #getSikrGrp1_getGPReceiverDataByPatId
* comment = "eas_SikrGrp1_getGPReceiverDataByPatId return MedComMessagingOrganization"
* resource = #CapabilityStatement
* system = true
* type = false
* instance = true
* inputProfile = "http://hl7.dk/fhir/core/StructureDefinition/dk-core-patient"
* outputProfile = "http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization"
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
* parameter[=].documentation = "The response is a MedComMessagingOrganization corresponding to the GP of the Patient"
* parameter[=].type = #Organization