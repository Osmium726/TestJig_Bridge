/**********************************************************/
/*                                                        */
/*  Module         : Misc.c                               */
/*  Language used  : MPLAB C30                            */
/*  Microprocessor : PIC24FJ256                           */
/*  Function       : 								      */
/*                                            			  */
/* -------------------------------------------------------*/
/*  Revision History :                                    */ 
/*  Author         Date              Reason               */
/*  Mike Kroon               							*/
/**********************************************************/

#define MISC_OWNER   1
#include "includes.h"

/**********************************************************/
/* Local Functions 										  */
/**********************************************************/


/**********************************************************/
/*  Name        : new_fx                                  */
/*  Parameters  : none                                    */
/*  Returns     : none                                    */
/*  Function    : new function                  		*/
/*--------------------------------------------------------*/

/*--------------------------------------------------------*/
/*              End of Function: new_fx                   */
/**********************************************************/

/*--------------------------------------------------------*/
/*  bin2bcd                                               */
/*--------------------------------------------------------*/
unsigned char bin2bcd(unsigned char binary_value)
{

	unsigned char temp;
	
	temp = ((binary_value/10)<<4) | (binary_value%10);
		
	return(temp);

}


unsigned char bcd2bin(unsigned char bcd_value)
{
   char temp;
   
   temp = bcd_value; 
   temp >>= 4;
   temp &= 0x0F;

   // (Tens * 8) + (Tens * 2) + Ones
   return ((temp*10) + (bcd_value & 0x0F));

//   temp = bcd_value; 
//   temp >>= 1;
//   temp &= 0x78;
//
//   // (Tens * 8) + (Tens * 2) + Ones
//   return (temp + (temp >> 2) + (bcd_value & 0x0F));
//
}

/**************************************************************************/
/*  Name        :get_pos_in_str                                           */
/*  Parameters  :unsigned char *                                          */
/*                unsigned char pos                                       */
/*                unsigned char sync_c                                    */
/*  Returns     :unsigned int position in string                          */
/*  Scope       : System                                                  */
/*  Function    : to search a string and find a sync position             */
/*              0 = not found in string                                   */
/*------------------------------------------------------------------------*/
unsigned int get_pos_in_str(unsigned char *search_str,unsigned char pos,unsigned char sync_c)
  {
unsigned char cntr = 0;
  
  while  ((*search_str != 0 ) && ( pos > 0 ) )
       {
       if(*search_str++ == sync_c )
         {
         pos--;
         }         
     cntr++;
      }
//   while  ((search_str[cntr] != 0 ) && ( pos > 0 ) )
//       {
//       if(search_str[cntr] == sync_c )
//         {
//         pos--;
//         }         
//     cntr++;
//      }
//      
   if ( pos == 0 )
     {   
     return(cntr);
     }
  else
      {
      return(0);           // not found
      }   
}   
/*------------------------------------------------------------------------*/
/*              End of Function: get_pos_in_str                           */
/**************************************************************************/


/**********************************************************/
/*  Name        : asc2hex	                       		  */
/*  Parameters  : pointer to 2 char ascii sequence        */
/*  Returns     : single byte hex equivalant              */
/*  Function    : convert 2 byte ascii hex number to hex char*/
/*--------------------------------------------------------*/
unsigned char asc2hex(char * asc)
{
unsigned char hi,lo;

	hi = *asc;
	if ( hi > 0x60) //allow for lower case a-f
	{
		hi -= 0x20;
	}
	if (hi > 0x40)  //if ASCII A-F reduce to hex A-F
	{
		hi -= 0x37;
	}
	else
	{
		hi -= 0x30;	//else reduce ASCII 0-9 to hex 0-9
	}

	/*allow for single byte ASCII*/
	lo = *(asc+1);
	if (lo == 0) 
	{
		return (hi & 0x0f);
	}
	else
	{
//	hi = hi *16;
		hi = (hi << 4)& 0xf0;
	
	//	lo =  *(asc+1);
		if ( lo > 0x60)
		{
			lo -= 0x20;
		}
		if (lo > 0x40)
		{
			lo -= 0x37;
		}
		else
		{
			lo -= 0x30;
		}
	}
return (hi + lo);
}
/*----------------------------------------------------*/
/*  end asc2hex                                       */
/*----------------------------------------------------*/


/**********************************************************/
/*  Name        : delay                     			  */
/*  Parameters  : unsigned long delay                     */
/*  Returns     : none                                    */
/*  Function    : wait a while							  */
/*--------------------------------------------------------*/
void delay(unsigned long del)
{
while (del-- > 0);
}
/*--------------------------------------------------------*/
/*  delay                                                 */
/*--------------------------------------------------------*/


/**********************************************************/
/*  Name        : checksum				           		  */
/*  Parameters  : pointer to memory, length               */
/*  Returns     : checksum value						  */
/*     - 0 if correct checksum included. else actual sum  */
/*--------------------------------------------------------*/
unsigned char checksum (unsigned char *ptr, size_t sz)
{
unsigned char chk = 0;
    while (sz-- != 0)
        chk -= *ptr++;
    return chk;
}

/*--------------------------------------------------------*/
/*  end checksum                                          */
/*--------------------------------------------------------*/



/**********************************************************/
/* END OF FILE Misc.c                                    */
/**********************************************************/
