Instance: MC-Org-Novax-SORID-672261000016008
InstanceOf: MedComCoreOrganization
Description: "MedComCoreOrganization Novax-lægehus SORID-672261000016008"
* id = "MC.SOR.IO-Novax.672261000016008"
* identifier[SOR-ID].value = "672261000016008"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægerne Skt. Clemens Bro I/S"
* type.coding = $EerMessagingOrganizationType#IO

Instance: MC-Org-Novax-SORID-672271000016003
InstanceOf: MedComCoreOrganization
Description: "MedComCoreOrganization Novax-lægehus SORID-672271000016003"
* id = "MC.SOR.HI-Novax.672271000016003"
* identifier[SOR-ID].value = "672271000016003"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægerne Skt. Clemens Bro"
* type.coding = $EerMessagingOrganizationType#HI
* partOf = Reference(Organization/MC.SOR.IO-Novax.672261000016008)

Instance: MC-Org-Novax-SORID-672291000016004
InstanceOf: MedComCoreOrganization
Description: "MedComCoreOrganization Novax-læge SORID-672291000016004"
* id = "MC.SOR.OU-Novax.672291000016004"
* identifier[SOR-ID].value = "672291000016004"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[Ydernummer].value = "057584"
* identifier[Ydernummer].system = "urn:oid:1.2.208.176.1.4"
* name = "Andreas Rosborg Kristensen"
* type.coding = $EerMessagingOrganizationType#OU
* partOf = Reference(Organization/MC.SOR.HI-Novax.672271000016003)

Instance: MC-Org-Novax-SORID-672291000016001
InstanceOf: MedComCoreOrganization
Description: "MedComCoreOrganization Novax-læge SORID-672291000016001"
* id = "MC.SOR.OU-Novax.672291000016001"
* identifier[SOR-ID].value = "672291000016001"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Charlotte Melchior Bendtsen"
* type.coding = $EerMessagingOrganizationType#OU
* partOf = Reference(Organization/MC.SOR.HI-Novax.672271000016003)

