// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: EasCorePatient
Parent: DkCorePatient
// MedComCorePatient
Description: "EasCorePatient version of DkCorePatient"
//* Identifier 1..1


Instance: EasCorePatient-instance
InstanceOf: EasCorePatient
* identifier.value = "0108589995"
* generalPractitioner = Reference(Organization/EER.SOR.OU-Novax.672281000016001)
