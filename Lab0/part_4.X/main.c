#include <BOARD.h>
#include <stdio.h>
#include <roach.h>
#include <serial.h>

#define FLEFT_BUMP_MASK (1)
#define FRIGHT_BUMP_MASK (1<<1)
#define RLEFT_BUMP_MASK (1<<2)
#define RRIGHT_BUMP_MASK (1<<3)

#define DELAY(x)    for (wait = 0; wait <= x; wait++) {asm("nop");}
#define A_BIT       18300
#define A_BIT_MORE  36600
#define YET_A_BIT_LONGER (A_BIT_MORE<<2)
#define A_LOT       183000
#define NUM_TIMES_REPEAT_LED 5
#define MOTOR_TIME (A_LOT<<2)

#define LOW_BAT 263
#define HIGH_BAT 310

#define NUMLEDS 12

void FlashLEDBar(uint8_t numtimes)
{
    unsigned int wait, i;
    Roach_LEDSSet(0);
    for (i = 0; i < numtimes; i++) {
        Roach_LEDSSet(0xFFF);
        DELAY(YET_A_BIT_LONGER);
        Roach_LEDSSet(0x000);
        DELAY(YET_A_BIT_LONGER);
    }
}

int main(void){
    BOARD_Init();
    Roach_Init();
    SERIAL_Init();

    unsigned int wait;
    unsigned int i, j;
    unsigned int scaledValue;
    int motorSpeedRight, motorSpeedLeft;
    char keyInput, stopInput;
    unsigned char bumperStatus;
    printf("\r\nWelcome to Andrew's custom test harness");
    
    Roach_LEDSSet(0);
    printf("\r\nTo test a roach, press a key.  Each key press runs a specific test.");
    printf("\r\n\tW: move the roach forwards");
    printf("\r\n\tS: move the roach backwards");
    printf("\r\n\tD: spin the roach clockwise");
    printf("\r\n\tA: spin the roach counterclockwise");
    printf("\r\n\tF: test the bumpers");
    printf("\r\n\tR: test the light sensor");
    printf("\r\n\tC: test the light bar");
    while (1) {
        // wait for key press
        printf("\r\nEnter key:");
        while (1) {
            if (IsReceiveEmpty() == FALSE) {
                keyInput = GetChar();
                break;
            }
        }
        
        switch (keyInput) {

            case 'w': // move roach forward
                printf("\r\nMoving forward");
                motorSpeedRight = 50;
                motorSpeedLeft = 50;
                Roach_LeftMtrSpeed(motorSpeedLeft);
                Roach_RightMtrSpeed(motorSpeedRight);
                DELAY(MOTOR_TIME);
                Roach_LeftMtrSpeed(0);
                Roach_RightMtrSpeed(0);
                break;

            case 's': // move roach backwards
                printf("\r\nMoving backward");
                motorSpeedRight = -50;
                motorSpeedLeft = -50;
                Roach_LeftMtrSpeed(motorSpeedLeft);
                Roach_RightMtrSpeed(motorSpeedRight);
                DELAY(MOTOR_TIME);
                Roach_LeftMtrSpeed(0);
                Roach_RightMtrSpeed(0);
                break;

            case 'd': // spin clockwise
                printf("\r\nSpinning clockwise");
                motorSpeedRight = -50;
                motorSpeedLeft = 50;
                Roach_LeftMtrSpeed(motorSpeedLeft);
                Roach_RightMtrSpeed(motorSpeedRight);
                DELAY(MOTOR_TIME);
                Roach_LeftMtrSpeed(0);
                Roach_RightMtrSpeed(0);
                break;

            case 'a': // spin counterclockwise
                printf("\r\nSpinning counterclockwise");
                motorSpeedRight = 50;
                motorSpeedLeft = -50;
                Roach_LeftMtrSpeed(motorSpeedLeft);
                Roach_RightMtrSpeed(motorSpeedRight);
                DELAY(MOTOR_TIME);
                Roach_LeftMtrSpeed(0);
                Roach_RightMtrSpeed(0);
                break;

            case 'f': // output current bumper status
                switch(Roach_ReadBumpers()){
                    case FRIGHT_BUMP_MASK: 
                        printf("\r\nFront right bumper pushed in");
                        break;
                    case FLEFT_BUMP_MASK: 
                        printf("\r\nFront left bumper pushed in");
                        break;
                    case RRIGHT_BUMP_MASK: 
                        printf("\r\nRear right bumper pushed in");
                        break;
                    case RLEFT_BUMP_MASK: 
                        printf("\r\nRear left bumper pushed in");
                        break;
                    case (FRIGHT_BUMP_MASK | FLEFT_BUMP_MASK): 
                        printf("\r\nFront bumpers pushed in");
                        break;
                    case (RRIGHT_BUMP_MASK | RLEFT_BUMP_MASK): 
                        printf("\r\nRear bumpers pushed in");
                        break;
                    case (FRIGHT_BUMP_MASK | RRIGHT_BUMP_MASK): 
                        printf("\r\nRight bumpers pushed in");
                        break;
                    case (FLEFT_BUMP_MASK | RLEFT_BUMP_MASK): 
                        printf("\r\nLeft bumpers pushed in");
                        break;
                    default:
                        printf("\r\nNo bumpers pushed in");
                        break;
                }
                break;

            case 'r': // test light sensor
                for (i = 0; i < A_LOT >> 2; i++) {
                    scaledValue = Roach_LightLevel();
                    if (i % 10000 == 0) {
                        printf("\r\nCurrent Light Level: %d", scaledValue);
                    }
                    scaledValue *= 12;
                    scaledValue /= 1023;
                    Roach_BarGraph(scaledValue);
                }
                printf("\r\nTest finished.\n");
                break;

            case 'c': //test lightbar
                for (i = 0; i < NUM_TIMES_REPEAT_LED; i++) {
                    for (j = 0; j < NUMLEDS; j++) {
                        Roach_LEDSSet(1 << j);
                        DELAY(A_BIT_MORE);
                    }
                    Roach_LEDSSet(0);
                    DELAY(A_BIT_MORE);
                }
                Roach_LEDSSet(0x555);
                DELAY(YET_A_BIT_LONGER);
                for (i = 0; i < NUM_TIMES_REPEAT_LED; i++) {
                    Roach_LEDSSet(Roach_LEDSGet()^0xFFF); // toggle bits on LED
                    DELAY(YET_A_BIT_LONGER);
                }
                Roach_LEDSSet(0);
                break;

            default:
                printf("\r\nInvalid keypress, try again");
                break;
        }
        DELAY(A_LOT);
    }
    while (1);
}