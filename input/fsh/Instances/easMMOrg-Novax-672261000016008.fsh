Instance: MM-Org-Novax-SORID-672261000016008
InstanceOf: EasMessagingOrganization
Description: "EAS MessagingOrganization Novax-lægehus SORID-672261000016008"
* id = "MM.SOR.IO-Novax.672261000016008"
* identifier[SOR-ID].value = "672261000016008"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
//* identifier[EAN-ID].value = "5790002288289"
//* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* name = "Lægerne Skt. Clemens Bro I/S"
* type.coding.code = #550891000005100
* type.coding.system = "http://snomed.info/sct"
* endpoint[+] = Reference(Endpoint/EER.EndPoint-Novax.GLNID-5790002288289)

Instance: MM-Org-Novax-SORID-672271000016003
InstanceOf: EasMessagingOrganization
Description: "EAS MessagingOrganization Novax-lægehus SORID-672271000016003"
* id = "MM.SOR.HI-Novax.672271000016003"
* identifier[SOR-ID].value = "672271000016003"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
//* identifier[EAN-ID].value = "5790002288289"
//* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* name = "Lægerne Skt. Clemens Bro"
* type.coding.code = #394761003
* type.coding.system = "http://snomed.info/sct"
//* partOf = Reference(Organization/MM.SOR.IO-Novax.672261000016008)
* endpoint[+] = Reference(Endpoint/EER.EndPoint-Novax.GLNID-5790002288289)

Instance: MM-Org-Novax-SORID-672291000016004
InstanceOf: EasMessagingOrganization
Description: "EAS MessagingOrganization Novax-læge SORID-672291000016004"
* id = "MM.SOR.OU-Novax.672291000016004"
* identifier[SOR-ID].value = "672291000016004"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
//* identifier[EAN-ID].value = "5790002288289"
//* identifier[EAN-ID].system = "https://www.gs1.org/gln"
//* identifier[Ydernummer].value = "057584"
//* identifier[Ydernummer].system = "urn:oid:1.2.208.176.1.4"
* name = "Andreas Rosborg Kristensen"
* type.coding.code = #255203001
* type.coding.system = "http://snomed.info/sct"
//* partOf = Reference(Organization/MM.SOR.HI-Novax.672271000016003)
* endpoint[+] = Reference(Endpoint/EER.EndPoint-Novax.GLNID-5790002288289)

Instance: MM-Org-Novax-SORID-672291000016001
InstanceOf: EasMessagingOrganization
Description: "EAS MessagingOrganization Novax-læge SORID-672291000016001"
* id = "MM.SOR.OU-Novax.672291000016001"
* identifier[SOR-ID].value = "672291000016001"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
//* identifier[EAN-ID].value = "5790002288289"
//* identifier[EAN-ID].system = "https://www.gs1.org/gln"
//* identifier[Ydernummer].value = "057584"
//* identifier[Ydernummer].system = "urn:oid:1.2.208.176.1.4"
* name = "Charlotte Melchior Bendtsen"
* type.coding.code = #255203001
* type.coding.system = "http://snomed.info/sct"
//* partOf = Reference(Organization/MM.SOR.HI-Novax.672271000016003)
* endpoint[+] = Reference(Endpoint/EER.EndPoint-Novax.GLNID-5790002288289)
