Instance: GetListOfGpByPostalCode
InstanceOf: OperationDefinition
Description: """
Look up messaging organizations based on postal codes and message types.
"""
Usage: #definition
* url = "http://medcomehmi.dk/ig/eas/OperationDefinition/Organization-t-getListOfGpByPostalCode"
* name = "GetListOfGpByPostalCode"
* purpose = "Example request: <a href=\"Parameters-EX-GetListOfGpByPostalCode-Request.html\">EX-GetListOfGpByPostalCode-Request</a>"
* status = #active
* kind = #operation
* affectsState = false
* code = #getListOfGpByPostalCode
* resource = #Organization
* system = false
* type = true
* instance = false
* parameter[0].name = #postalCode
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Postal codes"
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

Instance: EX-GetListOfGpByPostalCode-Request
InstanceOf: Parameters
Usage: #example
Title: "Request for $getListOfGpByPostalCode (POST)"
Description: "Invoke with POST [base]/Organization/$getListOfGpByPostalCode"

* parameter[0].name = "postalCode"
* parameter[0].valueString = "2100"
* parameter[+].name = "postalCode"
* parameter[=].valueString = "2300"
* parameter[+].name = "messageType"
* parameter[=].valueString = "XDIS91"
* parameter[+].name = "messageType"
* parameter[=].valueString = "XDIS92"
