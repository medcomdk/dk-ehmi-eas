/*
Profile: SikrGrp1_1_getReceivingOrganizationByPatId
Title: "MedCom Messaging Organization Query"
Status: active
Kind: operation
Code: query
Description: "Custom operation to query MedCom Messaging Organizations"

Parameter: identifier
Use: in
Min: 0
Max: "1"
Type: string
Documentation: "The identifier of the MedCom Messaging Organization to search for."

Parameter: name
Use: in
Min: 0
Max: "1"
Type: string
Documentation: "The name of the MedCom Messaging Organization to search for."

Parameter: active
Use: in
Min: 0
Max: "1"
Type: boolean
Documentation: "Whether the MedCom Messaging Organization is active."

Resource: EasMessagingOrganization
*/