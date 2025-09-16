Instance: MyOperationDef
InstanceOf: OperationDefinition
Title: "My Operation Definition"
Description: "A minimal example operation definition with input/output parameters"

Usage: #definition
* id = "my-operation"
* url = "http://example.org/fhir/OperationDefinition/my-operation"
* version = "1.0.0"
* name = "MyOperation"
* status = #active
* kind = #operation
* date = "2025-09-16T12:00:00+00:00"
* publisher = "Example Publisher"
* code = #my-operation
* system = true
* type = false
* instance = false

* parameter[+].name = #inputParam
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "A sample input parameter"

* parameter[+].name = #outputParam
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "A sample output parameter"
