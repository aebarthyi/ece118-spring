#include <BOARD.h>
#include <AD.h>
#include <IO_Ports.h>
#include <pwm.h>
#include <RC_Servo.h>
#include <LED.h>
#include <stepper.h>
#include <stdio.h>
#include <serial.h>
#include <xc.h>

#define DELAY(x)    for (wait = 0; wait <= x; wait++) {asm("nop");}
#define A_WEE_BIT   18300
#define A_BIT       183000
#define A_LOT       1830000

#ifdef PART_1
int main(void){
    BOARD_Init();
    SERIAL_Init();
    
    AD_Init();
    
    LED_Init();
    RC_Init();
    
    LED_AddBanks(LED_BANK1 | LED_BANK2 | LED_BANK3);
    
    AD_AddPins(AD_PORTV5);
    RC_AddPins(RC_PORTV04);
    
    uint32_t ad_val = 0;
    unsigned int wait;
    
    while(1){
        ad_val = AD_ReadADPin(AD_PORTV5);
        if(ad_val > 990){ 
            LED_SetBank(LED_BANK3, 0x0F);
        }
        else LED_SetBank(LED_BANK3, 0x00);
        if(ad_val > 750) {
            LED_SetBank(LED_BANK2, 0x0F);
        }
        else LED_SetBank(LED_BANK2, 0x00);
        if(ad_val > 250){
            LED_SetBank(LED_BANK1, 0x0F);
        }
        else LED_SetBank(LED_BANK1, 0x00);
        if(ad_val < 250) LED_SetBank(LED_BANK1 | LED_BANK2 | LED_BANK3, 0x00);
        RC_SetPulseTime(RC_PORTV04, ad_val*3);
    }
    
}
#endif

#ifdef PART_2
int main(void){
    BOARD_Init();
    SERIAL_Init();
    
    AD_Init();
    PWM_Init();
    LED_Init();
    
    LED_AddBanks(LED_BANK1 | LED_BANK2 | LED_BANK3);
    
    AD_AddPins(AD_PORTV5);
    PWM_AddPins(PWM_PORTZ06);
    
    uint32_t ad_val = 0;
    unsigned int wait;
    
    while(1){
        ad_val = AD_ReadADPin(AD_PORTV5);
        if(ad_val > 990){ 
            LED_SetBank(LED_BANK3, 0xFF);
        }
        else LED_SetBank(LED_BANK3, 0x00);
        if(ad_val > 750) {
            LED_SetBank(LED_BANK2, 0xFF);
        }
        else LED_SetBank(LED_BANK2, 0x00);
        if(ad_val > 250){
            LED_SetBank(LED_BANK1, 0xFF);
        }
        else LED_SetBank(LED_BANK1 | LED_BANK2 | LED_BANK3, 0x00);
        PWM_SetDutyCycle(PWM_PORTZ06, ad_val);
        printf("\r\n%f", ad_val / 1023.0);
        DELAY(A_BIT);
    }
}
#endif

#ifdef PART_3
int main(void){
    
    BOARD_Init();
    SERIAL_Init();

    AD_Init();
    PWM_Init();
    LED_Init();
    
    LED_AddBanks(LED_BANK1 | LED_BANK2 | LED_BANK3);
    
    AD_AddPins(AD_PORTV5);
    PWM_AddPins(PWM_PORTZ06);
    
    PORTY08_TRIS = 1;
    PORTX04_TRIS = 0;
    PORTX03_TRIS = 0;
    
    uint8_t switchOn;
    
    uint32_t ad_val = 0;
    unsigned int wait;
    
    while(1){
        ad_val = AD_ReadADPin(AD_PORTV5);
        switchOn = PORTY08_BIT;
        
        
        if(ad_val > 990){ 
            LED_SetBank(LED_BANK3, 0xFF);
        }
        else LED_SetBank(LED_BANK3, 0x00);
        if(ad_val > 750) {
            LED_SetBank(LED_BANK2, 0xFF);
        }
        else LED_SetBank(LED_BANK2, 0x00);
        if(ad_val > 250){
            LED_SetBank(LED_BANK1, 0xFF);
        }
        else LED_SetBank(LED_BANK1 | LED_BANK2 | LED_BANK3, 0x00);
        
        PWM_SetDutyCycle(PWM_PORTZ06, ad_val);
        PORTX03_TRIS = (switchOn) ? 1 : 0;
        PORTX04_TRIS = (switchOn) ? 0 : 1;
    }
    
    while (1);
}
#endif

#ifdef PART_4
int main(void){
    BOARD_Init();
    SERIAL_Init();
    AD_Init();
    PWM_Init();
    
    Stepper_Init();
    //rates go down as load applied
    //max rate for full ~ 850
    //max rate for half ~ 1700
    //max rate for wave ~ 700
    Stepper_SetRate(700);
    
    Stepper_SetSteps(FORWARD, 360);
    Stepper_StartSteps();
    while(Stepper_IsStepping()){
    }
    Stepper_SetSteps(REVERSE, 360);
    Stepper_StartSteps();
    
    while (1);
}
#endif

#ifdef PART_5
int main(void){
    BOARD_Init();
    SERIAL_Init();
    Stepper_Init();
    
    PORTZ05_LAT = 1;
    PORTZ04_TRIS = 1;
    
    Stepper_SetRate(300);
    Stepper_SetSteps(FORWARD, 500);
    Stepper_StartSteps();
    
    while(Stepper_IsStepping()){
    }
    
    PORTZ04_TRIS = 0;
    
    Stepper_SetSteps(REVERSE, 500);
    Stepper_StartSteps();
    
    while(Stepper_IsStepping()){
    }
    
    PORTZ04_TRIS = 1;
    
    Stepper_SetSteps(FORWARD, 500);
    Stepper_StartSteps();

    while (1);
}
#endif

#ifdef PART_6
int main(void){
    BOARD_Init();
    SERIAL_Init();

    while (1);
}
#endif
