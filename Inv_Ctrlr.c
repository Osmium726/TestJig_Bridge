/**********************************************************/
/*                                                        */
/*  Module         : INV_CTRLR.c                               */
/*  Language used  : MPLAB-X                            */
/*  Microprocessor : AtTiny / Pic24                     	*/
/*  Function       : 								      */
/*                                            			  */
/* -------------------------------------------------------*/
/*  Revision History :                                    */ 
/*  Author         Date              Reason               */
/*  Mike Kroon  	Sept 2023      Initial Design       		*/
/*  CathRx                                          		*/
/**********************************************************/

#define INV_CTRLR_OWNER   1
#include "includes.h"
//#include <atmel_start.h>

/**********************************************************/
/* Local Functions 										  */
/**********************************************************/


/**********************************************************/
/*  Name        : new_fx                               		*/
/*  Parameters  : none                                    	*/
/*  Returns     : none                                    	*/
/*  Function    : empty function                   			*/
/*--------------------------------------------------------*/

/*--------------------------------------------------------*/
/*              End of Function: new_fx                   */
/**********************************************************/

/**********************************************************/
/*  Name        : io_init                               	*/
/*  Parameters  : none                                    	*/
/*  Returns     : none                                    	*/
/*  Function    : to setup the io ports of the ATtiny   	*/
/*--------------------------------------------------------*/
void io_init(void)
{
PSU_PORT.OUT = 0;

CTRL_PORT.PIN0CTRL = PORT_PULLUPEN_bm;     /* enable pull ups for switches */
CTRL_PORT.PIN1CTRL = PORT_PULLUPEN_bm;
CTRL_PORT.PIN2CTRL = PORT_PULLUPEN_bm;
CTRL_PORT.PIN3CTRL = PORT_PULLUPEN_bm;

//CTRL_PORT.DIR = ~(SW_MASK | EN_PIN | MAXDTY_PIN);          /* Set direction Inputs Port C */
//PSU_PORT.DIR  = ~(SD_PIN);    

//    nEN_set_isc(PORT_ISC_BOTHEDGES_gc);                 /* enable int on nEN pin both edges */

}
/*--------------------------------------------------------*/
/*              End of Function: io_init                   */
/**********************************************************/




/*--------------------------------------------------------*/
/*  Read the different inputs and return value */           

inline u08_t INV_EN(void) 
{
    return(CTRL_PORT.IN  & EN_PIN);
}
/*--------------------------------------------------------*/
inline u08_t  INV_MAXDUTY(void)
{
    return(CTRL_PORT.IN  & MAXDTY_PIN);
}   
/*--------------------------------------------------------*/
 u08_t INV_DIP_SW(void)
{
    return(SW_PORT.IN  & SW_MASK);
}
/*--------------------------------------------------------*/
 u08_t INV_DIP_SW_TON(void)
{
    return(SW_PORT.IN  & SW_MASK_TON);
}
/*--------------------------------------------------------*/
 u08_t INV_DIP_SW_SOFTATART(void)
{
    return(SW_PORT.IN  & SW_MASK_SOFTSTART)>>2;
}

 /*--------------------------------------------------------*/
inline u08_t INV_SHUT_DOWN(void)
{
    return(PSU_PORT.IN  & SD_PIN);
}
/*--------------------------------------------------------*/
//inline u08_t SOFT_START_EN(void) 
//{
//    return(SW_PORT.IN  & SOFTSTART_PIN);
//}
/*--------------------------------------------------------*/

/*--------------------------------------------------------*/
/*  End of inline functions                                */
/*--------------------------------------------------------*/


  /**********************************************************/
/*  Name        : data_init           		                */
/*  Parameters  : void                                       */
/*  Returns     : none                                       */
/*  Function    : to set default values for system data and vars  */
/*--------------------------------------------------------*/
void data_init (void)
{
//   TCA0.SINGLE.PER = PWM_TOP_MAX;                      /* Set the TOP value for the timer ro roll over back to 0 */
    Dead_time_u8 = PWM_DEAD_TIME;                       /* set dead time */
    softstart= 0;                                      /* init soft start */
    softstart_old = -1;
    Pwm_old_u16 = -1;

    softstart_max = rd_new_softstart();
    softstop_max = SOFTSTOP;
 //   Pwm_A_u16 = rd_new_PWM();                        /* PWM_A turn on time */  
 //   pwm_ui = pwm_ton_tbl[ INV_DIP_SW_TON()];            /* get the max on time from the dip sw */
 //   pwm_ui = pwm_freq_tbl[ INV_DIP_SW_TON()];            /* get the max on time from the dip sw */

    
    TCA0.SINGLE.PER = pwm_tbl[ INV_DIP_SW_TON()];                      /* Set the TOP value for the timer ro roll over back to 0 */
	TCA0.SINGLE.CMP0 = PWM_DEAD_TIME; /* Dead Time at start of cycle allow previous to turn OFF*/
    TCA0.SINGLE.CMP1 = pwm_freq_tbl[ INV_DIP_SW_TON()];            /* get the max on time from the dip sw */
    TCA0.SINGLE.CMP2 = PWM_MAX_LEVEL; /* Compare Register 2: 0x400 */
	TCA0.SINGLE.CNT  = PWM_MIN_LEVEL;     /* Count: 0x0 */

     
    SD_wait_cntr = 0;
//    if( softstart < Pwm_A_u16 )   /* soft start stepping up to desired level.*/
//        {
//        set_PWM(softstart);
//        softstart += softstart_step;
//        }
}   
/*--------------------------------------------------------*/
/*  End  data_init                                */
/*--------------------------------------------------------*/

/**********************************************************/
/*  Name        : rd_new_PWM           		                */
/*  Parameters  : void                                       */
/*  Returns     : unsigned int                               */
/*  Function    : to set the PWM based on the dip SW 1,2      */
/*--------------------------------------------------------*/
unsigned int rd_new_PWM (void)
{
//    unsigned int pwm_ui;
//    unsigned int i;                     /* local temp var */
//   unsigned long l,m;                     /* local temp var */
   
   pwm_ui = Pwm_A_u16; 
 /*---- set the softstart step size length */
    if(softstart != softstart_old )
        {
        softstart_old = softstart;
     
        pwm_ui = pwm_ton_tbl[ INV_DIP_SW_TON()];            /* get the max on time from the dip sw */
        softstart_max = rd_new_softstart();           /* get the softstart time from the dip sw */
        softstop_max = SOFTSTOP;
        m = softstart_max;
        l = (unsigned long)pwm_ui * (unsigned long)softstart;                 /* on_time  * softstart step number */
        l /= m; 
        pwm_ui = (unsigned int)l;

        if (pwm_ui > Dead_time_u8)
            {
            pwm_ui -= Dead_time_u8;                            /* remove dead time to ensure no over lap */
            }

        }   
    
    return (pwm_ui);
}   
/*--------------------------------------------------------*/
/*  End  rd_new_PWM                                */
/*--------------------------------------------------------*/

/**********************************************************/
/*  Name        : set_PWM           		                */
/*  Parameters  : unsigned int new_pwm                      */
/*  Returns     : none                                       */
/*  Function    : to set the PWM Values                       */
/*                  only update if different from previous setting*/
/*--------------------------------------------------------*/
void set_PWM (unsigned int new_pwm)
{
    unsigned int new_pwm_t;
    if ( Pwm_old_u16 != new_pwm )
        {
        new_pwm_t = PWM_MAX_LEVEL - new_pwm;
        TCA0.SINGLE.CMP0 = new_pwm_t;            /* WO0 ON   Compare Register 0: 0x100 */
        TCA0.SINGLE.CMP1 = PWM_MAX_LEVEL;        /* WO0 OFF  Compare Register 1: 0x200 */
        TCA0.SINGLE.CMP2 = (PWM_MAX_LEVEL + new_pwm_t);            /* WO1 ON   Compare Register 2: 0x400 */
        Run_set_level(true);
        Pwm_old_u16 = new_pwm;
        }
}   
/*--------------------------------------------------------*/
/*  End  set_PWM                                        */
/*--------------------------------------------------------*/

/**********************************************************/
/*  Name        : set_output_5Khz           		                */
/*  Parameters  : void                                            */
/*  Returns     : none                                       */
/*  Function    : to set the output wave of 5KHz using interrupts          */
/*                this is default wave output                             */
/*                                                         */
/*--------------------------------------------------------*/

void set_output_5Khz (void)
{
 //unsigned int new_pwm_t;
        TCA0.SINGLE.PER =  BRIDGE_FREQUENCY_LOW;        /* setting interrupt vector for 5 kHz */
        TCA0.SINGLE.CMP1 = BRIDGE_ON_TIME_LOW_FREQ;     /* setting duty cycle for output */
}

/*--------------------------------------------------------*/
/*  End set_output_5Khz                                 */
/*-------------------------------------------------------*/

/*-------------------------------------------------------*/
/*  Name        : set_output_31Khz                  */
/*  Parameters  : void                      */
/*  Returns     : none                                  */
/*  Function    : to set the output wave to 31KHz by  */
/*                changing the TCA0 settings     */

void set_output_31Khz (void)
{
        TCA0.SINGLE.PER =  BRIDGE_FREQUENCY_HIGH;       /* setting interrupt vector for 31 KHz */
        TCA0.SINGLE.CMP1 = BRIDGE_ON_TIME_HIGH_FREQ;    /* setting duty cycle for output */
}
 /*--------------------------------------------------------*/
/*  End  set_output_31Khz                                        */
/*--------------------------------------------------------*/


/**********************************************************/
/*  Name        : rd_new_softstart           		        */
/*  Parameters  : void                                       */
/*  Returns     : unsigned int                               */
/*  Function    : to set the softstart value based on dip SW 3,4       */
/*--------------------------------------------------------*/
unsigned int rd_new_softstart (void)
{
unsigned int softstart_t;

softstart_t = pwm_softstart_tbl[ INV_DIP_SW_SOFTATART()];            /* get the softstart from the dip sw */
 
return (softstart_t);
}
/*--------------------------------------------------------*/
/*  End  rd_new_softstart                                        */
/*--------------------------------------------------------*/


/**********************************************************/
/* END OF FILE Inv_Ctrlr.c                                */
/**********************************************************/

