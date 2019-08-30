# GSM - Quick Guide
# GSM - Overview
## What is GSM?
If you are in Europe or Asia and using a mobile phone, then most probably you are using GSM technology in your mobile phone.

   * GSM stands for **G**lobal **S**ystem for **M**obile Communication. It is a digital cellular technology used for transmitting mobile voice and data services.
   * The concept of GSM emerged from a cell-based mobile radio system at Bell Laboratories in the early 1970s.
   * GSM is the name of a standardization group established in 1982 to create a common European mobile telephone standard.
   * GSM is the most widely accepted standard in telecommunications and it is implemented globally.
   * GSM is a circuit-switched system that divides each 200 kHz channel into eight 25 kHz time-slots. GSM operates on the mobile communication bands 900 MHz and 1800 MHz in most parts of the world. In the US, GSM operates in the bands 850 MHz and 1900 MHz.
   * GSM owns a market share of more than 70 percent of the world's digital cellular subscribers.
   * GSM makes use of narrowband Time Division Multiple Access (TDMA) technique for transmitting signals.
   * GSM was developed using digital technology. It has an ability to carry 64 kbps to 120 Mbps of data rates.
   * Presently GSM supports more than one billion mobile subscribers in more than 210 countries throughout the world.
   * GSM provides basic to advanced voice and data services including roaming service. Roaming is the ability to use your GSM phone number in another GSM network.

GSM digitizes and compresses data, then sends it down through a channel with two other streams of user data, each in its own timeslot.

## Why GSM?
Listed below are the features of GSM that account for its popularity and wide acceptance.

   * Improved spectrum efficiency
   * International roaming
   * Low-cost mobile sets and base stations (BSs)
   * High-quality speech
   * Compatibility with Integrated Services Digital Network (ISDN) and other telephone company services
   * Support for new services

## GSM History
The following table shows some of the important events in the rollout of the GSM system.

# GSM - Architecture
A GSM network comprises of many functional units. These functions and interfaces are explained in this chapter. The GSM network can be broadly divided into:

   * [The Mobile Station (MS)](/gsm/gsm_mobile_station.htm) 
   * [The Base Station Subsystem (BSS)](/gsm/gsm_base_station_subsystem.htm) 
   * [The Network Switching Subsystem (NSS)](/gsm/gsm_network_switching_subsystem.htm) 
   * [The Operation Support Subsystem (OSS)](/gsm/gsm_operation_support_subsystem.htm) 

Given below is a simple pictorial view of the GSM architecture.

![GSM Architecture](../gsm/images/gsm-architecture.gif)

The additional components of the GSM architecture comprise of databases and messaging systems functions:

   * Home Location Register (HLR)
   * Visitor Location Register (VLR)
   * Equipment Identity Register (EIR)
   * Authentication Center (AuC)
   * SMS Serving Center (SMS SC)
   * Gateway MSC (GMSC)
   * Chargeback Center (CBC)
   * Transcoder and Adaptation Unit (TRAU)

The following diagram shows the GSM network along with the added elements:

![GSM Elements](../gsm/images/gsm-elements.gif)

The MS and the BSS communicate across the Um interface. It is also known as the  or the . The BSS communicates with the Network Service Switching (NSS) center across the  interface.

## GSM network areas
In a GSM network, the following areas are defined:

   * **Cell** : Cell is the basic service area; one BTS covers one cell. Each cell is given a Cell Global Identity (CGI), a number that uniquely identifies the cell.
   * **Location Area** : A group of cells form a Location Area (LA). This is the area that is paged when a subscriber gets an incoming call. Each LA is assigned a Location Area Identity (LAI). Each LA is served by one or more BSCs.
   * **MSC/VLR Service Area** : The area covered by one MSC is called the MSC/VLR service area.
   * **PLMN** : The area covered by one network operator is called the Public Land Mobile Network (PLMN). A PLMN can contain one or more MSCs.

# GSM - Specification
The requirements for different Personal Communication Services (PCS) systems differ for each PCS network. Vital characteristics of the GSM specification are listed below:

## Modulation
Modulation is the process of transforming the input data into a suitable format for the transmission medium. The transmitted data is demodulated back to its original form at the receiving end. The GSM uses Gaussian Minimum Shift Keying (GMSK) modulation method.

## Access Methods
Radio spectrum being a limited resource that is consumed and divided among all the users, GSM devised a combination of TDMA/FDMA as the method to divide the bandwidth among the users. In this process, the FDMA part divides the frequency of the total 25 MHz bandwidth into 124 carrier frequencies of 200 kHz bandwidth.

Each BS is assigned with one or multiple frequencies, and each of this frequency is divided into eight timeslots using a TDMA scheme. Each of these slots are used for both transmission as well as reception of data. These slots are separated by time so that a mobile unit doesn’t transmit and receive data at the same time.

## Transmission Rate
The total symbol rate for GSM at 1 bit per symbol in GMSK produces 270.833 K symbols/second. The gross transmission rate of a timeslot is 22.8 Kbps.

GSM is a digital system with an over-the-air bit rate of 270 kbps.

## Frequency Band
The **uplink frequency range** specified for GSM is 933 - 960 MHz (basic 900 MHz band only). The **downlink frequency band** 890 - 915 MHz (basic 900 MHz band only).

## Channel Spacing
Channel spacing indicates the spacing between adjacent carrier frequencies. For GSM, it is 200 kHz.

## Speech Coding
For speech coding or processing, GSM uses Linear Predictive Coding (LPC). This tool compresses the bit rate and gives an estimate of the speech parameters. When the audio signal passes through a filter, it mimics the vocal tract. Here, the speech is encoded at 13 kbps.

## Duplex Distance
Duplex distance is the space between the uplink and downlink frequencies. The duplex distance for GSM is 80 MHz, where each channel has two frequencies that are 80 MHz apart.

## Misc
   * **Frame duration** : 4.615 mS
   * **Duplex Technique** : Frequency Division Duplexing (FDD) access mode previously known as WCDMA.
   * **Speech channels per RF channel** : 8.

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

# GSM - Operations
Once a Mobile Station initiates a call, a series of events takes place. Analyzing these events can give an insight into the operation of the GSM system.

## Mobile Phone to Public Switched Telephone Network (PSTN)
When a mobile subscriber makes a call to a PSTN telephone subscriber, the following sequence of events takes place:

   * The MSC/VLR receives the message of a call request.
   * The MSC/VLR checks if the mobile station is authorized to access the network. If so, the mobile station is activated. If the mobile station is not authorized, then the service will be denied.
   * MSC/VLR analyzes the number and initiates a call setup with the PSTN.
   * MSC/VLR asks the corresponding BSC to allocate a traffic channel (a radio channel and a time slot).
   * The BSC allocates the traffic channel and passes the information to the mobile station.
   * The called party answers the call and the conversation takes place.
   * The mobile station keeps on taking measurements of the radio channels in the present cell and the neighbouring cells and passes the information to the BSC. The BSC decides if a handover is required. If so, a new traffic channel is allocated to the mobile station and the handover takes place. If handover is not required, the mobile station continues to transmit in the same frequency.

## PSTN to Mobile Phone
When a PSTN subscriber calls a mobile station, the following sequence of events takes place:

   * The Gateway MSC receives the call and queries the HLR for the information needed to route the call to the serving MSC/VLR.
   * The GMSC routes the call to the MSC/VLR.
   * The MSC checks the VLR for the location area of the MS.
   * The MSC contacts the MS via the BSC through a broadcast message, that is, through a paging request.
   * The MS responds to the page request.
   * The BSC allocates a traffic channel and sends a message to the MS to tune to the channel. The MS generates a ringing signal and, after the subscriber answers, the speech connection is established.
   * Handover, if required, takes place, as discussed in the earlier case.

To transmit the speech over the radio channel in the stipulated time, the MS codes it at the rate of 13 Kbps. The BSC transcodes the speech to 64 Kbps and sends it over a land link or a radio link to the MSC. The MSC then forwards the speech data to the PSTN. In the reverse direction, the speech is received at 64 Kbps at the BSC and the BSC transcodes it to 13 Kbps for radio transmission.

GSM supports 9.6 Kbps data that can be channelled in one TDMA timeslot. To supply higher data rates, many enhancements were done to the GSM standards (GSM Phase 2 and GSM Phase 2+).

# GSM - Protocol Stack
GSM architecture is a layered model that is designed to allow communications between two different systems. The lower layers assure the services of the upper-layer protocols. Each layer passes suitable notifications to ensure the transmitted data has been formatted, transmitted, and received accurately.

The GMS protocol stacks diagram is shown below:

![GSM Protocol Stack](../gsm/images/gsm-protocol-stack.gif)

## MS Protocols
Based on the interface, the GSM signaling protocol is assembled into three general layers:

   * **Layer 1** : The physical layer. It uses the channel structures over the air interface.
   * **Layer 2** : The data-link layer. Across the Um interface, the data-link layer is a modified version of the Link access protocol for the D channel (LAP-D) protocol used in ISDN, called Link access protocol on the Dm channel (LAP-Dm). Across the A interface, the Message Transfer Part (MTP), Layer 2 of SS7 is used.
   * **Layer 3** : GSM signalling protocol’s third layer is divided into three sublayers:

## MS to BTS Protocols
The RR layer is the lower layer that manages a link, both radio and fixed, between the MS and the MSC. For this formation, the main components involved are the MS, BSS, and MSC. The responsibility of the RR layer is to manage the RR-session, the time when a mobile is in a dedicated mode, and the radio channels including the allocation of dedicated channels.

The MM layer is stacked above the RR layer. It handles the functions that arise from the mobility of the subscriber, as well as the authentication and security aspects. Location management is concerned with the procedures that enable the system to know the current location of a powered-on MS so that incoming call routing can be completed.

The CM layer is the topmost layer of the GSM protocol stack. This layer is responsible for Call Control, Supplementary Service Management, and Short Message Service Management. Each of these services are treated as individual layer within the CM layer. Other functions of the CC sublayer include call establishment, selection of the type of service (including alternating between services during a call), and call release.

## BSC Protocols
The BSC uses a different set of protocols after receiving the data from the BTS. The Abis interface is used between the BTS and BSC. At this level, the radio resources at the lower portion of Layer 3 are changed from the RR to the Base Transceiver Station Management (BTSM). The BTS management layer is a relay function at the BTS to the BSC.

The RR protocols are responsible for the allocation and reallocation of traffic channels between the MS and the BTS. These services include controlling the initial access to the system, paging for MT calls, the handover of calls between cell sites, power control, and call termination. The BSC still has some radio resource management in place for the frequency coordination, frequency allocation, and the management of the overall network layer for the Layer 2 interfaces.

To transit from the BSC to the MSC, the BSS mobile application part or the direct application part is used, and SS7 protocols is applied by the relay, so that the MTP 1-3 can be used as the prime architecture.

## MSC Protocols
At the MSC, starting from the BSC, the information is mapped across the A interface to the MTP Layers 1 through 3. Here, Base Station System Management Application Part (BSS MAP) is said to be the equivalent set of radio resources. The relay process is finished by the layers that are stacked on top of Layer 3 protocols, they are BSS MAP/DTAP, MM, and CM. This completes the relay process. To find and connect to the users across the network, MSCs interact using the control-signalling network. Location registers are included in the MSC databases to assist in the role of determining how and whether connections are to be made to roaming users.

Each GSM MS user is given a HLR that in turn comprises of the user’s location and subscribed services. VLR is a separate register that is used to track the location of a user. When the users move out of the HLR covered area, the VLR is notified by the MS to find the location of the user. The VLR in turn, with the help of the control network, signals the HLR of the MS’s new location. With the help of location information contained in the user’s HLR, the MT calls can be routed to the user.

# GSM - User Services
GSM offers much more than just voice telephony. Contact your local GSM network operator to the specific services that you can avail.

GSM offers three basic types of services:

   * Telephony services or teleservices
   * Data services or bearer services
   * Supplementary services

## Teleservices
The abilities of a Bearer Service are used by a Teleservice to transport data. These services are further transited in the following ways:

### Voice Calls
The most basic Teleservice supported by GSM is telephony. This includes full-rate speech at 13 kbps and emergency calls, where the nearest emergency-service provider is notified by dialing three digits.

### Videotext and Facsmile
Another group of teleservices includes Videotext access, Teletex transmission, Facsmile alternate speech and Facsmile Group 3, Automatic Facsmile Group, 3 etc.

### Short Text Messages
Short Messaging Service (SMS) service is a text messaging service that allows sending and receiving text messages on your GSM mobile phone. In addition to simple text messages, other text data including news, sports, financial, language, and location-based data can also be transmitted.

## Bearer Services
Data services or Bearer Services are used through a GSM phone. to receive and send data is the essential building block leading to widespread mobile Internet access and mobile data transfer. GSM currently has a data transfer rate of 9.6k. New developments that will push up data transfer rates for GSM users are HSCSD (high speed circuit switched data) and GPRS (general packet radio service) are now available.

## Supplementary Services
Supplementary services are additional services that are provided in addition to teleservices and bearer services. These services include caller identification, call forwarding, call waiting, multi-party conversations, and barring of outgoing (international) calls, among others. A brief description of supplementary services is given here:

   * **Conferencing** : It allows a mobile subscriber to establish a multiparty conversation, i.e., a simultaneous conversation between three or more subscribers to setup a conference call. This service is only applicable to normal telephony.
   * **Call Waiting** : This service notifies a mobile subscriber of an incoming call during a conversation. The subscriber can answer, reject, or ignore the incoming call.
   * **Call Hold** : This service allows a subscriber to put an incoming call on hold and resume after a while. The call hold service is applicable to normal telephony.
   * **Call Forwarding** : Call Forwarding is used to divert calls from the original recipient to another number. It is normally set up by the subscriber himself. It can be used by the subscriber to divert calls from the Mobile Station when the subscriber is not available, and so to ensure that calls are not lost.
   * **Call Barring** : Call Barring is useful to restrict certain types of outgoing calls such as ISD or stop incoming calls from undesired numbers. Call barring is a flexible service that enables the subscriber to conditionally bar calls.
   * **Number Identification** : There are following supplementary services related to number identification:
   * **Calling Line Identification Presentation** : This service displays the telephone number of the calling party on your screen.
   * **Calling Line Identification Restriction** : A person not wishing their number to be presented to others subscribes to this service.
   * **Connected Line Identification Presentation** : This service is provided to give the calling party the telephone number of the person to whom they are connected. This service is useful in situations such as forwarding's where the number connected is not the number dialled.
   * **Connected Line Identification Restriction** : There are times when the person called does not wish to have their number presented and so they would subscribe to this person. Normally, this overrides the presentation service.
   * **Malicious Call Identification** : The malicious call identification service was provided to combat the spread of obscene or annoying calls. The victim should subscribe to this service, and then they could cause known malicious calls to be identified in the GSM network, using a simple command.
   * **Advice of Charge (AoC)** : This service was designed to give the subscriber an indication of the cost of the services as they are used. Furthermore, those service providers who wish to offer rental services to subscribers without their own SIM can also utilize this service in a slightly different form. AoC for data calls is provided on the basis of time measurements.
   * **Closed User Groups (CUGs)** : This service is meant for groups of subscribers who wish to call only each other and no one else.
   * **Unstructured supplementary services data (USSD)** : This allows operator-defined individual services.

# GSM - Security and Encryption
GSM is the most secured cellular telecommunications system available today. GSM has its security methods standardized. GSM maintains end-to-end security by retaining the confidentiality of calls and anonymity of the GSM subscriber.

Temporary identification numbers are assigned to the subscriber’s number to maintain the privacy of the user. The privacy of the communication is maintained by applying encryption algorithms and frequency hopping that can be enabled using digital systems and signalling.

This chapter gives an outline of the security measures implemented for GSM subscribers.

## Mobile Station Authentication
The GSM network authenticates the identity of the subscriber through the use of a challenge-response mechanism. A 128-bit Random Number (RAND) is sent to the MS. The MS computes the 32-bit Signed Response (SRES) based on the encryption of the RAND with the authentication algorithm (A3) using the individual subscriber authentication key (Ki). Upon receiving the SRES from the subscriber, the GSM network repeats the calculation to verify the identity of the subscriber.

The individual subscriber authentication key (Ki) is never transmitted over the radio channel, as it is present in the subscriber's SIM, as well as the AUC, HLR, and VLR databases. If the received SRES agrees with the calculated value, the MS has been successfully authenticated and may continue. If the values do not match, the connection is terminated and an authentication failure is indicated to the MS.

The calculation of the signed response is processed within the SIM. It provides enhanced security, as confidential subscriber information such as the IMSI or the individual subscriber authentication key (Ki) is never released from the SIM during the authentication process.

## Signalling and Data Confidentiality
The SIM contains the ciphering key generating algorithm (A8) that is used to produce the 64-bit ciphering key (Kc). This key is computed by applying the same random number (RAND) used in the authentication process to ciphering key generating algorithm (A8) with the individual subscriber authentication key (Ki).

GSM provides an additional level of security by having a way to change the ciphering key, making the system more resistant to eavesdropping. The ciphering key may be changed at regular intervals as required. As in case of the authentication process, the computation of the ciphering key (Kc) takes place internally within the SIM. Therefore, sensitive information such as the individual subscriber authentication key (Ki) is never revealed by the SIM.

Encrypted voice and data communications between the MS and the network is accomplished by using the ciphering algorithm A5. Encrypted communication is initiated by a ciphering mode request command from the GSM network. Upon receipt of this command, the mobile station begins encryption and decryption of data using the ciphering algorithm (A5) and the ciphering key (Kc).

## Subscriber Identity Confidentiality
To ensure subscriber identity confidentiality, the Temporary Mobile Subscriber Identity (TMSI) is used. Once the authentication and encryption procedures are done, the TMSI is sent to the mobile station. After the receipt, the mobile station responds. The TMSI is valid in the location area in which it was issued. For communications outside the location area, the Location Area Identification (LAI) is necessary in addition to the TMSI.

# GSM - Billing
GSM service providers are doing billing based on the services they are providing to their customers. All the parameters are simple enough to charge a customer for the provided services.

This chapter provides an overview of the frequently used billing techniques and parameters applied to charge a GSM subscriber.

## Telephony Service
These services can be charged on per call basis. The call initiator has to pay the charges, and the incoming calls are nowadays free. A customer can be charged based on different parameters such as:

   * International call or long distance call.
   * Local call.
   * Call made during peak hours.
   * Call made during night time.
   * Discounted call during weekends.
   * Call per minute or per second.
   * Many more other criteria can be designed by a service provider to charge their customers.

## SMS Service
Most of the service providers charge their customer's SMS services based on the number of text messages sent. There are other prime SMS services available where service providers charge more than normal SMS charge. These services are being availed in collaboration of Television Networks or Radio Networks to demand SMS from the audiences.

Most of the time, the charges are paid by the SMS sender but for some services like stocks and share prices, mobile banking facilities, and leisure booking services, etc. the recipient of the SMS has to pay for the service.

## GPRS Services
Using GPRS service, you can browse, play games on the Internet, and download movies. So a service provider will charge you based on the data uploaded as well as data downloaded on your mobile phone. These charges will be based on per Kilo Byte data downloaded/uploaded.

Additional parameter could be a QoS provided to you. If you want to watch a movie, then a low QoS may work because some data loss may be acceptable, but if you are downloading a zip file, then a single byte loss will corrupt your complete downloaded file.

Another parameter could be peak and off peak time to download a data file or to browse the Internet.

## Supplementary Services
Most of the supplementary services are being provided based on monthly rental or absolutely free. For example, call waiting, call forwarding, calling number identification, and call on hold are available at zero cost.

Call barring is a service, which service providers use just to recover their dues, etc., otherwise this service is not being used by any subscriber.

Call conferencing service is a form of simple telephone call where the customers are charged for multiple calls made at a time. No service provider charges extra charge for this service.

Closed User Group (CUG) is very popular and is mainly being used to give special discounts to the users if they are making calls to a particular defined group of subscribers.

Advice of Charge (AoC) can be charged based on number of queries made by a subscriber.

# GSM - Mobile Phones
GSM Arena is the biggest source of information about the latest GSM mobile phones. This page is being displayed here as a courtesy of GSM Arena. If you are planning to buy a GSM mobile phone, then we suggest you go through all the review comments and then decide which phone is suitable for you.

## GSM Enabled Phones

[Previous Page](../gsm/gsm_mobile_phones.md) [Next Page](../gsm/gsm_useful_resources.md) 
