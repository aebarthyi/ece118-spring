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
ifeq "$(wildcard nbproject/Makefile-local-part_5.mk)" "nbproject/Makefile-local-part_5.mk"
include nbproject/Makefile-local-part_5.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=part_5
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
	${MAKE}  -f nbproject/Makefile-part_5.mk ${DISTDIR}/Lab0.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/main.o: main.c  .generated_files/flags/part_5/ade66e103346ef74b9cdb0d0b630f2629ac65469 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/BOARD.o: ece118_base/BOARD.c  .generated_files/flags/part_5/f4e27faa5b7209b3a27e55e9e34cd9edac0336d9 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/BOARD.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/BOARD.o.d" -o ${OBJECTDIR}/ece118_base/BOARD.o ece118_base/BOARD.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/AD.o: ece118_base/AD.c  .generated_files/flags/part_5/b375bacdbf564a6ea8d40efa38f23559e6d83907 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/AD.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/AD.o.d" -o ${OBJECTDIR}/ece118_base/AD.o ece118_base/AD.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/serial.o: ece118_base/serial.c  .generated_files/flags/part_5/e93079d8fc9cdf59bbd9f931741cc95e80301d43 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/serial.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/serial.o.d" -o ${OBJECTDIR}/ece118_base/serial.o ece118_base/serial.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/roach.o: ece118_base/roach.c  .generated_files/flags/part_5/d759e804168e283cf24db9c56f08f9a6daee2736 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/roach.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/roach.o.d" -o ${OBJECTDIR}/ece118_base/roach.o ece118_base/roach.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/pwm.o: ece118_base/pwm.c  .generated_files/flags/part_5/dfa3c27d5a9d0b980a177ce7328a734079bc31e0 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/pwm.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/pwm.o.d" -o ${OBJECTDIR}/ece118_base/pwm.o ece118_base/pwm.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/SimpleEventChecker.o: ece118_template/SimpleEventChecker.c  .generated_files/flags/part_5/415c92b64eb1b3fed54660a46c57292769cf3397 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d" -o ${OBJECTDIR}/ece118_template/SimpleEventChecker.o ece118_template/SimpleEventChecker.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Framework.o: ece118_base/ES_Framework.c  .generated_files/flags/part_5/efcb6b5be741ca2f7c96005623464fae21e8b613 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Framework.o.d" -o ${OBJECTDIR}/ece118_base/ES_Framework.o ece118_base/ES_Framework.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Timers.o: ece118_base/ES_Timers.c  .generated_files/flags/part_5/f7d31c2b27134429863ebe0e5d753d85d2872927 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Timers.o.d" -o ${OBJECTDIR}/ece118_base/ES_Timers.o ece118_base/ES_Timers.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_CheckEvents.o: ece118_base/ES_CheckEvents.c  .generated_files/flags/part_5/89139da136839f23f3f444df2322f16937f18d6f .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d" -o ${OBJECTDIR}/ece118_base/ES_CheckEvents.o ece118_base/ES_CheckEvents.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_KeyboardInput.o: ece118_base/ES_KeyboardInput.c  .generated_files/flags/part_5/85b1f798ce9661ba087ec03965b9aa3d812e7f68 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o ece118_base/ES_KeyboardInput.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_LookupTables.o: ece118_base/ES_LookupTables.c  .generated_files/flags/part_5/154f72f05a8c85b2cbfcd88beb582c83f9f35056 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_LookupTables.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_LookupTables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_LookupTables.o.d" -o ${OBJECTDIR}/ece118_base/ES_LookupTables.o ece118_base/ES_LookupTables.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_PostList.o: ece118_base/ES_PostList.c  .generated_files/flags/part_5/4994f29492c1c4714c27e8b2ce36a927fecea400 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_PostList.o.d" -o ${OBJECTDIR}/ece118_base/ES_PostList.o ece118_base/ES_PostList.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Queue.o: ece118_base/ES_Queue.c  .generated_files/flags/part_5/6a72cd6bf1cd13d397a66a438b1b605a0d07b42f .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Queue.o.d" -o ${OBJECTDIR}/ece118_base/ES_Queue.o ece118_base/ES_Queue.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_TattleTale.o: ece118_base/ES_TattleTale.c  .generated_files/flags/part_5/3baf7ae6f1c9a30a38d8d49924fb91b222d51215 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_TattleTale.o.d" -o ${OBJECTDIR}/ece118_base/ES_TattleTale.o ece118_base/ES_TattleTale.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_TimerService.o: ece118_base/ES_TimerService.c  .generated_files/flags/part_5/f9061bfa9a037c5f8f033ca0c1eb9abcd80da79f .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TimerService.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TimerService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_TimerService.o.d" -o ${OBJECTDIR}/ece118_base/ES_TimerService.o ece118_base/ES_TimerService.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/RC_Servo.o: ece118_base/RC_Servo.c  .generated_files/flags/part_5/346e6f1da3cc498c903b81e57fc0e6b7d2c9bb54 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/RC_Servo.o.d" -o ${OBJECTDIR}/ece118_base/RC_Servo.o ece118_base/RC_Servo.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/BetterEventChecker.o: ece118_template/BetterEventChecker.c  .generated_files/flags/part_5/3ea9724deec1f93710277c016cb5feba134545e2 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/BetterEventChecker.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/BetterEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/BetterEventChecker.o.d" -o ${OBJECTDIR}/ece118_template/BetterEventChecker.o ece118_template/BetterEventChecker.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/SimpleService.o: ece118_template/SimpleService.c  .generated_files/flags/part_5/39229bbc21a242de843e8f58326c770b6486e45b .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleService.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/SimpleService.o.d" -o ${OBJECTDIR}/ece118_template/SimpleService.o ece118_template/SimpleService.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/main.o: main.c  .generated_files/flags/part_5/56ffe900644c934db24600a6208cb961438ef95e .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/BOARD.o: ece118_base/BOARD.c  .generated_files/flags/part_5/ddd2deae44c6d2db3fcae8b76ba973f4b3c9da0d .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/BOARD.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/BOARD.o.d" -o ${OBJECTDIR}/ece118_base/BOARD.o ece118_base/BOARD.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/AD.o: ece118_base/AD.c  .generated_files/flags/part_5/19df458472a91f39fc9e3fa1126d5944952a1d48 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/AD.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/AD.o.d" -o ${OBJECTDIR}/ece118_base/AD.o ece118_base/AD.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/serial.o: ece118_base/serial.c  .generated_files/flags/part_5/8314b3f47273cdf4c35bb3f74bf83fde1f802f13 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/serial.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/serial.o.d" -o ${OBJECTDIR}/ece118_base/serial.o ece118_base/serial.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/roach.o: ece118_base/roach.c  .generated_files/flags/part_5/1ae3aa016c5a64486b36dd9362e8953b3feb1c08 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/roach.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/roach.o.d" -o ${OBJECTDIR}/ece118_base/roach.o ece118_base/roach.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/pwm.o: ece118_base/pwm.c  .generated_files/flags/part_5/a6872403c17d3e8121e34ff76689a7beb2b7e0f .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/pwm.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/pwm.o.d" -o ${OBJECTDIR}/ece118_base/pwm.o ece118_base/pwm.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/SimpleEventChecker.o: ece118_template/SimpleEventChecker.c  .generated_files/flags/part_5/2cb9e70aafc965c62fca006ac99bff318cefd63c .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d" -o ${OBJECTDIR}/ece118_template/SimpleEventChecker.o ece118_template/SimpleEventChecker.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Framework.o: ece118_base/ES_Framework.c  .generated_files/flags/part_5/3524449a558a8998481d6c3e2abc320167569aea .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Framework.o.d" -o ${OBJECTDIR}/ece118_base/ES_Framework.o ece118_base/ES_Framework.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Timers.o: ece118_base/ES_Timers.c  .generated_files/flags/part_5/27cd941a61b09ca122a71b6e31db4535822538b9 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Timers.o.d" -o ${OBJECTDIR}/ece118_base/ES_Timers.o ece118_base/ES_Timers.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_CheckEvents.o: ece118_base/ES_CheckEvents.c  .generated_files/flags/part_5/f555d1beaa6352972a301c9ddba17b69ec4c6701 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d" -o ${OBJECTDIR}/ece118_base/ES_CheckEvents.o ece118_base/ES_CheckEvents.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_KeyboardInput.o: ece118_base/ES_KeyboardInput.c  .generated_files/flags/part_5/f98d8f21a3edfffb64d5faededff825aac41a567 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o ece118_base/ES_KeyboardInput.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_LookupTables.o: ece118_base/ES_LookupTables.c  .generated_files/flags/part_5/19f06005fead9c2054513cf597e76782eb1362de .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_LookupTables.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_LookupTables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_LookupTables.o.d" -o ${OBJECTDIR}/ece118_base/ES_LookupTables.o ece118_base/ES_LookupTables.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_PostList.o: ece118_base/ES_PostList.c  .generated_files/flags/part_5/894c95b3cb883e6ad96f1022cb953d09526516b4 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_PostList.o.d" -o ${OBJECTDIR}/ece118_base/ES_PostList.o ece118_base/ES_PostList.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Queue.o: ece118_base/ES_Queue.c  .generated_files/flags/part_5/a52804c6c8d74ff2defacb2e42b5cce1c0372f7 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Queue.o.d" -o ${OBJECTDIR}/ece118_base/ES_Queue.o ece118_base/ES_Queue.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_TattleTale.o: ece118_base/ES_TattleTale.c  .generated_files/flags/part_5/339a04c013e4ba4588d3df75155b1952f23f5569 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_TattleTale.o.d" -o ${OBJECTDIR}/ece118_base/ES_TattleTale.o ece118_base/ES_TattleTale.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_TimerService.o: ece118_base/ES_TimerService.c  .generated_files/flags/part_5/bd055419f1a14973b5fbcb5d4e3a320dcc77504e .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TimerService.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TimerService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_TimerService.o.d" -o ${OBJECTDIR}/ece118_base/ES_TimerService.o ece118_base/ES_TimerService.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/RC_Servo.o: ece118_base/RC_Servo.c  .generated_files/flags/part_5/284b758da039ef2555f888c2d64fd55fbe74e3ba .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/RC_Servo.o.d" -o ${OBJECTDIR}/ece118_base/RC_Servo.o ece118_base/RC_Servo.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/BetterEventChecker.o: ece118_template/BetterEventChecker.c  .generated_files/flags/part_5/b2cf81497bb59a9fe0b641c4e59d28620d9b9aef .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/BetterEventChecker.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/BetterEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/BetterEventChecker.o.d" -o ${OBJECTDIR}/ece118_template/BetterEventChecker.o ece118_template/BetterEventChecker.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/SimpleService.o: ece118_template/SimpleService.c  .generated_files/flags/part_5/8e6d6ee5383eb6cecf13ad4fe49f224a12acf7b9 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleService.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/SimpleService.o.d" -o ${OBJECTDIR}/ece118_template/SimpleService.o ece118_template/SimpleService.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Lab0.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/Lab0.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
