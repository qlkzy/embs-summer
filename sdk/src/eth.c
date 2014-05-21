/* EMBS Summer Assessment Y8143160 */


#include "eth.h"
#include "config.h"
#include "util.h"

#include "uart.h"
#include "xemaclite.h"

XEmacLite ether;

#define DATA_OFFSET 14
#define TILES_OFFSET 7

static const u8 mac_address[] = {0x00, 0x11, 0x22, 0x33, 0x00, 0x12};
static const u8 server_mac[] = {0x00, 0x11, 0x22, 0x44, 0x00, 0x50};

/*
 * Buffers used for Transmission and Reception of Packets. These are declared
 * as global so that they are not a part of the stack.
 */
static u8 tx_buffer[DATA_OFFSET + TILES_OFFSET + 2];
//static u8 rx_buffer[DATA_OFFSET + TILES_OFFSET + (MAX_SIDE * MAX_SIDE * 4)];
//static u8 tx_buffer[XEL_MAX_FRAME_SIZE];
static u8 rx_buffer[XEL_MAX_FRAME_SIZE];

static u8 * const destaddr = &tx_buffer[NELEM(mac_address)-1];

static u8 *setup_buffer(void);

void eth_request_tiles(int side, u32 seed, int max_colours, u8 **output)
{
    /*
     * Horrible hack.
     *
     * Some timing glitch (presumably) causes the ethernet driver to get wedged
     * after one message; so, we reinitialise it severy time.
     * :(
     */
    XEmacLite_Config *etherconfig = XEmacLite_LookupConfig(XPAR_EMACLITE_0_DEVICE_ID);
    XEmacLite_CfgInitialize(&ether, etherconfig, etherconfig->BaseAddress);
    XEmacLite_SetMacAddress(&ether, mac_address); //Set our sending MAC address

    setup_buffer();
    u8 req[] = {
            0x01,
            side,
            ((seed >> 24) & 0xff),
            ((seed >> 16) & 0xff),
            ((seed >> 8) & 0xff),
            (seed & 0xff),
            max_colours,
            0x00,
    };

    memcpy(&tx_buffer[DATA_OFFSET], req, NELEM(req));

    XEmacLite_FlushReceive(&ether); //Clear any received messages
    XEmacLite_Send(&ether, tx_buffer, NELEM(req) + XEL_HEADER_SIZE);

    int done = 0;
    //Poll for receive packet. rx_len must be defined as volatile!
    volatile int rx_len = 0;

    while (!done) {

        while (rx_len == 0) {
            rx_len = XEmacLite_Recv(&ether, rx_buffer);
        }

        if (rx_buffer[0] != 0xff) {
            done = 1;
            *output = &rx_buffer[DATA_OFFSET + TILES_OFFSET];
        } else {
            continue;
        }
    }
}




// do constant setup stuff
static u8 *setup_buffer(void)
{
    u8 *txbuf = tx_buffer;

    // destination address
    memcpy(txbuf, server_mac, NELEM(server_mac));
    txbuf += NELEM(server_mac);

    // source address
    memcpy(txbuf, mac_address, NELEM(mac_address));
    txbuf += NELEM(mac_address);

    // type field
    *txbuf++ = 0x55;
    *txbuf++ = 0xab;

    // return fill pointer
    return txbuf;
}
