/**************************************************************************/
/*  Module              : MDK_types.h                                     */
/*  Language used  		: MPLAB C30                            			  */
/*  Microprocessor 		: PIC24FJ256                          			  */
/*                                                                        */
/*  Function            :                 								  */
/*                                                                        */
/*  Revision History :  Author          Date            Reason            */
/*                      M.D.Kroon                       Initial Design    */
/*                                                                        */
/*                                                                        */
/**************************************************************************/

/*------------------------------------------------------------------------*/
/*             General Typedef                                            */
/*------------------------------------------------------------------------*/
typedef unsigned char u08_t;
typedef unsigned short u16_t;
typedef unsigned long u32_t;

typedef signed char s08_t;
typedef signed short s16_t;
typedef signed long s32_t;

typedef unsigned char * uchar_p;

typedef unsigned char * u08_p;
typedef unsigned short * u16_p;
typedef unsigned long * u32_p;

typedef signed char * s08_p;
typedef signed short * s16_p;
typedef signed long * s32_p;

//typedef unsigned short uint16_t;

typedef struct 	{ 
		unsigned char b7 	:1;
		unsigned char b6 	:1;
		unsigned char b5 	:1;
		unsigned char b4 	:1;
		unsigned char b3 	:1;
		unsigned char b2 	:1;
		unsigned char b1 	:1;
		unsigned char b0 	:1;
     } char_bit_t;

typedef struct 	{ 
		unsigned int b15	:1;
		unsigned int b14	:1;
		unsigned int b13	:1;
		unsigned int b12	:1;
		unsigned int b11	:1;
		unsigned int b10	:1;
		unsigned int b9 	:1;
		unsigned int b8 	:1;
		unsigned int b7 	:1;
		unsigned int b6 	:1;
		unsigned int b5 	:1;
		unsigned int b4 	:1;
		unsigned int b3 	:1;
		unsigned int b2 	:1;
		unsigned int b1 	:1;
		unsigned int b0 	:1;
     } int_bit_t;

//typedef struct 	{
//		unsigned long long b63	:1;
//		unsigned long long b62	:1;
//		unsigned long long b61	:1;
//		unsigned long long b60	:1;
//		unsigned long long b59	:1;
//		unsigned long long b58	:1;
//		unsigned long long b57 	:1;
//		unsigned long long b56 	:1;
//		unsigned long long b55 	:1;
//		unsigned long long b54 	:1;
//		unsigned long long b53 	:1;
//		unsigned long long b52 	:1;
//		unsigned long long b51 	:1;
//		unsigned long long b50 	:1;
//		unsigned long long b49	:1;
//		unsigned long long b48 	:1;
//		unsigned long long b47	:1;
//		unsigned long long b46	:1;
//		unsigned long long b45	:1;
//		unsigned long long b44	:1;
//		unsigned long long b43	:1;
//		unsigned long long b42	:1;
//		unsigned long long b41	:1;
//		unsigned long long b40	:1;
//		unsigned long long b39	:1;
//		unsigned long long b38	:1;
//		unsigned long long b37	:1;
//		unsigned long long b36	:1;
//		unsigned long long b35 	:1;
//		unsigned long long b34	:1;
//		unsigned long long b33	:1;
//		unsigned long long b32	:1; 
//		unsigned long long b31	:1;
//		unsigned long long b30	:1;
//		unsigned long long b29	:1;
//		unsigned long long b28	:1;
//		unsigned long long b27	:1;
//		unsigned long long b26	:1;
//		unsigned long long b25 	:1;
//		unsigned long long b24 	:1;
//		unsigned long long b23 	:1;
//		unsigned long long b22 	:1;
//		unsigned long long b21 	:1;
//		unsigned long long b20 	:1;
//		unsigned long long b19 	:1;
//		unsigned long long b18 	:1;
//		unsigned long long b17	:1;
//		unsigned long long b16 	:1;
//		unsigned long long b15	:1;
//		unsigned long long b14	:1;
//		unsigned long long b13	:1;
//		unsigned long long b12	:1;
//		unsigned long long b11	:1;
//		unsigned long long b10	:1;
//		unsigned long long b9 	:1;
//		unsigned long long b8 	:1;
//		unsigned long long b7 	:1;
//		unsigned long long b6 	:1;
//		unsigned long long b5 	:1;
//		unsigned long long b4 	:1;
//		unsigned long long b3 	:1;
//		unsigned long long b2 	:1;
//		unsigned long long b1 	:1;
//		unsigned long long b0 	:1;
//     } ll_int_bit_t;

typedef  struct
      {
      unsigned char b_1;
      unsigned char b_0;
      } int_byte_t;

typedef  struct
      {
      unsigned int i_1;
      unsigned int i_0;
      } long_int_t;

typedef  struct
      {
      unsigned int i_3;
      unsigned int i_2;
      unsigned int i_1;
      unsigned int i_0;
      } long_long_int_t;

typedef  struct
      {
      unsigned char b_h3;
      unsigned char b_h2;
      unsigned char b_h1;
      unsigned char b_h0;
      } long_byte_t;
 
typedef  struct
      {
      unsigned char b_h7;
      unsigned char b_h6;
      unsigned char b_h5;
      unsigned char b_h4;
      unsigned char b_h3;
      unsigned char b_h2;
      unsigned char b_h1;
      unsigned char b_h0;
      } long_long_byte_t;
 
 typedef  union
      {
      int_byte_t  B;
      unsigned int I;
      } int_byte_ut;
      
typedef union   
   {
    long_byte_t     B;
	long_int_t		W;
    unsigned long   L;    
    }long_byte_ut;

typedef union   
   {

    long_long_byte_t    LB;
   	unsigned char    	B[8];
	long_long_int_t		W;
    unsigned long long  LL;  
	//ll_int_bit_t		LLb;  
    }long_long_byte_ut;

typedef  union 
        {
        char c[4];
        unsigned int i[2];
        unsigned long l;
       } long_ut;

    
//typedef  struct
//      {
//      unsigned char yr;
//      unsigned char mth;
//      unsigned char day;
//      unsigned char day_ow;
//      unsigned char hr;
//      unsigned char min;
//      unsigned char sec;
//      unsigned char cs;
//      } SRTC_t;
//
/*-------------------------------------------------------*/

/*------------------------------------------------------------------------*/
/*    Bit definitions                                                     */
/*------------------------------------------------------------------------*/

#define	 BIT0		(1<<0)
#define	 BIT1		(1<<1)
#define	 BIT2		(1<<2)
#define	 BIT3		(1<<3)
#define	 BIT4		(1<<4)
#define	 BIT5		(1<<5)
#define	 BIT6		(1<<6)
#define	 BIT7		(1<<7)


/*------------------------------------------------------------------------*/
/*    Application IOs                                                */
/*------------------------------------------------------------------------*/
#define TRUE            1
#define FALSE           0
       
#define PIN_INPUT		TRUE
#define PIN_OUTPUT		FALSE
#define PIN_OPENDRAIN	TRUE
#define  PIN_PULLUP		TRUE
#define  PIN_PULLDOWN	TRUE
#define  PIN_DISABLED	FALSE
#define  PIN_ENABLED   	TRUE
#define  PRESSED		FALSE
#define  PIN_LOW		FALSE	
#define  PIN_HIGH		TRUE
#define  LOW			FALSE	
#define  HIGH			TRUE
#define  CS_ENABLED		FALSE	
#define  CS_DISABLED	TRUE
#define  ENABLED		FALSE  	
#define  DISABLED		TRUE
#define  nENABLED		FALSE  	
#define  nDISABLED		TRUE
#define  PWR_OFF		FALSE	
#define  PWR_ON			TRUE
#define  INSTALLED		TRUE
#define  RECEIVE		LOW
#define  TRANSMIT		HIGH
#define FAN_ON			HIGH
#define FAN_OFF			LOW
#define BUZZER_ON		HIGH
#define BUZZER_OFF		LOW
#define X_BUZZER_ON		HIGH
#define X_BUZZER_OFF	LOW
#define TRUE_A5			0xA5
#define FALSE_A5		0x5A
#define TEMP_ON			HIGH
#define TEMP_OFF		LOW
       

/*------------------------------------------------------------------------*/
/*    Application data types                                              */
/*------------------------------------------------------------------------*/
#if ( MDK_TYPES_OWNER == 1 )
/*----------------------------------------------------------------------*/
/*    Local function prototypes                                         */
/*----------------------------------------------------------------------*/

#else
/*----------------------------------------------------------------------*/
/*    Data avalible to other functions                                  */
/*----------------------------------------------------------------------*/



/*----------------------------------------------------------------------*/
/*    External Application function prototypes                          */
/*----------------------------------------------------------------------*/

#endif
/************************************************************************/
/*                      End of Header                                   */
/************************************************************************/

