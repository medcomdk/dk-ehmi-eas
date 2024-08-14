OperationDefinition: exampleOperation
Id: example-operation
Title: "Example Operation"
Description: "An example operation that takes an EasDkCoreOrganization as input and returns an easMedComMessagingOrganization as output."
* status = #draft
* kind = #operation
* name = "exampleOperation"
* code = "exampleOperation"
* system = false
* type = true
* instance = false
* inputProfile = "http://medcomehmi.dk/ig/dk-ehmi-eas/StructureDefinition/EasDkCoreOrganization"
* outputProfile = "http://medcomehmi.dk/ig/dk-ehmi-eas/StructureDefinition/EasMedComMessagingOrganization"

* parameter[0].name = "inputParameter"
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].type = "Reference"
* parameter[0].profile = "http://medcomehmi.dk/ig/dk-ehmi-eas/StructureDefinition/EasDkCoreOrganization"

* parameter[1].name = "outputParameter"
* parameter[1].use = #out
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].type = "Reference"
* parameter[1].profile = "http://medcomehmi.dk/ig/dk-ehmi-eas/StructureDefinition/EasMedComMessagingOrganization"
