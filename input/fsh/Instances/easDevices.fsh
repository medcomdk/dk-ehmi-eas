Instance: EerDeviceAP-MultiMedAP
InstanceOf: EerDeviceAP
Description: "EerDeviceAP-MultiMedAP"
* id = "EerDeviceAP-MultiMedAP"
* identifier.value = "EerDeviceAP-MultiMedAP"
//* definition = Reference("http://medcomehmi.dk/ig/eer/StructureDefinition/EerDeviceDefinitionAP")
* definition = Reference(DeviceDefinition/EerDeviceDefinition4AP)
* status = #active
* deviceName.name = "MultiMedAP"
* deviceName.type = #manufacturer-name
* manufacturer = "MultiMed"

Instance: EerDeviceAP-KvalitetsItAP
InstanceOf: EerDeviceAP
Description: "EerDeviceAP-KvalitetsItAP"
* id = "EerDeviceAP-KvalitetsItAP"
* identifier.value = "EerDeviceAP-KvalitetsItAP"
* definition = Reference(DeviceDefinition/EerDeviceDefinition4AP)
* status = #active
* deviceName.name = "BizKitAP"
* deviceName.type = #manufacturer-name
* manufacturer = "BizKit"

Instance: EerDeviceMSH-MultiMedMSH
InstanceOf: EerDeviceMSH
Description: "EerDeviceMSH-MultiMedMSH"
* identifier.value = "EerDeviceMSH-MultiMedMSH"
* definition = Reference(DeviceDefinition/EerDeviceDefinition4MSH)
* status = #active
* deviceName.name = "MultiMedMSH"
* deviceName.type = #manufacturer-name
* manufacturer = "MultiMed"

Instance: EerDeviceMSH-NovaxEUA
InstanceOf: EerDeviceEUA
Description: "EerDeviceEUA-NovaxEUA"
* identifier.value = "EerDeviceEUA-NovaxEUA"
* definition = Reference(DeviceDefinition/EerDeviceDefinition4EUA)
* status = #active
* deviceName.name = "NovaxEUA"
* deviceName.type = #manufacturer-name
* manufacturer = "Novax"

Instance: EerDeviceMSH-SystematicMSH
InstanceOf: EerDeviceMSH
Description: "EerDeviceMSH-SystematicMSH"
* identifier.value = "EerDeviceMSH-SystematicMSH"
* definition = Reference(DeviceDefinition/EerDeviceDefinition4MSH)
* status = #active
* deviceName.name = "SystematicMSH"
* deviceName.type = #manufacturer-name
* manufacturer = "Systematic"

Instance: EerDeviceMSH-SystematicCura
InstanceOf: EerDeviceEUA
Description: "EerDeviceEUA-SystematicCura"
* identifier.value = "EerDeviceEUA-SystematicCura"
//* definition = Reference("http://medcomehmi.dk/ig/eer/StructureDefinition/EerDeviceDefinitionEUA")
* definition = Reference(DeviceDefinition/EerDeviceDefinition4EUA)
* status = #active
* deviceName.name = "Systematic Cura"
* deviceName.type = #manufacturer-name
* manufacturer = "Systematic"
