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
//* endpoint 1..* MS

Profile: EasEndpoint
Parent: EerEndpoint
Id: eas-endpoint
Title: "EAS Endpoint"
Description: "An extension of the EerEndpoint profile with a required endpoint element."

/*
Profile: EasMedComCoreOrganization
Parent: MedComCoreOrganization
Id: eas-medcom-core-organization
Title: "EAS MedCom Core Organization"
Description: "An extension of the MedComCoreOrganization profile."
* identifier[EAN-ID] 0..0
*/
