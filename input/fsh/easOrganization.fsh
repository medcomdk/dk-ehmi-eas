Profile: EasSorOrganization
Parent: DkCoreOrganization
Id: eas-sor-organization
Title: "EAS SOR Organization"
Description: "An extension of the DkCoreOrganization profile."
* identifier[EAN-ID] 0..0

Profile: EasMessagingOrganization
Parent: EerMessagingOrganization
Id: eas-messaging-organization
Title: "EAS Messaging Organization"
Description: "An extension of the EerMessagingOrganization profile with a required endpoint element."
//* eua-system 0..0
//* msh-system 0..0
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.dk/fhir/core/StructureDefinition/dk-core-organization|3.3.0"
* name MS 
* type[SOR-Hierarchy] MS SU 
* type[SOR-UnitType] MS SU
* type[EerMessagingOrganizationType] 0..0
* type[EerSorOrganizationType] 0..0
* address MS 
* address.line MS SU 
* address.city MS SU 
* address.postalCode MS SU 
* endpoint MS
//* extension contains eer-dk-eua-system-extension named eua-system 0..0  
//* extension contains eer-dk-msh-system-extension named msh-system 0..0  

Profile: EasEndpoint
Parent: EerEndpoint
Id: eas-endpoint
Title: "EAS Endpoint - General"
Description: "An extension of the EerEndpoint profile with a required endpoint element."

Profile: EasEndpointMessaging
Parent: EerEndpointMessaging
Id: eas.dk.endpoint.messaging
Title: "EAS Endpoint - EasEndpointMessaging"
Description: "An extension of the EerEndpoint profile with a required endpoint element."

Profile: EasEndpointMessagingEdelivery
Parent: EerEndpointMessagingEdelivery
Id: eas.dk.endpoint.messaging.edelivery
Title: "EAS Endpoint - EasEndpointMessagingEdelivery"
Description: "An extension of the EerEndpoint profile with a required endpoint element."

/*
Profile: EasMedComCoreOrganization
Parent: MedComCoreOrganization
Id: eas-medcom-core-organization
Title: "EAS MedCom Core Organization"
Description: "An extension of the MedComCoreOrganization profile."
* identifier[EAN-ID] 0..0
*/
