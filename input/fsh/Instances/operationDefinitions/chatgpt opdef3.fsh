/*
Instance: convertToEasMedComMessagingOrganization
InstanceOf: OperationDefinition
Title: "EAS MedCom Operation Definition"
Description: "Operation Definition where the input parameter is an EasDkCoreOrganization profile and the output parameter is an easMedComMessagingOrganization profile."
Usage: #definition

* url = "http://example.org/OperationDefinition/eas-medcom-operation"
* version = "1.0.0"
* name = "EasMedComOperation"
* status = #active
* kind = #operation
* experimental = false
* date = "2024-08-13"
* publisher = "Example Publisher"
* description = "This operation accepts an EasDkCoreOrganization profile as input and returns an easMedComMessagingOrganization profile as output."
* code = "transform"
* system = false
* type = true
* instance = true

* parameter[0].name = "input"
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].type = "EasDkCoreOrganization"
* parameter[0].documentation = "The input parameter which is an EasDkCoreOrganization profile."

* parameter[1].name = "output"
* parameter[1].use = #out
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].type = "easMedComMessagingOrganization"
* parameter[1].documentation = "The output parameter which is an easMedComMessagingOrganization profile."
*/