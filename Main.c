/**********************************************************/
/*                                                        */
/*  Module         : Main.c                               */
/*  Language used  : MPLAB-X                            */
/*  Microprocessor : AtTiny / Pic24                     	*/
/*  Function       : 								      */
/*                                            			  */
/* -------------------------------------------------------*/
/*  Revision History :                                    */ 
/*  Author         Date              Reason               */
/*  Mike Kroon  	May 2023      Initial Design       		*/
/*  CathRx                                          		*/
/*  Mike Kroon      October 2009     Update to Use MOS    */
/**********************************************************/

#define MAIN_OWNER   1
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
/*  Name        : main                     			 		*/
/*  Parameters  : void                    					*/
/*  Returns     : int                                    */
/*  Function    : main system loop							 */
/*--------------------------------------------------------*/
int main(void)
{
//#include <stdio.h>
//#include <string.h>
//#include <atmel_start.h>
//#include <usart_basic_example.h>
//#include <usart_basic.h>
//#include <atomic.h>

/*- init system -------------------------------------------------*/

	/* Initializes MCU, drivers and middleware */
	atmel_start_init();
    
    io_init();              /* setup port pins */
    data_init();            /* Set the default data value for system variables and data*/

    
    ENABLE_INTERRUPTS();
   
 /*---- Main Process list ----------------------------------------------------*/

//    Run_set_level(false);       /* disable output while updating the PWM */
//   	TCA0.SINGLE.CMP0 = 0x0FFF;   /* WO0 ON   Compare Register 0: 0x100 */
//	TCA0.SINGLE.CMP1 = 0x1FFF;   /* WO0 OFF  Compare Register 1: 0x200 */
//	TCA0.SINGLE.CMP2 = 0x2FFF;// | 0x8000;   /* WO1 ON   Compare Register 2: 0x400 */
//    Run_set_level(true);

	
    
 //   timer_init();
        
//set_PWM(Pwm_A_u16);
    
    
 set_output_5Khz();  /* Read at start to set frequency and duty cycle  default */
 
 old_freq_switch = LOW_FREQUENCY_MARK;  /* set switch assumed start at 5KHz */
 
 MAIN_LOOP:
 
 while ((nEN_get_level()== PSU_ON) && ( nMAXDTY_get_level() == PSU_ON))        /* enable high run Max duty to control PSU on/off */
//        while (nEN_get_level()== PSU_ON)        /* enable high run Max duty to control PSU on/off */
        /* Use a while loop to ensure NO jitter in the run mode */
            {
     
     if(freq_select_sw() != old_freq_switch)        /* checks if switch has changed*/
     {
         if(freq_select_sw() == LOW_FREQUENCY_MARK) {  
             
             set_output_5Khz();                         /* sets low freq output */
             old_freq_switch = LOW_FREQUENCY_MARK;      /* remembers current setting */
         }
         else 
         {
             set_output_31Khz();                        /* sets high freq output */
             old_freq_switch = HIGH_FREQUENCY_MARK;     /* remembers current setting */
         }
            
     } 
 }
             
        WO0_set_level(false);           /* turns output channels off */
        WO1_set_level(false);
        
        /* stop timer */
        /* set timer to 0 */
    	TCA0.SINGLE.CNT = 0x0;     /* Count: 0x0 */
        Pwm_Drv_Channel = 0;
//        Run_set_level(true);(1) {
     
    goto MAIN_LOOP;
     
     
 
//MAIN_LOOP:  
//  	while ((nEN_get_level()== PSU_ON) && ( nMAXDTY_get_level() == PSU_ON))        /* enable high run Max duty to control PSU on/off */
//        while (nEN_get_level()== PSU_ON)        /* enable high run Max duty to control PSU on/off */
        /* Use a while loop to ensure NO jitter in the run mode */
            {
 //           if(nMAXDTY_get_level()== PSU_OFF)
//    set_PWM_1();
            }

    /* stop timer */
    /* set timer to 0 */

//        WO0_set_level(false);
//        WO1_set_level(false);
        
        

//    	 TCA0.SINGLE.CNT = 0x0;     /* Count: 0x0 */
//        Pwm_Drv_Channel = 0;
//        Run_set_level(true);
        
        
//goto MAIN_LOOP;

//    else     /* enable edge detected reset softstart*/
//        {
//        WO0_set_level(false);
//        WO1_set_level(false);
//        Run_set_level(true);
//        }

  
/*---- Main Loop ----------------------------------------------------*/
	while (1) 
    {
        
/*---- shutdown ----------------------------------------------------*/
        if (nSD_get_level() == SHUTDOWN_ACTIVE )          /* Immediate SHut down */
            {
            Run_set_level(false);           /* disable output while updating the PWM */
            WO1_set_level(false);           /* Turn off the output drives */
            WO0_set_level(false);
            softstart = 1;                  /* reset softstart */
            SD_wait_cntr = 0;               /* reset the nSD timer / counter if asserted */
            TCA0.SINGLE.CNT = 0x0;          /* Count: 0x0 */
           }
        else
            {
 /*------- turn on / run ----------------------------------------------------*/
           if (nEN_get_level() == PSU_ON )    /* if PSU on then softatart or run */
                {
                set_output_5Khz();
 
//                if(softstart < softstart_max )
//                    {
//                    Pwm_A_u16 = rd_new_PWM();
//                    }
//                  else
//                    {   
//                    Pwm_A_u16 = pwm_ton_tbl[ INV_DIP_SW_TON()];            /* get the max on time from the dip sw */
//                    }
//                 set_PWM(Pwm_A_u16);
//                 softstop = softstart;                          /* decrease from current level */
               }   
            else                                              /* soft stop then stop PWM */
 /*------- turn off / stop ----------------------------------------------------*/
               {
//               softstop = 0;        /* Diasable ramp down for DR */
//                if (softstop > 0 )
// //               if (softstop > 0 )
//                    {
//                    softstop--;
//                    Pwm_A_u16 = rd_new_PWM();
//                    set_PWM(Pwm_A_u16);
//                    }
//               else
//                    {   
                    WO1_set_level(false);           /* Turn off the output drives */
                    WO0_set_level(false);
                    softstart = 0;                  /* reset softstart */
                    softstop = 0;
                    TCA0.SINGLE.CNT = 0;          /* reset Count: 0x0 */
//                   }
                }
            }
        }
}
