Instance: GetReceivingOrganizationByPatientId
InstanceOf: OperationDefinition
Description: """
Look up messaging organizations based on patient id (CPR) and message types.
"""
Usage: #definition
* url = "http://medcomehmi.dk/ig/eas/OperationDefinition/GetReceivingOrganizationByPatientId"
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
* parameter[+].name = #organization
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Result organizations"
* parameter[=].type = #Organization
* parameter[=].targetProfile[+] = Canonical(http://medcomehmi.dk/ig/eas/StructureDefinition/eas-messaging-organization)

Alias: EasCorePatient = http://medcomehmi.dk/ig/eas/StructureDefinition/EasCorePatient

Instance: EX-GetReceivingOrganizationByPatientId-Request
InstanceOf: Parameters
Usage: #example
Title: "Request for $getReceivingOrganizationByPatientId with messageTypes (POST)"
Description: "Invoke with POST [base]/Organization/$getReceivingOrganizationByPatientId"

* parameter[0].name = "easCorePatient"
* parameter[=].resource.resourceType = "Patient"
* parameter[=].resource.meta.profile = "http://medcomehmi.dk/ig/eas/StructureDefinition/EasCorePatient"
* parameter[=].resource.identifier.value = "0108589995"
* parameter[+].name = "postalCode"
* parameter[=].valueString = "2100"
* parameter[+].name = "postalCode"
* parameter[=].valueString = "2300"
* parameter[+].name = "messageType"
* parameter[=].valueString = "XDIS91"
* parameter[+].name = "messageType"
* parameter[=].valueString = "XDIS92"