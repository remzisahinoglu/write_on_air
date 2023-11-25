// yedi ledli gösterge
// 12.09.2007
// yazan = Remzi ÞAHÝNOÐLU
#if defined (__PCM__)
#include <16F628A.h>
#use delay(clock=4000000)
#fuses NOWDT,PUT,NOLVP,NOBROWNOUT,NOMCLR,INTRC_IO,NOPROTECT
#endif

void main()
{
   output_b(0);
   while(TRUE)         // YASÝN kelimesinin kodlanmýþ hali
   {
      output_b(0b00000011);   delay_ms(3);
      output_b(0b00000100);   delay_ms(3);
      output_b(0b01111000);   delay_ms(3);
      output_b(0b00000100);   delay_ms(3);
      output_b(0b00000011);   delay_ms(3);
      
      output_b(0b00000000);   delay_ms(3);
      output_b(0b01111100);   delay_ms(3);
      output_b(0b00010010);   delay_ms(3);
      output_b(0b00010001);   delay_ms(3);
      output_b(0b00010010);   delay_ms(3);
      output_b(0b01111100);   delay_ms(3);
      
      output_b(0b00000000);   delay_ms(3);  
      output_b(0b00100110);   delay_ms(3);
      output_b(0b01001001);   delay_ms(3);
      output_b(0b01001001);   delay_ms(3);
      output_b(0b01010001);   delay_ms(3);
      output_b(0b00100010);   delay_ms(3);
      
      output_b(0b00000000);   delay_ms(3);
      output_b(0b01111101);   delay_ms(3);
      
      output_b(0b00000000);   delay_ms(3);
      output_b(0b01111111);   delay_ms(3);
      output_b(0b00000110);   delay_ms(3);
      output_b(0b00001000);   delay_ms(3);
      output_b(0b00110000);   delay_ms(3);
      output_b(0b01111111);   delay_ms(3);
      
      output_b(0b00000000);
      delay_ms(150);           
   }
}
