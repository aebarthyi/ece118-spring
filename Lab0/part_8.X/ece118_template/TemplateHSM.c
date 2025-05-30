/*
 * File: TemplateSubHSM.c
 * Author: J. Edward Carryer
 * Modified: Gabriel Elkaim and Soja-Marie Morgens
 *
 * Template file to set up a Heirarchical State Machine to work with the Events and
 * Services Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the names
 * will have to be changed to match your code.
 *
 * There is another template file for the SubHSM's that is slightly differet, and
 * should be used for all of the subordinate state machines (flat or heirarchical)
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
#include "TemplateSubHSM.h" //#include all sub state machines called
#include "roach.h"
/*******************************************************************************
 * PRIVATE #DEFINES                                                            *
 ******************************************************************************/
//Include any defines you need to do

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
#define FLEFT_BUMP_MASK (1)
#define FRIGHT_BUMP_MASK (1<<1)
#define RLEFT_BUMP_MASK (1<<2)
#define RRIGHT_BUMP_MASK (1<<3)

typedef enum {
    InitPState,
    Hidden,
    Move,
    SpinLeft,
    SpinRight,
    Backup,
} TemplateHSMState_t;

static const char *StateNames[] = {
	"InitPState",
	"Hidden",
    "Move",
    "SpinLeft",
    "SpinRight",
    "Backup"
};


/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine
   Example: char RunAway(uint_8 seconds);*/
/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static TemplateHSMState_t CurrentState = InitPState; // <- change enum name to match ENUM
static uint8_t MyPriority;


/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTemplateHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTemplateFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitTemplateHSM(uint8_t Priority)
{
    MyPriority = Priority;
    // put us into the Initial PseudoState
    CurrentState = InitPState;
    // post the initial transition event
    if (ES_PostToService(MyPriority, INIT_EVENT) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/**
 * @Function PostTemplateHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *        will be used inside ES_Configure to point to which queue events should
 *        be posted to. Remember to rename to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PostTemplateHSM(ES_Event ThisEvent)
{
    return ES_PostToService(MyPriority, ThisEvent);
}

/**
 * @Function RunTemplateHSM(ES_Event ThisEvent)
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
ES_Event RunTemplateHSM(ES_Event ThisEvent)
{
    static int rightMotorSpeed;
    static int leftMotorSpeed;
    uint8_t makeTransition = FALSE; // use to flag transition
    TemplateFSMState_t nextState; // <- need to change enum type here
    //ES_Tattle(); // trace call stack
    static unsigned char lastBumperState;
    switch (CurrentState) {
    case InitPState: // If current state is initial Psedudo State
        if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
        {
            // this is where you would put any actions associated with the
            // transition from the initial pseudo-state into the actual
            // initial state

            // now put the machine into the actual initial state
            nextState = Hidden;
            makeTransition = TRUE;
        }
        printf("\r\nwe are in the init pseudo state");
        break;

    case Hidden: // in the first state, replace this with appropriate state
        if (ThisEvent.EventType == LIGHT_SENSOR_LIGHT)//we are in light
        {
            // this is where you would put any actions associated with the
            // transition from the initial pseudo-state into the actual
            // initial state

            // now put the machine into the actual initial state
            nextState = Move;
            makeTransition = TRUE;
        } else if(ThisEvent.EventType == LIGHT_SENSOR_DARK){
            nextState = Hidden;
            makeTransition = FALSE;
        }
        leftMotorSpeed = 0;
        rightMotorSpeed = 0;
        printf("\r\nwe are in the hidden state");
        break;


    case Move: // in the first state, replace this with appropriate state
        leftMotorSpeed = 100;
        rightMotorSpeed = 100;
        if (ThisEvent.EventType == LIGHT_SENSOR_DARK)//we are in light
        {
            // this is where you would put any actions associated with the
            // transition from the initial pseudo-state into the actual
            // initial state

            // now put the machine into the actual initial state
            nextState = Hidden;
            makeTransition = TRUE;
        } else if(ThisEvent.EventType == LIGHT_SENSOR_LIGHT){
            nextState = Move;
            makeTransition = FALSE;
        } else if(ThisEvent.EventType == BUMPERS_BUMPED){
                lastBumperState = ThisEvent.EventParam;
                nextState = Backup;
                makeTransition = TRUE;
        }
        printf("\r\nwe are in the move state");
        break;
        
    case Backup:
        leftMotorSpeed = -100;
        rightMotorSpeed = -100;
        
        if (ThisEvent.EventType == ES_TIMEOUT)//we are in light
        {
            if(lastBumperState & FRIGHT_BUMP_MASK){
                nextState = SpinLeft;
                makeTransition = TRUE;
            }else if(lastBumperState & FLEFT_BUMP_MASK){
                nextState = SpinRight;
                makeTransition = TRUE;
            }
        } else if(ThisEvent.EventType == ES_TIMERACTIVE){
            
        } else {
            ES_Timer_InitTimer(1, 1000);
        }
        printf("\r\nwe are in the backup state");
        break;
             
        
    case SpinRight: // in the first state, replace this with appropriate state
        leftMotorSpeed = 100;
        rightMotorSpeed = -100;
        if (ThisEvent.EventType == ES_TIMEOUT)//we are in light
        {
            nextState = Move;
            makeTransition = TRUE;
        } else if(ThisEvent.EventType == ES_TIMERACTIVE){
            
        } else {
            ES_Timer_InitTimer(1, 500);
        }
        printf("\r\nwe are in the spin right state");
        break;
        
    case SpinLeft: // in the first state, replace this with appropriate sta
        leftMotorSpeed = -100;
        rightMotorSpeed = 100;
        if (ThisEvent.EventType == ES_TIMEOUT)//we are in light
        {
            nextState = Move;
            makeTransition = TRUE;
        } else if(ThisEvent.EventType == ES_TIMERACTIVE){
            
        } else {
            ES_Timer_InitTimer(1, 500);
        }
        printf("\r\nwe are in the spin left state");
        break;

    default: // all unhandled states fall into here
        break;
    } // end switch on Current State
    Roach_LeftMtrSpeed(leftMotorSpeed);
    Roach_RightMtrSpeed(rightMotorSpeed);
    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunTemplateFSM(EXIT_EVENT);
        CurrentState = nextState;
        RunTemplateFSM(ENTRY_EVENT);
    }
    //ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/
