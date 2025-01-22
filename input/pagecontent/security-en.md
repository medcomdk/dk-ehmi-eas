## EHMI Addressing Service (EAS)

Through the EHMI Addressing Service (EAS), sender systems can search for potential message recipients based on various search criteria.

In communication with EAS, *personally identifiable* information may be included, such as a citizen’s general practitioner (which can be looked up using the citizen’s CPR number). However, no *sensitive personal data* is involved. Consequently, it has been decided that access to EAS can occur at the system level and does not require the authenticated identity of the human user behind the call to be transmitted to EAS.

### EAS usecases

EAS does not store data itself but aggregates address information from various authoritative sources (including the EHMI Endpoint Register, EER). Thus, EAS solely provides an interface for performing searches and lookups.

### Enrollment/Whitelisting of System Clients in EAS (for Search and Lookup)

Sender systems are enrolled as system clients using the elements described in section 3.3 (Client Enrollment) __*of the general ‘Sikkerhedsmodel’*__, where the following scope element is specified:

<table border="1">
    <tr>
        <td>EAS system/Organization.rs</td>
    </tr>
</table>

**Metadata for an EAS System Client**

No additional metadata needs to be specified beyond what is described in section 3.3.1 (Metadata for Clients) __*of the general ‘Sikkerhedsmodel’*__.

Example metadata document for an EAS system client:

```
{
  "token_endpoint_auth_method": "tls_client_auth",
  "grant_types": [
    "client_credentials"
  ],
  "client_name": "Aarhus Kommunes EOJ",
  "scope": "EAS system/Organization.rs",
  "contacts": [
    "eoj@aarhus-kommune.dk",
  ],
  "tls_client_auth_subject_dn": "subject=CN=EOJ leverandør XYZ’s systemcertifikat, serialNumber=UI:DK-O:G: d6eef4ae-5c37-4206-be4c-5fac2cbca29d, O=EOJ leverandør XYZ, organizationIdentifier=NTRDK-56781234, C=DK"
}
```

Calls to the Token Endpoint

To obtain an access token for accessing EAS, the following scopes are specified:

<table border="1">
    <tr>
        <th>Scope</th>
        <th>Description</th>
    </tr>
    <tr>
        <td>EAS</td>
        <td>Indicates that the client is requesting an access token for EAS.</td>
    </tr>
    <tr>
        <td>system/Organization.rs</td>
        <td>Specifies that the token should enable reading/searching for health addressing resources (profiled FHIR Organization resources).</td>
    </tr>
</table>

**Validation of Calls at the Authorization Server**

The call to the Token Endpoint is validated by the Authorization Server, which verifies the client’s TLS client certificate and checks that the client is enrolled/whitelisted with the specified scopes.

### Calls to EAS

Calls to EAS are made as described in the general security model, using REST calls over mutual TLS (two-way TLS), with the access token (which is sender-constrained) included in an HTTP header.

Below is an example of a system client calling an EAS operation that returns the general practitioner (‘egen læge’) for a patient (who is in health insurance group (sygesikringsgruppe) 1):

```
POST /base/$getSikrGrp1_getReceivingOrganizationByPatientId HTTP/1.1
Host: eas.sundhedsdatastyrlsen.dk
Accept: application/fhir+json
Content-Type: application/fhir+json
Content-Length: 9191
Authorization: Bearer eyJhb ... Dhi6g

{
  "parameter": [
    {
      "name": "target",
      "resource": {
        "resourceType": "Patient",
        // Patient resource
      }
    }
  ]
}
```

**EAS Access Control**

The EHMI Addressing Service (EAS) verifies that the access token is valid and validates the “sender-constrained” property. This means it checks that the TLS client certificate used by the client matches the certificate embedded in the access token.

Additionally, the service validates that the token:

-   Is issued for EAS as the recipient of the token.
-   Contains the necessary scopes to allow the client to perform lookups in EAS.
