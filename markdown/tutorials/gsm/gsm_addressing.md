# GSM - Addresses and Identifiers
GSM treats the users and the equipment in different ways. Phone numbers, subscribers, and equipment identifiers are some of the known ones. There are many other identifiers that have been well-defined, which are required for the subscriber’s mobility management and for addressing the remaining network elements. Vital addresses and identifiers that are used in GSM are addressed below.

## International Mobile Station Equipment Identity (IMEI)
The International Mobile Station Equipment Identity (IMEI) looks more like a serial number which distinctively identifies a mobile station internationally. This is allocated by the equipment manufacturer and registered by the network operator, who stores it in the Equipment Identity Register (EIR). By means of IMEI, one recognizes obsolete, stolen, or non-functional equipment.

Following are the parts of IMEI:

   * **Type Approval Code (TAC)** : 6 decimal places, centrally assigned.
   * **Final Assembly Code (FAC)** : 6 decimal places, assigned by the manufacturer.
   * **Serial Number (SNR)** : 6 decimal places, assigned by the manufacturer.
   * **Spare (SP)** : 1 decimal place.

Thus, IMEI = TAC + FAC + SNR + SP. It uniquely characterizes a mobile station and gives clues about the manufacturer and the date of manufacturing.

## International Mobile Subscriber Identity (IMSI)
Every registered user has an original International Mobile Subscriber Identity (IMSI) with a valid IMEI stored in their Subscriber Identity Module (SIM).

IMSI comprises of the following parts:

   * **Mobile Country Code (MCC)** : 3 decimal places, internationally standardized.
   * **Mobile Network Code (MNC)** : 2 decimal places, for unique identification of mobile network within the country.
   * **Mobile Subscriber Identification Number (MSIN)** : Maximum 10 decimal places, identification number of the subscriber in the home mobile network.

## Mobile Subscriber ISDN Number (MSISDN)
The authentic telephone number of a mobile station is the Mobile Subscriber ISDN Number (MSISDN). Based on the SIM, a mobile station can have many MSISDNs, as each subscriber is assigned with a separate MSISDN to their SIM respectively.

Listed below is the structure followed by MSISDN categories, as they are defined based on international ISDN number plan:

   * **Country Code (CC)** : Up to 3 decimal places.
   * **National Destination Code (NDC)** : Typically 2-3 decimal places.
   * **Subscriber Number (SN)** : Maximum 10 decimal places.

## Mobile Station Roaming Number (MSRN)
Mobile Station Roaming Number (MSRN) is an interim location dependent ISDN number, assigned to a mobile station by a regionally responsible Visitor Location Register (VLA). Using MSRN, the incoming calls are channelled to the MS.

The MSRN has the same structure as the MSISDN.

   * **Country Code (CC)** : of the visited network.
   * **National Destination Code (NDC)** : of the visited network.
   * **Subscriber Number (SN)** : in the current mobile network.

## Location Area Identity (LAI)
Within a PLMN, a Location Area identifies its own authentic Location Area Identity (LAI). The LAI hierarchy is based on international standard and structured in a unique format as mentioned below:

   * **Country Code (CC)** : 3 decimal places.
   * **Mobile Network Code (MNC)** : 2 decimal places.
   * **Location Area Code (LAC)** : maximum 5 decimal places or maximum twice 8 bits coded in hexadecimal (LAC &lt; FFFF).

## Temporary Mobile Subscriber Identity (TMSI)
Temporary Mobile Subscriber Identity (TMSI) can be assigned by the VLR, which is responsible for the current location of a subscriber. The TMSI needs to have only local significance in the area handled by the VLR. This is stored on the network side only in the VLR and is not passed to the Home Location Register (HLR).

Together with the current location area, the TMSI identifies a subscriber uniquely. It can contain up to 4 × 8 bits.

## Local Mobile Subscriber Identity (LMSI)
Each mobile station can be assigned with a Local Mobile Subscriber Identity (LMSI), which is an original key, by the VLR. This key can be used as the auxiliary searching key for each mobile station within its region. It can also help accelerate the database access. An LMSI is assigned if the mobile station is registered with the VLR and sent to the HLR. LMSI comprises of four octets (4x8 bits).

## Cell Identifier (CI)
Using a Cell Identifier (CI) (maximum 2 × 8) bits, the individual cells that are within an LA can be recognized. When the Global Cell Identity (LAI + CI) calls are combined, then it is uniquely defined.


[Previous Page](../gsm/gsm_specification.md) [Next Page](../gsm/gsm_operations.md) 
