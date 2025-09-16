Instance: GetReceivingOrganizationBySORId
InstanceOf: OperationDefinition
Description: """
Look up SOR organizations based on SOR identifier and message types.
"""
Usage: #definition
* url = "http://medcomehmi.dk/ig/eas/OperationDefinition/GetReceivingOrganizationBySORId"
* id = "GetReceivingOrganizationBySORId"
* name = "GetReceivingOrganizationBySORId"
* purpose = "Example request: <a href=\"Parameters-EX-GetReceivingOrganizationBySORId-Request.html\">EX-GetReceivingOrganizationBySORId-Request</a>"
* status = #active
* kind = #operation
* affectsState = false
* code = #getReceivingOrganizationBySORId
* resource = #Organization
* system = false
* type = true
* instance = false
* parameter[0].name = #sorId
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "SOR identifier"
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
* parameter[=].targetProfile[+] = Canonical(http://medcomehmi.dk/ig/eas/StructureDefinition/eas-sor-organization)

Instance: EX-GetReceivingOrganizationBySORId-Request
InstanceOf: Parameters
Usage: #example
Title: "Request for $getReceivingOrganizationBySORId (POST)"
Description: "Invoke with POST [base]/Organization/$getReceivingOrganizationBySORId"

* parameter[0].name = "sorId"
* parameter[0].valueString = "12345678"
* parameter[+].name = "messageType"
* parameter[=].valueString = "XDIS91"
* parameter[+].name = "messageType"
* parameter[=].valueString = "XDIS92"
