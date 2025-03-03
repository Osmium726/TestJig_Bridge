/**************************************************************************/
/*  Module              : INV_CTRLR.h                                          */
/*  Language used  		: MPLAB xc8                            				*/
/*  Microprocessor 		: attiny417                          				 */
/*                                                                        */
/*  Function            :                  */
/*                                                                        */
/*  Revision History :  Author          Date            Reason            */
/*                      M.D.Kroon       Sept 2023        Initial Design    */
/*                                                                        */
/*                                                                        */
/**************************************************************************/

/*------------------------------------------------------------------------*/
/*             Defines                                                    */
/*------------------------------------------------------------------------*/

/*------------------------------------------------------------------------*/
/*    Application data prototypes                                         */
/*------------------------------------------------------------------------*/

/*------------------------------------------------------------------------*/
/*    Bit definitions                                                     */
/*------------------------------------------------------------------------*/

/*------------------------------------------------------------------------*/
/*    Application data types                                              */
/*------------------------------------------------------------------------*/
#if ( INV_CTRLR_OWNER == 1 )
/*----------------------------------------------------------------------*/
/*    Data available used                                               */
/*----------------------------------------------------------------------*/
 const unsigned int pwm_softstart_tbl[4] = 
        {
            SOFTSTART_10,
            SOFTSTART_20,
            SOFTSTART_50,
            SOFTSTART_500 
        };
  
 /* Frequency * Timer Fullscale Reload * US /1E-6 */
 /*  400Hz * 12632 * 100 / 1E-6   => 505 */
 const unsigned int pwm_ton_tbl[4] = 
        {
        PWM_SET_800,
        PWM_SET_400,
        PWM_SET_200,
        PWM_SET_100
        };
          
// Frequency Timer_Max 1/2 Cycle		5	30	60	80		T5	T30	T60	T80
//      20K     250     125             6	37	75	100		16	47	85	110
//      30K     165     82.5            4	24	49	66		14	34	59	76
//      40K     125     62.5            3	18	37	50		13	28	47	60
//      50K     100     50              2	15	30	40		12	25	40	50

  const unsigned int pwm_tbl[16] = 
        {
            322,1885,3760,5010,      /* 400  PWM*/
            22,85,160,210,        /* 10K  PWM*/
            14,34, 59, 76,        /* 30K  PWM*/
            16,47, 85, 110       /* 20K  PWM*/
 //             166,947,1885,2510       /* 800  PWM*/
//           135,760,1510,2010      /* 1000  PWM*/
//            72,385,760,1010      /* 2000  PWM*/
                    
        };
  
const unsigned int pwm_freq_tbl[16] = 
        {
            6250,6250, 6250, 6250,         /* 400 */
            250,250,250,250,      /* 10K*/
            83,83, 83, 83,        /* 30K*/
            125,125, 125, 125    /* 20K*/
//           3125,3125, 3125, 3125         /* 800 */
 //          2500,2500, 2500, 2500         /* 1000 */
 //          1250,1250, 1250, 1250         /* 2000 */
 };
  
 
 
/*----------------------------------------------------------------------*/
/*    Local function prototypes                                         */
/*----------------------------------------------------------------------*/
extern void io_init(void);

void data_init (void);
void set_PWM (unsigned int new_pwm);
void set_PWM_1 (void);
unsigned int rd_new_PWM (void);
void set_PWM (unsigned int new_pwm);
unsigned int rd_new_softstart (void);

inline u08_t INV_EN(void);
inline u08_t  INV_MAXDUTY(void);
 u08_t INV_DIP_SW(void);  
 u08_t INV_DIP_SW_TON(void);
 u08_t INV_DIP_SW_SOFTATART(void);
inline u08_t INV_SHUT_DOWN(void);
// inline u08_t SOFT_START_EN(void);

/*---- temp vars ------------------------------------------*/
   unsigned int pwm_ui;
    unsigned int i;                     /* local temp var */
   unsigned long l,m;                     /* local temp var */
unsigned char dip_sw_t;
/*----------------------------------------------------------------------*/
/*    External function prototypes                                         */
/*----------------------------------------------------------------------*/

#else
/*----------------------------------------------------------------------*/
/*    Data available to other functions                                  */
/*----------------------------------------------------------------------*/
extern const unsigned int pwm_ton_tbl[4];
extern const unsigned int pwm_softstart_tbl[2][2];
extern const unsigned int pwm_tbl[16];
extern const unsigned int pwm_freq_tbl[16];
  

/*----------------------------------------------------------------------*/
/*    External Application function prototypes                          */
/*----------------------------------------------------------------------*/
void io_init(void);
void set_PWM (unsigned int new_pwm);
void set_PWM_1 (void);
void set_PWM_2 (void);
unsigned int rd_new_PWM (void);
void set_PWM (unsigned int new_pwm);
unsigned int rd_new_softstart (void);

extern   u08_t INV_EN(void);
extern   u08_t  INV_MAXDUTY(void);
extern   u08_t INV_DIP_SW(void);
extern   u08_t INV_DIP_SW_TON(void);
extern   u08_t INV_DIP_SW_SOFTATART(void);
extern   u08_t INV_SHUT_DOWN(void);
// extern   u08_t SOFT_START_EN(void);

extern void data_init (void);
void set_PWM (unsigned int new_pwm);
unsigned int rd_new_PWM (void);

extern unsigned char dip_sw_t;
#endif
/************************************************************************/
/*                      End of Header                                   */
/************************************************************************/

