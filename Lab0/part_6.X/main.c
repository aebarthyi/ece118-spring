
#include <BOARD.h>
#include "BetterEventChecker.h"
#include <stdio.h>
#include <roach.h>
#include <serial.h>


void main(void) {
    BOARD_Init();
    /* user initialization code goes here */
    Roach_Init();
    // Do not alter anything below this line
    int i;

    printf("\r\nEvent checking test harness for %s", __FILE__);

    while (1) {
        BetterCheckLightSensor();
        BetterCheckBumpers();
    }
}