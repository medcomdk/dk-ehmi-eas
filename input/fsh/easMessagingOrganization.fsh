Profile: EasMessagingOrganization
Parent: EerMessagingOrganization
Id: eas-messaging-organization
Title: "EAS Messaging Organization"
Description: "An extension of the EerMessagingOrganization profile with a required endpoint element."
* name MS 
* type[SOR-Hierarchy] MS SU 
* type[SOR-UnitType] MS SU
* type[EerMessagingOrganizationType] 0..0
* type[EerSorOrganizationType] 0..0
* address.line MS SU 
* address.city MS SU 
* address.postalCode MS SU 
* endpoint 1..* MS