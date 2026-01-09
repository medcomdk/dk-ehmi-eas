Instance: GetReceivingOrganizationByPatientId
InstanceOf: OperationDefinition
Description: """
Look up messaging organizations and referenced endpoints based on patient id (CPR) and message types.
Response resources will be returned in a Bundle.<br/>
Organizations conform to [EAS Messaging Organization](StructureDefinition-eas-messaging-organization.html)<br/>
Endpoints conform to [EAS Endpoint - General](StructureDefinition-eas-endpoint.html)
"""
Usage: #definition
* url = "http://medcomehmi.dk/ig/eas/OperationDefinition/GetReceivingOrganizationByPatientId"
* id = "GetReceivingOrganizationByPatientId"
* name = "GetReceivingOrganizationByPatientId"
* purpose = "Example request: <a href=\"Parameters-EX-GetReceivingOrganizationByPatientId-Request.html\">EX-GetReceivingOrganizationByPatientId-Request</a>"
* status = #active
* kind = #operation
* affectsState = false
* code = #getReceivingOrganizationByPatientId
* resource = #Organization
* system = false
* type = true
* instance = false
* parameter[0].name = #easCorePatient
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "EAS core patient with CPR identifier"
* parameter[=].type = #Patient
* parameter[+].name = #messageType
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Message types"
* parameter[=].type = #string

Alias: EasCorePatient = http://medcomehmi.dk/ig/eas/StructureDefinition/EasCorePatient

Instance: EX-GetReceivingOrganizationByPatientId-Request
InstanceOf: Parameters
Usage: #example
Title: "Request for $getReceivingOrganizationByPatientId with messageTypes (POST)"
Description: "Invoke with POST [base]/Organization/$getReceivingOrganizationByPatientId"

* parameter[0].name = "easCorePatient"
* parameter[=].resource.resourceType = "Patient"
* parameter[=].resource.meta.profile = "http://medcomehmi.dk/ig/eas/StructureDefinition/EasCorePatient"
* parameter[=].resource.identifier.value = "1808764667"
* parameter[+].name = "messageType"
* parameter[=].valueString = "urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.1"
* parameter[+].name = "messageType"
* parameter[=].valueString = "urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0"
