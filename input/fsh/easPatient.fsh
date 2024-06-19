// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: EasDkCorePatient
Parent: DkCorePatient
// MedComCorePatient
Description: "An example profile of the Patient resource."
/* identifier contains 
  maskedCPR 1..1
* identifier[maskedCPR] only EhmiMaskedCPR
  * ^short = "[DA] cpr-nummer, som det fremgår af CPR registeret, men maskeret med uuid ´v5, så det optræder som en uuid"
//* Identifier[maskedCPR].value obeys uuid
* identifier[maskedCPR].use = #secondary
* identifier[maskedCPR].system = "urn:oid:1.2.208.176.1.200"
//* identifier[maskedCPR].system = "urn:oid:1.2.208.176.1.2"
* name 1..* MS
*/