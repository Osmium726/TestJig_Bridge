/**********************************************************/
/* Includes                                               */ 
/**********************************************************/


#define uchr_p   unsigned char *
#define chr_p    char *


#ifndef F_CPU
#define F_CPU 5000000
#endif
/* -- System Includes --------------------------------------------*/
#include	<ctype.h>	// for monitor 
#include	<stdlib.h>
#include    <stdio.h>
#include	<string.h>
#include	<math.h>
#include    <atomic.h>


/* --- AVR Includes ------------------------------------------*/
#include <atmel_start.h>
//#include <usart_basic_example.h>

//#include    <avr/builtins.h>
//#include    <avr/io.h>
// #include    <avr/iotn417.h>

#include    <usart_basic.h>

/* --- Project Includes ------------------------------------------*/
#include "MDK_types.h"

#include    "Inv_Ctrlr_io.h"
#include    "Inv_Ctrlr.h"


#define _ISR_AUTO_PSV __attribute__((interrupt, auto_psv))
#define _ISR_NO_AUTO_PSV __attribute__((interrupt, no_auto_psv))

/**********************************************************/
/* END OF FILE includes.h                                 */
/**********************************************************/
