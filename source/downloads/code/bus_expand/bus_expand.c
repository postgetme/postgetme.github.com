#include <reg51.h>
//#include <absacc.h>

//#define LED_REG XBYTE[0x00001]
//#define KEY_REG XBYTE[0x00002]

//unsigned char xdata led_reg _at_ 0x0001; 
//unsigned char xdata key_reg _at_ 0x0002;

#define LED_REG *(volatile unsigned char xdata *) 0x0001
#define KEY_REG *(volatile unsigned char xdata *) 0x0002

void delay_200ms(void)
{
    unsigned char i, j, k;

    i = 2;
    j = 134;
    k = 20;

    do
    {
        do
        {
            while (--k);
        } while (--j);
    } while (--i);
}

int main(void)
{
    unsigned char i = 0;

    LED_REG = 0xff;

    for (i = 0; i < 8; i++)
    {
        LED_REG = ~(0x01 << i);

        delay_200ms();
    }

    while (1)
    {
        LED_REG = KEY_REG;
    }
}
