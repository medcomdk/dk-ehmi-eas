/*Instance: convertToEasMedComMessagingOrganization
InstanceOf: OperationDefinition
//Id: convert-to-eas-medcom-messaging-organization
Title: "Convert to EAS MedCom Messaging Organization"
Description: "Operation to convert an EAS DK Core Organization to an EAS MedCom Messaging Organization."
Usage: #definition
* status = #draft
* kind = #query
* date = "2024-08-14"
* publisher = "Example Publisher"
* contact[0].name = "Example Contact"
* code = convert
* system = false
* type = true
* instance = false
* parameter[0].name = input
* parameter[0].use = in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].type = Organization
* parameter[0].profile = Canonical(EasDkCoreOrganization)
* parameter[1].name = output
* parameter[1].use = out
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].type = Organization
* parameter[1].profile = Canonical(EasMedComMessagingOrganization)

*/