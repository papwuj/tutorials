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


[Previous Page](../gsm/gsm_addressing.md) [Next Page](../gsm/gsm_protocol_stack.md) 
