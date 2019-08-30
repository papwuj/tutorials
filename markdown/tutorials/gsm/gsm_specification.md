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


[Previous Page](../gsm/gsm_architecture.md) [Next Page](../gsm/gsm_addressing.md) 
