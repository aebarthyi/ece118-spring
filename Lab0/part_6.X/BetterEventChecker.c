/*
 * File:   SimpleEventChecker.c
 * Author: Gabriel Hugh Elkaim
 *
 * Simple file to set up typical EventCheckers for the  Events and Services
 * Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the
 * names will have to be changed to match your code.
 *
 * This EventCheckers file will work with both FSM's and HSM's.
 *
 * Remember that EventCheckers should only return TRUE when an event has occured,
 * and that the event is a TRANSITION between two detectable differences. They
 * should also be atomic and run as fast as possible for good results.
 *
 * This file includes a test harness that will run the event detectors listed in the
 * ES_Configure file in the project, and will conditionally compile main if the macro
 * EVENTCHECKER_TEST is defined (either in the project or in the file). This will allow
 * you to check you event detectors in their own project, and then leave them untouched
 * for your project unless you need to alter their post functions.
 *
 * Created on September 27, 2013, 8:37 AM
 */

/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include "BetterEventChecker.h"
#include <ES_Events.h>
#include "AD.h"
#include <roach.h>
#include <stdio.h>

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
#define LIGHT_LOW_THRESHOLD 470
#define LIGHT_HIGH_THRESHOLD 500

#define FLEFT_BUMP_MASK (1)
#define FRIGHT_BUMP_MASK (1<<1)
#define RLEFT_BUMP_MASK (1<<2)
#define RRIGHT_BUMP_MASK (1<<3)
/*******************************************************************************
 * EVENTCHECKER_TEST SPECIFIC CODE                                                             *
 ******************************************************************************/

//#define EVENTCHECKER_TEST
#ifdef BETTER_EVENTCHECKER_TEST
#include <stdio.h>
#define SaveEvent(x) do {eventName=__func__; storedEvent=x;} while (0)

#define FLEFT_BUMP_MASK (1)
#define FRIGHT_BUMP_MASK (1<<1)
#define RLEFT_BUMP_MASK (1<<2)
#define RRIGHT_BUMP_MASK (1<<3)

static const char *eventName;
static ES_Event storedEvent;
#endif

/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this EventChecker. They should be functions
   relevant to the behavior of this particular event checker */

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                    *
 ******************************************************************************/

/* Any private module level variable that you might need for keeping track of
   events would be placed here. Private variables should be STATIC so that they
   are limited in scope to this module. */

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function SimpleCheckBattery(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function is a prototype event checker that checks the battery voltage
 *        against a fixed threshold (#defined in the .c file). Note that you need to
 *        keep track of previous history, and that the actual battery voltage is checked
 *        only once at the beginning of the function. The function will post an event
 *        of either BATTERY_CONNECTED or BATTERY_DISCONNECTED if the power switch is turned
 *        on or off with the USB cord plugged into the Uno32. Returns TRUE if there was an 
 *        event, FALSE otherwise.
 * @note Use this code as a template for your other event checkers, and modify as necessary.
 * @author Gabriel H Elkaim, 2013.09.27 09:18
 * @modified Gabriel H Elkaim/Max Dunne, 2016.09.12 20:08 */
uint8_t BetterCheckLightSensor(void) {
    static ES_EventTyp_t lastEvent = LIGHT_SENSOR_DARK;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    unsigned int scaledValue = Roach_LightLevel(); // read the battery voltage
    if (scaledValue > LIGHT_HIGH_THRESHOLD) {
        curEvent = LIGHT_SENSOR_DARK;
    } else if(scaledValue < LIGHT_LOW_THRESHOLD){
        curEvent = LIGHT_SENSOR_LIGHT;
    } else{
        curEvent = lastEvent;
    }
    if (curEvent != lastEvent) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = scaledValue;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
        switch(thisEvent.EventType){
            case LIGHT_SENSOR_DARK:
                printf("\r\nLight sensor is in dark!");
                break;
            case LIGHT_SENSOR_LIGHT:
                printf("\r\nLight sensor is in light!");
                break;
        }
    }
    return (returnVal);
}

uint8_t CheckFrontRightBumper(void) {
    static ES_EventTyp_t lastEvent = BUMPERS_UNBUMPED;
    static unsigned char lastBumperState = 0;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    unsigned char bumperState = Roach_ReadBumpers();
    
    if(bumperState & 0x2)
        curEvent = BUMPERS_BUMPED;
    else
        curEvent = BUMPERS_UNBUMPED;
    
    if (curEvent != lastEvent) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = bumperState;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
        lastBumperState = bumperState;
        
        if(bumperState & FRIGHT_BUMP_MASK){
            printf("\r\nFront right bumped");
        }else{
            printf("\r\nFront right unbumped");
        }
    }
    return (returnVal);
}

uint8_t CheckFrontLeftBumper(void) {
    static ES_EventTyp_t lastEvent = BUMPERS_UNBUMPED;
    static unsigned char lastBumperState = 0;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    unsigned char bumperState = Roach_ReadBumpers();
    
    if(bumperState & 0x1)
        curEvent = BUMPERS_BUMPED;
    else
        curEvent = BUMPERS_UNBUMPED;
    
    if (curEvent != lastEvent) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = bumperState;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
        lastBumperState = bumperState;
        
        if(bumperState & FLEFT_BUMP_MASK){
            printf("\r\nFront left bumped");
        }else{
            printf("\r\nFront left unbumped");
        }
    }
    return (returnVal);
}

uint8_t CheckRearRightBumper(void) {
    static ES_EventTyp_t lastEvent = BUMPERS_UNBUMPED;
    static unsigned char lastBumperState = 0;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    unsigned char bumperState = Roach_ReadBumpers();
    
    if(bumperState & 0x8)
        curEvent = BUMPERS_BUMPED;
    else
        curEvent = BUMPERS_UNBUMPED;
    
    if (curEvent != lastEvent) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = bumperState;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
        lastBumperState = bumperState;
        
        if(bumperState & RRIGHT_BUMP_MASK){
            printf("\r\nRear right bumped");
        }else{
            printf("\r\nRear right unbumped");
        }
    }
    return (returnVal);
}

uint8_t CheckRearLeftBumper(void) {
    static ES_EventTyp_t lastEvent = BUMPERS_UNBUMPED;
    static unsigned char lastBumperState = 0;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    unsigned char bumperState = Roach_ReadBumpers();
    
    if(bumperState & 0x4)
        curEvent = BUMPERS_BUMPED;
    else
        curEvent = BUMPERS_UNBUMPED;
    
    if (curEvent != lastEvent) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = bumperState;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
        lastBumperState = bumperState;
        
        if(bumperState & RLEFT_BUMP_MASK){
            printf("\r\nRear Left bumped");
        }else{
            printf("\r\nRear Left unbumped");
        }
    }
    return (returnVal);
}

/* 
 * The Test Harness for the event checkers is conditionally compiled using
 * the EVENTCHECKER_TEST macro (defined either in the file or at the project level).
 * No other main() can exist within the project.
 * 
 * It requires a valid ES_Configure.h file in the project with the correct events in 
 * the enum, and the correct list of event checkers in the EVENT_CHECK_LIST.
 * 
 * The test harness will run each of your event detectors identically to the way the
 * ES_Framework will call them, and if an event is detected it will print out the function
 * name, event, and event parameter. Use this to test your event checking code and
 * ensure that it is fully functional.
 * 
 * If you are locking up the output, most likely you are generating too many events.
 * Remember that events are detectable changes, not a state in itself.
 * 
 * Once you have fully tested your event checking code, you can leave it in its own
 * project and point to it from your other projects. If the EVENTCHECKER_TEST marco is
 * defined in the project, no changes are necessary for your event checkers to work
 * with your other projects.
 */
#ifdef BETTER_EVENTCHECKER_TEST
#include <stdio.h>
static uint8_t(*EventList[])(void) = {EVENT_CHECK_LIST};

void PrintEvent(void);

void main(void) {
    BOARD_Init();
    /* user initialization code goes here */
    Roach_Init();
    // Do not alter anything below this line
    int i;

    printf("\r\nEvent checking test harness for %s", __FILE__);

    while (1) {
        if (IsTransmitEmpty()) {
            for (i = 0; i< sizeof (EventList) >> 2; i++) {
                if (EventList[i]() == TRUE) {
                    PrintEvent();
                    break;
                }

            }
        }
    }
}
#endif