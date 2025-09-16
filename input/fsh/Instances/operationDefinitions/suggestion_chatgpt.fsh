Profile: MyOperationDef
Parent: OperationDefinition
Id: my-operation
Title: "My Operation Definition"
Description: "A minimal example operation definition"
* url = "http://example.org/fhir/OperationDefinition/my-operation"
* version = "1.0.0"
* name = "MyOperation"
* status = #active
* kind = #operation
* date = "2025-09-16T12:00:00+00:00"
* publisher = "Example Publisher"
* code = "my-operation"
* system = true
* type = false
* instance = false

* parameter[name = "inputParam", use = #in] 0..1 string "A sample input parameter"
* parameter[name = "outputParam", use = #out] 0..1 string "A sample output parameter"
