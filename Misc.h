/**************************************************************************/
/*  Module              : Misc.h                                          */
/*  Language used  		: MPLAB C30                            				*/
/*  Microprocessor 		: PIC24FJ256                          				 */
/*                                                                        */
/*  Function            :                  */
/*                                                                        */
/*  Revision History :  Author          Date            Reason            */
/*                      M.D.Kroon       Feb 2010        Initial Design    */
/*                                                                        */
/*                                                                        */
/**************************************************************************/

/*------------------------------------------------------------------------*/
/*             Defines                                                    */
/*------------------------------------------------------------------------*/

//*******************
//CRC Calc Defines
//*******************

#define POLY_LEN 	0x000f		//"polynomial length - 1"
#define POLYNOMIAL	0x1021	//generator polynomial
#define SEED_VAL	0x0000	//initial value
/*------------------------------------------------------------------------*/
/*             Defines                                                    */
/*------------------------------------------------------------------------*/
enum {
	NO_CARD	= 0,
	CARD_FAILED,
	CARD_READY
	};

enum {
	CFG_DESC	= 1,
	CFG_MSG,
	CFG_IP_ADR,
	CFG_MSG_1,
	CFG_MSG_2,
	CFG_MSG_3,
	CFG_MSG_4,
	CFG_MSG_5,
	CFG_MSG_6,
	CFG_MSG_7,
	CFG_MSG_8,
	};

enum {		/* Header Packet locations */
	HDR_DUMMY = 0,
	HDR_ID = 1,
	HDR_TYPE = 2,
	HDR_STATUS = 3,		/*2 bytes */
	HDR_FILE_NAME = 5,
	HDR_DATE = 20,
	HDR_MONTH = 21,
	HDR_YEAR = 23,
	HDR_HOUR = 19,
	HDR_MIN = 18,
	HDR_SEC = 17
};
/*------------------------------------------------------------------------*/
/*    Application data prototypes                                         */
/*------------------------------------------------------------------------*/

/*------------------------------------------------------------------------*/
/*    Bit definitions                                                     */
/*------------------------------------------------------------------------*/

/*------------------------------------------------------------------------*/
/*    Application data types                                              */
/*------------------------------------------------------------------------*/
#if ( MISC_OWNER == 1 )
const unsigned char Hex_Tbl[16] = {"0123456789ABCDEF"};

/*----------------------------------------------------------------------*/
/*    Local function prototypes                                         */
/*----------------------------------------------------------------------*/
unsigned char bin2bcd(unsigned char binary_value);
unsigned char bcd2bin(unsigned char bcd_value);
void delay(unsigned long delay);

unsigned int get_pos_in_str(unsigned char *search_str,unsigned char pos,unsigned char sync_c);
unsigned char checksum (unsigned char *ptr, size_t sz);
unsigned char asc2hex(char * asc);

void system_test(void);

/*----------------------------------------------------------------------*/
/*    External function prototypes                                         */
/*----------------------------------------------------------------------*/

#else
/*----------------------------------------------------------------------*/
/*    Data available to other functions                                  */
/*----------------------------------------------------------------------*/
extern const unsigned char Hex_Tbl[16];

/*----------------------------------------------------------------------*/
/*    External Application function prototypes                          */
/*----------------------------------------------------------------------*/
unsigned char bin2bcd(unsigned char binary_value);
unsigned char bcd2bin(unsigned char bcd_value);
void delay(unsigned long delay);

unsigned int get_pos_in_str(unsigned char *search_str,unsigned char pos,unsigned char sync_c);
unsigned char checksum (unsigned char *ptr, size_t sz);
unsigned char asc2hex(char * asc);

void system_test(void);

#endif
/************************************************************************/
/*                      End of Header                                   */
/************************************************************************/

