/*
Instance: convertToEasMessagingOrganization
InstanceOf: OperationDefinition
Title: "EAS MedCom Operation Definition"
Description: "Operation Definition where the input parameter is an EasSorOrganization profile and the output parameter is an easEasMessagingOrganization profile."
Usage: #definition

* url = "http://example.org/OperationDefinition/eas-medcom-operation"
* version = "1.0.0"
* name = "EasMedComOperation"
* status = #active
* kind = #operation
* experimental = false
* date = "2024-08-13"
* publisher = "Example Publisher"
* description = "This operation accepts an EasSorOrganization profile as input and returns an easEasMessagingOrganization profile as output."
* code = "transform"
* system = false
* type = true
* instance = true

* parameter[0].name = "input"
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].type = "EasSorOrganization"
* parameter[0].documentation = "The input parameter which is an EasSorOrganization profile."

* parameter[1].name = "output"
* parameter[1].use = #out
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].type = "easMedComMessagingOrganization"
* parameter[1].documentation = "The output parameter which is an easEasMessagingOrganization profile."
*/