/**************************************************************************/
/*  Module              : cim_fader_io.h                                  */
/*  Language used  		: MPLAB XC8                            			  */
/*  Microprocessor 		:                              			          */
/*                                                                        */
/*  Function            :  IO mapping and system references               */
/*                          Global data declaration                       */
/*                                                                        */
/*  Revision History :  Author          Date            Reason            */
/*                      M.D.Kroon       Feb 2023        Initial Design    */
/*                                                                        */
/*                                                                        */
/**************************************************************************/

/*------------------------------------------------------------------------*/
/*             Defines                                                    */
/*------------------------------------------------------------------------*/
#define TEST_MODE

/*------------------------------------------------------------------------*/
/*             Emuns                                                      */
/*------------------------------------------------------------------------*/
enum {
	PWM_SET_0      = 0,
//	PWM_SET_25     = 1,
//	PWM_SET_50     = 2,
//	PWM_SET_75     = 3,
//    
//	PWM_SET_100	= 4,
//	PWM_SET_125	= 5,
//	PWM_SET_150	= 6,
//	PWM_SET_175	= 7,
//
//	PWM_SET_200	= 8,
//	PWM_SET_225	= 9,
//	PWM_SET_250	= 10,
//	PWM_SET_275	= 11,
//
//	PWM_SET_300	= 12,
//	PWM_SET_325	= 13,
//	PWM_SET_350	= 14,
//	PWM_SET_375	= 15,
//
//	MAX_DIP_SET	= 16,
//    NUM_SOFTSTART_STEPS = 1000,
//    NUM_SOFTSTART_LONG_STEPS = 2000,
   
//    NUM_SOFTSTOP_STEPS = 20,
//    NUM_SOFTSTOP_LONG_STEPS = 200,

//	FADE_MASK       = 0x0f,
//	FADE_SET    
            
    SOFTSTART_10 = 10,
    SOFTSTART_20 = 20,
    SOFTSTART_50 = 50,
    SOFTSTART_100 = 100,
    SOFTSTART_500 = 500,
    SOFTSTART_1000 = 1000,    
    SOFTSTART_2000 = 2000,
    
    SOFTSTOP = 20,
   
    
    PWM_SET_100	= 505,
	PWM_SET_200	= 1010,
	PWM_SET_400	= 2020,
	PWM_SET_800	= 4040,
   	PWM_SET_1000= 5050
            
//    PWM_SET_100	= 198,
//	PWM_SET_200	= 396,
//	PWM_SET_500	= 990,
//	PWM_SET_1000	= 1980
        
            
	};
    
    
/*---- Pins and IOs--------------------------------------------------------*/
    
//#define FADE1_PIN   (0x01<<4)     
//#define FADE2_PIN   (0x01<<5)     
//#define FADE1_PIN   0x10     
//#define FADE2_PIN   0x20     
//#define FADE_TIME_MASK   0x0f
//    
//#define CHANNEL_1_PORT   PORTA
//#define CHANNEL_2_PORT   PORTB    
//#define FADER_CTRL  PORTC
//    
/*------------------------------------------------------------*/
#define SD_PIN      0x80     
#define OE_PIN      0x10     
#define PSU_PORT     PORTB

#define MAXDTY_PIN   0x20     
#define EN_PIN       0x40
#define EN_PIN_bm                   PIN4_bm
#define Freq_PIN_bm                 PIN3_bm
#define nEN_INTERRUPT               PORTC.INTFLAGS & EN_PIN_bm
#define nEN_CLEAR_INTERRUPT_FLAG    PORTC.INTFLAGS &= EN_PIN_bm
#define Freq_INTERRUPT              PORTC.INTFLAGS & Freq_PIN_bm
#define Freq_CLEAR_INTERRUPT_FLAG   PORTC.INTFLAGS &= Freq_PIN_bm

    
#define SD_PIN_bm                   PIN7_bm
#define nSD_INTERRUPT               PORTB.INTFLAGS & SD_PIN_bm
#define nSD_CLEAR_INTERRUPT_FLAG    PORTB.INTFLAGS &= SD_PIN_bm
   
    
 #define SD_PIN_bm                   PIN7_bm
#define nSD_INTERRUPT               PORTB.INTFLAGS & SD_PIN_bm
#define nSD_CLEAR_INTERRUPT_FLAG    PORTB.INTFLAGS &= SD_PIN_bm
   
    
#define CTRL_PORT     PORTC
    

#define SW_MASK     0x0F

#define SW_MASK_SOFTSTART    0x0C
#define SW_MASK_TON 0x03

#define SW_PORT     PORTC
    

    
//#define SOFTSTART_PIN       0x08
/*------------------------------------------------------------*/

#define DAC_ACTIVE_LOW      0x00   
#define CTRL_INPUTS         0x00
#define DAC_INIT            0
   
#define IO_PIN_SETUP   ( !PORT_INVEN_bm | !PORT_PULLUPEN_bm )   
#define SW_PIN_SETUP   ( SW_MASK  !PORT_INVEN_bm | !PORT_PULLUPEN_bm )   
    
/*------------------------------------------------------------------------*/
/*    Application defines                                                 */
/*------------------------------------------------------------------------*/
//#define PWM_TOP_MAX         0x3158     /* freq = 5Mhz timer TOP   400Hz */
//#define PWM_TOP_MAX         (0x3158/2 )    /* freq = 5Mhz timer TOP   800Hz */
#define PWM_TOP_MAX_400         (0x3158 )    /* freq = 5Mhz timer TOP   400Hz */
#define PWM_TOP_MAX_800         (0x3158/2 )    /* freq = 5Mhz timer TOP   800Hz */

#define PWM_TOP_MAX_20K         (250 )    /* freq = 5Mhz timer TOP   20KHz */
#define PWM_TOP_MAX_30K         (165 )    /* freq = 5Mhz timer TOP   30KHz */
#define PWM_TOP_MAX_40K         (125 )    /* freq = 5Mhz timer TOP   40KHz */
#define PWM_TOP_MAX_50K         (100 )    /* freq = 5Mhz timer TOP   50KHz */

#define BRIDGE_FREQUENCY_LOW  500         /* freq = 5Khz */
#define BRIDGE_ON_TIME_LOW_FREQ  450      /* duty cycle for 5Khz wave */
    
#define BRIDGE_FREQUENCY_HIGH 80          /* freq = 31Khz */
#define BRIDGE_ON_TIME_HIGH_FREQ 60       /* duty cycle for 31 Khz wave */

 #define PWM_TOP_MAX         PWM_TOP_MAX_800
   
    
    
    
#define PWM_MAX_LEVEL       ( PWM_TOP_MAX/2 )           //max PWM
//#define PWM_MAX_LEVEL_A 	127                         //max PWM A
//#define PWM_MAX_LEVEL_B 	PWM_TOP_MAX                 //max PWM b
#define PWM_MIN_LEVEL       0       //min  level
//#define PWM_DEAD_TIME       10      //Dead Time between wave a and wave b
#define PWM_DEAD_TIME       1      //Dead Time between wave a and wave b
#define MAX_SD_WAIT         25      /* wait for SD_Circuits to reset RC ~60mS */
    
#define PSU_ON                  false        /* swap polarity */
#define PSU_OFF                 true
#define SHUTDOWN_ACTIVE         false       
#define HIGH_FREQUENCY_MARK     false           /* switch setting */
#define LOW_FREQUENCY_MARK      true            /*    "  "        */
/*------------------------------------------------------------------------*/
/*    Bit definitions                                                     */
/*------------------------------------------------------------------------*/

/*------------------------------------------------------------------------*/
/*    Application data types                                              */
/*------------------------------------------------------------------------*/ 
    
    
    
#if ( MAIN_OWNER == 1 )
/*----------------------------------------------------------------------*/
/*    Local function prototypes                                         */
/*----------------------------------------------------------------------*/

/*----------------------------------------------------------------------*/
/*    External function prototypes                                      */
/*----------------------------------------------------------------------*/

/*----------------------------------------------------------------------*/
/*    System Data available to other External / System functions        */
/*----------------------------------------------------------------------*/

unsigned int Pwm_A_u16;
unsigned int Pwm_B_u16;
unsigned int Pwm_old_u16;
unsigned int Pwm_max_u16;
unsigned char Pwm_Drv_Channel;
bool old_freq_switch;

unsigned int Dead_time_u8;
unsigned int softstart;
unsigned int softstop;
unsigned int softstart_step;
unsigned int softstop_step;
unsigned int softstart_old;
unsigned int softstop_old;
 
unsigned int softstart_max;
unsigned int softstop_max;

unsigned char SD_wait_cntr;
unsigned int I_Limit_cntr;
#else
/*----------------------------------------------------------------------*/
/*    Data available to other External / System functions               */
/*----------------------------------------------------------------------*/
extern unsigned int Pwm_A_u16;
extern unsigned int Pwm_B_u16;
extern unsigned int Pwm_old_u16;
extern unsigned int Pwm_max_u16;
extern unsigned char Pwm_Drv_Channel;

extern unsigned int Dead_time_u8;
extern unsigned int softstart;
extern unsigned int softstop;
extern unsigned int softstart_step;
extern unsigned int softstop_step; 
extern unsigned int softstart_old;
extern unsigned int softstop_old;
extern unsigned int softstart_max;
extern unsigned int softstop_max;

extern unsigned char SD_wait_cntr;
extern unsigned int I_Limit_cntr;
/*----------------------------------------------------------------------*/
/*    External Application function prototypes                          */
/*----------------------------------------------------------------------*/


#endif
/************************************************************************/
/*                      End of Header                                   */
/************************************************************************/

