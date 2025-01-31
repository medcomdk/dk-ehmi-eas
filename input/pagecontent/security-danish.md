### 7.2	EHMI Addressing Service (EAS)

Igennem Sundhedsadresseringsservicen (EAS) kan afsendersystemer fremsøge potentielle meddelelsesmodtagere ud fra forskellige søgekriterier.

EAS indeholder personhenførbare oplysninger i form af borgernes egen læge (som kan slås op på baggrund af en borgers CPR nummer), men indeholder ingen personfølsomme data. Det er derfor blevet vurderet, at adgang til EAS kan foregå på systemniveau og ikke kræver, at den autentificerede identitet af den menneskelige bruger bag kaldet overføres til EAS.

### 7.2.1	EAS usecases

EAS er ikke selv databærende, men aggregerer adresseoplysninger ud fra en række forskellige autoritative kilder (herunder postkasseregisteret EER). EAS udstiller således alene en snitflade til at kunne foretage søgninger og opslag.

### 7.2.2	Indrullering/whitelisting af systemklienter i EAS (til søgning og opslag)

Afsendersystemer indrulleres som systemklienter med de i afsnit 3.3 Indrullering af klienter beskrevne elementer, hvor der angives følgende som scope element:
 
Metadata for en EAS systemklient

Der skal ikke angives yderligere metadata end de i afsnit 3.3.1 Metadata for klienter beskrevne.

Eksempel metadata dokument for en EAS systemklient:
 
### 7.2.3	Kald til Token Endpoint

For at få udstedt et access token til at kunne tilgå EAS angives følgende scopes:

scope 	Beskrivelse
EAS	En angivelse af det er for EAS, at klienten ønsker et access token.
system/Organization.rs	En angivelse af at tokenet skal kunne læse/fremsøge sundhedsadresserings ressourcer (som er profileringer af FHIR’s Organization ressource).

Valideringer af kaldet hos Authorization Server
Kaldet til Token Endpoint valideres hos Authorization Server, som validerer klientens TLS-klientcertifikat og tjekker, at klienten er indrulleret/whitelistet med de angivne scopes. 

### 7.2.4	Kald til EAS

Kald til EAS foretages som beskrevet i den generelle sikkerhedsmodel som REST-kald over tovejs TLS, med access tokenet (som er sender-constrained) i en HTTP header.

EAS adgangskontrol
Sundhedsadresseringsservicen tjekker, at access tokenet er gyldigt og validerer ’sender-contrained’ egenskaben, det vil sige validerer, at det af klientens anvendte TLS-klientcertifikat matcher certifikatet som blev indlejret i access tokenet. 
Servicen validerer desuden, at tokenet er udstedt til EAS som aftager af tokenet og indeholder de nødvendige scopes til at klienten må foretage opslag i EAS.

