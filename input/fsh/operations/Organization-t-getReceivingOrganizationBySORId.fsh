Instance: GetReceivingOrganizationBySORId
InstanceOf: OperationDefinition
Description: """
Look up SOR organizations and referenced endpoints based on SOR identifier and message types.
Response resources will be returned in a Bundle.<br/>
Organizations conform to [EAS Messaging Organization](StructureDefinition-eas-messaging-organization.html)<br/>
Endpoints conform to [EAS Endpoint - General](StructureDefinition-eas-endpoint.html)
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

Instance: EX-GetReceivingOrganizationBySORId-Request
InstanceOf: Parameters
Usage: #example
Title: "Request for $getReceivingOrganizationBySORId (POST)"
Description: "Invoke with POST [base]/Organization/$getReceivingOrganizationBySORId"

* parameter[0].name = "sorId"
* parameter[0].valueString = "1254731000016003"
* parameter[+].name = "messageType"
* parameter[=].valueString = "urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.1"
* parameter[+].name = "messageType"
* parameter[=].valueString = "urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0"
