#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-part_6.mk)" "nbproject/Makefile-local-part_6.mk"
include nbproject/Makefile-local-part_6.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=part_6
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab0.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab0.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c ece118_base/BOARD.c ece118_base/AD.c ece118_base/serial.c ece118_base/roach.c ece118_base/pwm.c ece118_template/SimpleEventChecker.c ece118_base/ES_Framework.c ece118_base/ES_Timers.c ece118_base/ES_CheckEvents.c ece118_base/ES_KeyboardInput.c ece118_base/ES_LookupTables.c ece118_base/ES_PostList.c ece118_base/ES_Queue.c ece118_base/ES_TattleTale.c ece118_base/ES_TimerService.c ece118_base/RC_Servo.c ece118_template/BetterEventChecker.c ece118_template/SimpleService.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/ece118_base/BOARD.o ${OBJECTDIR}/ece118_base/AD.o ${OBJECTDIR}/ece118_base/serial.o ${OBJECTDIR}/ece118_base/roach.o ${OBJECTDIR}/ece118_base/pwm.o ${OBJECTDIR}/ece118_template/SimpleEventChecker.o ${OBJECTDIR}/ece118_base/ES_Framework.o ${OBJECTDIR}/ece118_base/ES_Timers.o ${OBJECTDIR}/ece118_base/ES_CheckEvents.o ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o ${OBJECTDIR}/ece118_base/ES_LookupTables.o ${OBJECTDIR}/ece118_base/ES_PostList.o ${OBJECTDIR}/ece118_base/ES_Queue.o ${OBJECTDIR}/ece118_base/ES_TattleTale.o ${OBJECTDIR}/ece118_base/ES_TimerService.o ${OBJECTDIR}/ece118_base/RC_Servo.o ${OBJECTDIR}/ece118_template/BetterEventChecker.o ${OBJECTDIR}/ece118_template/SimpleService.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/ece118_base/BOARD.o.d ${OBJECTDIR}/ece118_base/AD.o.d ${OBJECTDIR}/ece118_base/serial.o.d ${OBJECTDIR}/ece118_base/roach.o.d ${OBJECTDIR}/ece118_base/pwm.o.d ${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d ${OBJECTDIR}/ece118_base/ES_Framework.o.d ${OBJECTDIR}/ece118_base/ES_Timers.o.d ${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d ${OBJECTDIR}/ece118_base/ES_LookupTables.o.d ${OBJECTDIR}/ece118_base/ES_PostList.o.d ${OBJECTDIR}/ece118_base/ES_Queue.o.d ${OBJECTDIR}/ece118_base/ES_TattleTale.o.d ${OBJECTDIR}/ece118_base/ES_TimerService.o.d ${OBJECTDIR}/ece118_base/RC_Servo.o.d ${OBJECTDIR}/ece118_template/BetterEventChecker.o.d ${OBJECTDIR}/ece118_template/SimpleService.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/ece118_base/BOARD.o ${OBJECTDIR}/ece118_base/AD.o ${OBJECTDIR}/ece118_base/serial.o ${OBJECTDIR}/ece118_base/roach.o ${OBJECTDIR}/ece118_base/pwm.o ${OBJECTDIR}/ece118_template/SimpleEventChecker.o ${OBJECTDIR}/ece118_base/ES_Framework.o ${OBJECTDIR}/ece118_base/ES_Timers.o ${OBJECTDIR}/ece118_base/ES_CheckEvents.o ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o ${OBJECTDIR}/ece118_base/ES_LookupTables.o ${OBJECTDIR}/ece118_base/ES_PostList.o ${OBJECTDIR}/ece118_base/ES_Queue.o ${OBJECTDIR}/ece118_base/ES_TattleTale.o ${OBJECTDIR}/ece118_base/ES_TimerService.o ${OBJECTDIR}/ece118_base/RC_Servo.o ${OBJECTDIR}/ece118_template/BetterEventChecker.o ${OBJECTDIR}/ece118_template/SimpleService.o

# Source Files
SOURCEFILES=main.c ece118_base/BOARD.c ece118_base/AD.c ece118_base/serial.c ece118_base/roach.c ece118_base/pwm.c ece118_template/SimpleEventChecker.c ece118_base/ES_Framework.c ece118_base/ES_Timers.c ece118_base/ES_CheckEvents.c ece118_base/ES_KeyboardInput.c ece118_base/ES_LookupTables.c ece118_base/ES_PostList.c ece118_base/ES_Queue.c ece118_base/ES_TattleTale.c ece118_base/ES_TimerService.c ece118_base/RC_Servo.c ece118_template/BetterEventChecker.c ece118_template/SimpleService.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-part_6.mk ${DISTDIR}/Lab0.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.o: main.c  .generated_files/flags/part_6/d88871a17e90d33d19577376e5f5ee95577f869c .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/BOARD.o: ece118_base/BOARD.c  .generated_files/flags/part_6/97226d1df6bf9f4ddd19311dd208a8e88c36ecc1 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/BOARD.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/BOARD.o.d" -o ${OBJECTDIR}/ece118_base/BOARD.o ece118_base/BOARD.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/AD.o: ece118_base/AD.c  .generated_files/flags/part_6/435fad1d739c94007009f1c866cd0bad31cea5a8 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/AD.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/AD.o.d" -o ${OBJECTDIR}/ece118_base/AD.o ece118_base/AD.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/serial.o: ece118_base/serial.c  .generated_files/flags/part_6/f4463b980bc50a4218312cbaa58a989579d0b738 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/serial.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/serial.o.d" -o ${OBJECTDIR}/ece118_base/serial.o ece118_base/serial.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/roach.o: ece118_base/roach.c  .generated_files/flags/part_6/63b52fbcffc3304b7927ac88cd796df1ceeae4be .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/roach.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/roach.o.d" -o ${OBJECTDIR}/ece118_base/roach.o ece118_base/roach.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/pwm.o: ece118_base/pwm.c  .generated_files/flags/part_6/aa3264609c0fb4012db68726c27654f2b2659f0a .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/pwm.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/pwm.o.d" -o ${OBJECTDIR}/ece118_base/pwm.o ece118_base/pwm.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/SimpleEventChecker.o: ece118_template/SimpleEventChecker.c  .generated_files/flags/part_6/85f4e0e08b1cfbd07ac02b5af650dce22dd2fa3c .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d" -o ${OBJECTDIR}/ece118_template/SimpleEventChecker.o ece118_template/SimpleEventChecker.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Framework.o: ece118_base/ES_Framework.c  .generated_files/flags/part_6/ae866feececd372c4831742740594d2859633eb4 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Framework.o.d" -o ${OBJECTDIR}/ece118_base/ES_Framework.o ece118_base/ES_Framework.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Timers.o: ece118_base/ES_Timers.c  .generated_files/flags/part_6/5b24533e93f97c8ada993ea73e6c6ed51426dcb1 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Timers.o.d" -o ${OBJECTDIR}/ece118_base/ES_Timers.o ece118_base/ES_Timers.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_CheckEvents.o: ece118_base/ES_CheckEvents.c  .generated_files/flags/part_6/66e8151c3c87926e481e4910009b82fd76188273 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d" -o ${OBJECTDIR}/ece118_base/ES_CheckEvents.o ece118_base/ES_CheckEvents.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_KeyboardInput.o: ece118_base/ES_KeyboardInput.c  .generated_files/flags/part_6/eebc17798d434cb3b1c068e468756c2684b91616 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o ece118_base/ES_KeyboardInput.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_LookupTables.o: ece118_base/ES_LookupTables.c  .generated_files/flags/part_6/c792c94049defcbf24bbd6adf5163a708b7c1486 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_LookupTables.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_LookupTables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_LookupTables.o.d" -o ${OBJECTDIR}/ece118_base/ES_LookupTables.o ece118_base/ES_LookupTables.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_PostList.o: ece118_base/ES_PostList.c  .generated_files/flags/part_6/86723839f3c28af2f36289247e2237316e32c20 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_PostList.o.d" -o ${OBJECTDIR}/ece118_base/ES_PostList.o ece118_base/ES_PostList.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Queue.o: ece118_base/ES_Queue.c  .generated_files/flags/part_6/2bf007785cbe70399fa39fcf097f559b962b6df5 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Queue.o.d" -o ${OBJECTDIR}/ece118_base/ES_Queue.o ece118_base/ES_Queue.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_TattleTale.o: ece118_base/ES_TattleTale.c  .generated_files/flags/part_6/e95734a9a2194e40a5231e1ea9f868445cb53a2c .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_TattleTale.o.d" -o ${OBJECTDIR}/ece118_base/ES_TattleTale.o ece118_base/ES_TattleTale.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_TimerService.o: ece118_base/ES_TimerService.c  .generated_files/flags/part_6/7456a26f95c680556abd72a344dd8c7aeeba8b0a .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TimerService.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TimerService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_TimerService.o.d" -o ${OBJECTDIR}/ece118_base/ES_TimerService.o ece118_base/ES_TimerService.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/RC_Servo.o: ece118_base/RC_Servo.c  .generated_files/flags/part_6/d23ef0ed80d63d96668ea5bbb5e23109c40bb6c1 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/RC_Servo.o.d" -o ${OBJECTDIR}/ece118_base/RC_Servo.o ece118_base/RC_Servo.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/BetterEventChecker.o: ece118_template/BetterEventChecker.c  .generated_files/flags/part_6/c12808ee152b279f6bacb7863e91931e46693dd4 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/BetterEventChecker.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/BetterEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/BetterEventChecker.o.d" -o ${OBJECTDIR}/ece118_template/BetterEventChecker.o ece118_template/BetterEventChecker.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/SimpleService.o: ece118_template/SimpleService.c  .generated_files/flags/part_6/a913c6a0e340227523b2e358fd1f594df3baae6a .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleService.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/SimpleService.o.d" -o ${OBJECTDIR}/ece118_template/SimpleService.o ece118_template/SimpleService.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/main.o: main.c  .generated_files/flags/part_6/55877187a64f3dc8f7a9a1b49bb76fc0738a7212 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/BOARD.o: ece118_base/BOARD.c  .generated_files/flags/part_6/fa210e2fcdbefd78f5dfebf6c4e656aeb998dab8 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/BOARD.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/BOARD.o.d" -o ${OBJECTDIR}/ece118_base/BOARD.o ece118_base/BOARD.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/AD.o: ece118_base/AD.c  .generated_files/flags/part_6/eb114196feb5147a2eef93f631e995f5e7d48431 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/AD.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/AD.o.d" -o ${OBJECTDIR}/ece118_base/AD.o ece118_base/AD.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/serial.o: ece118_base/serial.c  .generated_files/flags/part_6/fb48299ecbecef886dd7cf03bf92e85d81c4476f .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/serial.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/serial.o.d" -o ${OBJECTDIR}/ece118_base/serial.o ece118_base/serial.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/roach.o: ece118_base/roach.c  .generated_files/flags/part_6/9544ce1d6603175b441eadbd7abbf89e9cf838b9 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/roach.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/roach.o.d" -o ${OBJECTDIR}/ece118_base/roach.o ece118_base/roach.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/pwm.o: ece118_base/pwm.c  .generated_files/flags/part_6/17a8ed193cc5cdfcd6fc394674d85164258c41dd .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/pwm.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/pwm.o.d" -o ${OBJECTDIR}/ece118_base/pwm.o ece118_base/pwm.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/SimpleEventChecker.o: ece118_template/SimpleEventChecker.c  .generated_files/flags/part_6/f6ae17626d3c66da133be1f557bb318cc497af2f .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d" -o ${OBJECTDIR}/ece118_template/SimpleEventChecker.o ece118_template/SimpleEventChecker.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Framework.o: ece118_base/ES_Framework.c  .generated_files/flags/part_6/cadfd097d31fd6c5ea660b915f17f6cd31d1c51f .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Framework.o.d" -o ${OBJECTDIR}/ece118_base/ES_Framework.o ece118_base/ES_Framework.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Timers.o: ece118_base/ES_Timers.c  .generated_files/flags/part_6/aa4c3d76d9a6a827f344bb3ca446f252f1172636 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Timers.o.d" -o ${OBJECTDIR}/ece118_base/ES_Timers.o ece118_base/ES_Timers.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_CheckEvents.o: ece118_base/ES_CheckEvents.c  .generated_files/flags/part_6/feac99330437155e33459ac55bebd0680f932f7b .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d" -o ${OBJECTDIR}/ece118_base/ES_CheckEvents.o ece118_base/ES_CheckEvents.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_KeyboardInput.o: ece118_base/ES_KeyboardInput.c  .generated_files/flags/part_6/884fe1e1f33a99b35fbfff406568a367a717eee6 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o ece118_base/ES_KeyboardInput.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_LookupTables.o: ece118_base/ES_LookupTables.c  .generated_files/flags/part_6/621426f0faac39d9cc60dd1e21b09e6655cb3826 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_LookupTables.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_LookupTables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_LookupTables.o.d" -o ${OBJECTDIR}/ece118_base/ES_LookupTables.o ece118_base/ES_LookupTables.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_PostList.o: ece118_base/ES_PostList.c  .generated_files/flags/part_6/15b7a608fd52bcf38c6189bea76776bc1e8c7f00 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_PostList.o.d" -o ${OBJECTDIR}/ece118_base/ES_PostList.o ece118_base/ES_PostList.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Queue.o: ece118_base/ES_Queue.c  .generated_files/flags/part_6/19cd03186b8e1c138003fce9bcd3b9287fb3883b .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Queue.o.d" -o ${OBJECTDIR}/ece118_base/ES_Queue.o ece118_base/ES_Queue.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_TattleTale.o: ece118_base/ES_TattleTale.c  .generated_files/flags/part_6/b3611a83139c8a385ef73b3fdf882102ee8475c3 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_TattleTale.o.d" -o ${OBJECTDIR}/ece118_base/ES_TattleTale.o ece118_base/ES_TattleTale.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_TimerService.o: ece118_base/ES_TimerService.c  .generated_files/flags/part_6/caa6e3eaf82bc7aa623ef4f75db5ff20b39c7567 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TimerService.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TimerService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_TimerService.o.d" -o ${OBJECTDIR}/ece118_base/ES_TimerService.o ece118_base/ES_TimerService.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/RC_Servo.o: ece118_base/RC_Servo.c  .generated_files/flags/part_6/7c8ddf0099542858432d06df883439ad3f5ea579 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/RC_Servo.o.d" -o ${OBJECTDIR}/ece118_base/RC_Servo.o ece118_base/RC_Servo.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/BetterEventChecker.o: ece118_template/BetterEventChecker.c  .generated_files/flags/part_6/6eed917becc6fee23023756c4834b4ec6238ae13 .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/BetterEventChecker.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/BetterEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/BetterEventChecker.o.d" -o ${OBJECTDIR}/ece118_template/BetterEventChecker.o ece118_template/BetterEventChecker.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/SimpleService.o: ece118_template/SimpleService.c  .generated_files/flags/part_6/726f17c86aedcbde4b55e10825bad30742b992ef .generated_files/flags/part_6/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleService.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -DPART_6 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/SimpleService.o.d" -o ${OBJECTDIR}/ece118_template/SimpleService.o ece118_template/SimpleService.c    -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Lab0.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Lab0.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_part_6=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/Lab0.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
