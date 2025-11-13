Instance: GetListOfGpByPostalCode
InstanceOf: OperationDefinition
Description: """
Look up messaging organizations and referenced endpoints based on postal codes.
Response resources will be returned in a Bundle.<br/>
Organizations conform to [EAS Messaging Organization](StructureDefinition-eas-messaging-organization.html)<br/>
Endpoints conform to [EAS Endpoint - General](StructureDefinition-eas-endpoint.html)
"""
Usage: #definition
* url = "http://medcomehmi.dk/ig/eas/OperationDefinition/GetListOfGpByPostalCode"
* id = "GetListOfGpByPostalCode"
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

Instance: EX-GetListOfGpByPostalCode-Request
InstanceOf: Parameters
Usage: #example
Title: "Request for $getListOfGpByPostalCode (POST)"
Description: "Invoke with POST [base]/Organization/$getListOfGpByPostalCode"

* parameter[0].name = "postalCode"
* parameter[0].valueString = "2100"
* parameter[+].name = "postalCode"
* parameter[=].valueString = "2300"
