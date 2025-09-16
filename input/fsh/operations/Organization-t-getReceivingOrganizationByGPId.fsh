Instance: GetReceivingOrganizationByGPId
InstanceOf: OperationDefinition
Description: """
Look up messaging organizations based on general practitioner id (ydernr) and message types.
"""
Usage: #definition
* url = "http://medcomehmi.dk/ig/eas/OperationDefinition/GetReceivingOrganizationByGPId"
* id = "GetReceivingOrganizationByGPId"
* name = "GetReceivingOrganizationByGPId"
* purpose = "Example request: <a href=\"Parameters-EX-GetReceivingOrganizationByGPId-Request.html\">EX-GetReceivingOrganizationByGPId-Request</a>"
* status = #active
* kind = #operation
* affectsState = false
* code = #getReceivingOrganizationByGPId
* resource = #Organization
* system = false
* type = true
* instance = false
* parameter[0].name = #gpId
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "General practitioner id (ydernr)"
* parameter[=].type = #string
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

Instance: EX-GetReceivingOrganizationByGPId-Request
InstanceOf: Parameters
Usage: #example
Title: "Request for $getReceivingOrganizationByGPId (POST)"
Description: "Invoke with POST [base]/Organization/$getReceivingOrganizationByGPId"

* parameter[0].name = "gpId"
* parameter[0].valueString = "123456"
* parameter[+].name = "messageType"
* parameter[=].valueString = "XDIS91"
* parameter[+].name = "messageType"
* parameter[=].valueString = "XDIS92"
