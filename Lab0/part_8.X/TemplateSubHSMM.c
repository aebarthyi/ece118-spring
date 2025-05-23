/*
 * File: TemplateSubHSM.c
 * Author: J. Edward Carryer
 * Modified: Gabriel H Elkaim
 *
 * Template file to set up a Heirarchical State Machine to work with the Events and
 * Services Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the names
 * will have to be changed to match your code.
 *
 * There is for a substate machine. Make sure it has a unique name
 *
 * This is provided as an example and a good place to start.
 *
 * History
 * When           Who     What/Why
 * -------------- ---     --------
 * 09/13/13 15:17 ghe      added tattletail functionality and recursive calls
 * 01/15/12 11:12 jec      revisions for Gen2 framework
 * 11/07/11 11:26 jec      made the queue static
 * 10/30/11 17:59 jec      fixed references to CurrentEvent in RunTemplateSM()
 * 10/23/11 18:20 jec      began conversion from SMTemplate.c (02/20/07 rev)
 */


/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include "ES_Framework.h"
#include "BOARD.h"
#include "TemplateHSM.h"
#include "TemplateSubHSMM.h"
#include "roach.h"
#include "stdio.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
#define FLEFT_BUMP_MASK (1)
#define FRIGHT_BUMP_MASK (1<<1)
#define RLEFT_BUMP_MASK (1<<2)
#define RRIGHT_BUMP_MASK (1<<3)

typedef enum {
    InitPSubState,
    MoveState,
    BackupState,
    SpinRight,
    SpinLeft,
    DanceState,
    ExitState
} TemplateSubHSMState_t;

static const char *StateNames[] = {
    "InitPSubState",
    "MoveState",
    "BackupState",
    "TurnRight",
    "TurnLeft",
    "DanceState",
    "ExitState"
};



/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine */

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static TemplateSubHSMState_t CurrentState = InitPSubState; // <- change name to match ENUM
static uint8_t MyPriority;


/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTemplateSubHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTemplateFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitTemplateSubHSMM(void)
{
    ES_Event returnEvent;

    CurrentState = InitPSubState;
    returnEvent = RunTemplateSubHSMM(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}

/**
 * @Function RunTemplateSubHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This function is where you implement the whole of the heirarchical state
 *        machine, as this is called any time a new event is passed to the event
 *        queue. This function will be called recursively to implement the correct
 *        order for a state transition to be: exit current state -> enter next state
 *        using the ES_EXIT and ES_ENTRY events.
 * @note Remember to rename to something appropriate.
 *       The lower level state machines are run first, to see if the event is dealt
 *       with there rather than at the current level. ES_EXIT and ES_ENTRY events are
 *       not consumed as these need to pass pack to the higher level state machine.
 * @author J. Edward Carryer, 2011.10.23 19:25
 * @author Gabriel H Elkaim, 2011.10.23 19:25 */
ES_Event RunTemplateSubHSMM(ES_Event ThisEvent)
{
    static unsigned char lastBumperState;
    uint8_t makeTransition = FALSE; // use to flag transition
    TemplateSubHSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
    case InitPSubState: // If current state is initial Psedudo State
        if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
        {
            // this is where you would put any actions associated with the
            // transition from the initial pseudo-state into the actual
            // initial state

            // now put the machine into the actual initial state
            nextState = MoveState;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;
        
    case MoveState:
        if(ThisEvent.EventType == ES_ENTRY){
            Roach_LeftMtrSpeed(100);
            Roach_RightMtrSpeed(100);
            ES_Timer_InitTimer(0, 5000);
        } else if (ThisEvent.EventType == ES_TIMEOUT){
            nextState = DanceState;
            makeTransition = TRUE;
        } else if (ThisEvent.EventType == LIGHT_SENSOR_DARK){
            nextState = ExitState;
            makeTransition = TRUE;
        } else if(ThisEvent.EventType == BUMPERS_BUMPED){
            lastBumperState = ThisEvent.EventParam;
            nextState = BackupState;
            makeTransition = TRUE;
        } else if(ThisEvent.EventType == ES_EXIT){
            Roach_LeftMtrSpeed(0);
            Roach_RightMtrSpeed(0);
        }
        printf("\r\nwe are in the move state");
        break;
        
    case BackupState:
        if(ThisEvent.EventType == ES_ENTRY){
            Roach_LeftMtrSpeed(-100);
            Roach_RightMtrSpeed(-100);
            ES_Timer_InitTimer(0, 1000);
        } else if (ThisEvent.EventType == ES_TIMEOUT)//we are in light
        {
            if(lastBumperState & FRIGHT_BUMP_MASK){
                nextState = SpinLeft;
                makeTransition = TRUE;
            }else if(lastBumperState & FLEFT_BUMP_MASK){
                nextState = SpinRight;
                makeTransition = TRUE;
            }
            else{
                nextState = MoveState;
                makeTransition = TRUE;
            }
        }
        break;
        
    case SpinRight: // in the first state, replace this with appropriate state
        if(ThisEvent.EventType == ES_ENTRY){
            Roach_LeftMtrSpeed(100);
            Roach_RightMtrSpeed(-100);
            ES_Timer_InitTimer(0, 1000);
        } else if (ThisEvent.EventType == ES_TIMEOUT)//we are in light
        {
            nextState = MoveState;
            makeTransition = TRUE;
        }
        break;
        
    case SpinLeft: // in the first state, replace this with appropriate sta
        if(ThisEvent.EventType == ES_ENTRY){
            Roach_LeftMtrSpeed(-100);
            Roach_RightMtrSpeed(100);
            ES_Timer_InitTimer(0, 1000);
        } else if (ThisEvent.EventType == ES_TIMEOUT)//we are in light
        {
            nextState = MoveState;
            makeTransition = TRUE;
        }
        break;

    case DanceState: // in the first state, replace this with correct name
        if(ThisEvent.EventType == ES_ENTRY){
            ES_Timer_InitTimer(1, 4000);
            Roach_LeftMtrSpeed(-100);
            Roach_RightMtrSpeed(100);
        } else if (ThisEvent.EventType == ES_TIMEOUT && ThisEvent.EventParam == 1)//we are in light
        {
            nextState = MoveState;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        printf("\r\nwe are in the dance sub state");
        break;
        
    case ExitState:
        // Process exit state events
        if (ThisEvent.EventType == ES_ENTRY) {
            // For example: stop timers or perform shutdown routines here.
            nextState = MoveState;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            ES_Timer_StopTimer(1);
        }
        break;
        
    default: // all unhandled states fall into here
        break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunTemplateSubHSMM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunTemplateSubHSMM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/

