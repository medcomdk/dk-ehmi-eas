Instance: GetReceivingOrganizationByGPId
InstanceOf: OperationDefinition
Description: """
Look up messaging organizations and referenced endpoints based on general practitioner id (ydernr) and message types.
Response resources will be returned in a Bundle.<br/>
Organizations conform to [EAS Messaging Organization](StructureDefinition-eas-messaging-organization.html)<br/>
Endpoints conform to [EAS Endpoint - General](StructureDefinition-eas-endpoint.html)
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

Instance: EX-GetReceivingOrganizationByGPId-Request
InstanceOf: Parameters
Usage: #example
Title: "Request for $getReceivingOrganizationByGPId (POST)"
Description: "Invoke with POST [base]/Organization/$getReceivingOrganizationByGPId"

* parameter[0].name = "gpId"
* parameter[0].valueString = "077704"
* parameter[+].name = "messageType"
* parameter[=].valueString = "urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.1"
* parameter[+].name = "messageType"
* parameter[=].valueString = "urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0"
