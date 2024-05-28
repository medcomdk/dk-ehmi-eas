/*
Instance: easStructureMapEer2MMOrganization
InstanceOf: StructureMap 
Title: "easStructureMapEer2MMOrganization"
Description: "StructureMap between MedComs FHIR message names and SOREDI message names"
* name = "easStructureMapEer2MMOrganization"
* version  =  "1.0.0"
* status  =  #active
* date = "2023-02-27"
* url = "www.medcom.dk"
* structure
*   url = canonical(http://medcomfhir.dk/ig/core/StructureDefinition/medcom-core-organization)
*   mode = #source
* structure
*   url = canonical(http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization)
*   mode = #target
*/

/** sourceUri = Canonical(MedComMessagingMessageTypes)
* targetUri = Canonical(MedComMessagingSorEdiValues)
* group.source = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* group.target = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-sorEdiSystem"
* group.element[+].code = #care-communication-message
* group.element[=].display = "Care Communication Message"
* group.element[=].target.code = #FDIS91
* group.element[=].target.display = "Care Communication Message (Korrepondance meddelelse)"
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #hospital-notification-message
* group.element[=].display = "Hospital Notification Message"
* group.element[=].target.code = #FDIS20
* group.element[=].target.display = "Hospital Notification Message (Advis om Sygehusophold)"
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #acknowledgement-message
* group.element[=].display = "Acknowledgement Message"
* group.element[=].target.code = #FCTL
* group.element[=].target.display = "Acknowledgement Message (Kvittering)"
* group.element[=].target.equivalence = #equivalent
*/