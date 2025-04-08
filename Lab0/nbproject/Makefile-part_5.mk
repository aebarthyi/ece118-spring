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
MKDIR=gnumkdir -p
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
${OBJECTDIR}/main.o: main.c  .generated_files/flags/part_5/2a5126fc4dbcbc3013c0ac65a9105a44d001ad52 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/BOARD.o: ece118_base/BOARD.c  .generated_files/flags/part_5/49f1a0607ec2418efb265a92512f3f5eb3e0b6ba .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/BOARD.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/BOARD.o.d" -o ${OBJECTDIR}/ece118_base/BOARD.o ece118_base/BOARD.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/AD.o: ece118_base/AD.c  .generated_files/flags/part_5/4b6dca7becb662dfabcfb8989af5ed0e0a696aa1 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/AD.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/AD.o.d" -o ${OBJECTDIR}/ece118_base/AD.o ece118_base/AD.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/serial.o: ece118_base/serial.c  .generated_files/flags/part_5/58c9a4f16317e0365389fb95bcb45901e26d2c7d .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/serial.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/serial.o.d" -o ${OBJECTDIR}/ece118_base/serial.o ece118_base/serial.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/roach.o: ece118_base/roach.c  .generated_files/flags/part_5/89923145536246278d87acf4892e9678f0968327 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/roach.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/roach.o.d" -o ${OBJECTDIR}/ece118_base/roach.o ece118_base/roach.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/pwm.o: ece118_base/pwm.c  .generated_files/flags/part_5/21cc620682d640dd311c56febb9d34a4ded0e30f .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/pwm.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/pwm.o.d" -o ${OBJECTDIR}/ece118_base/pwm.o ece118_base/pwm.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/SimpleEventChecker.o: ece118_template/SimpleEventChecker.c  .generated_files/flags/part_5/c491765bb073753fd5544c58475936d19b898438 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d" -o ${OBJECTDIR}/ece118_template/SimpleEventChecker.o ece118_template/SimpleEventChecker.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Framework.o: ece118_base/ES_Framework.c  .generated_files/flags/part_5/a06a820a96de7e232a0a30b00efd529637333a9c .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Framework.o.d" -o ${OBJECTDIR}/ece118_base/ES_Framework.o ece118_base/ES_Framework.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Timers.o: ece118_base/ES_Timers.c  .generated_files/flags/part_5/d59fa44f153bb690b8f00f51fb086b5e28e380b3 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Timers.o.d" -o ${OBJECTDIR}/ece118_base/ES_Timers.o ece118_base/ES_Timers.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_CheckEvents.o: ece118_base/ES_CheckEvents.c  .generated_files/flags/part_5/a3c2f859469ef5a24235fda97daeaf30ec88ff96 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d" -o ${OBJECTDIR}/ece118_base/ES_CheckEvents.o ece118_base/ES_CheckEvents.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_KeyboardInput.o: ece118_base/ES_KeyboardInput.c  .generated_files/flags/part_5/c5925473738170b5d2f82f11f7f69a72d18c85fe .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o ece118_base/ES_KeyboardInput.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_LookupTables.o: ece118_base/ES_LookupTables.c  .generated_files/flags/part_5/9a0b708876cac318f37d2d4aacbd09a903f69580 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_LookupTables.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_LookupTables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_LookupTables.o.d" -o ${OBJECTDIR}/ece118_base/ES_LookupTables.o ece118_base/ES_LookupTables.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_PostList.o: ece118_base/ES_PostList.c  .generated_files/flags/part_5/54b0248cc87bc2120da4d4552fe95d048e8bb535 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_PostList.o.d" -o ${OBJECTDIR}/ece118_base/ES_PostList.o ece118_base/ES_PostList.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Queue.o: ece118_base/ES_Queue.c  .generated_files/flags/part_5/4ec8601afe7d00cb503518cb208815e5ce602c23 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Queue.o.d" -o ${OBJECTDIR}/ece118_base/ES_Queue.o ece118_base/ES_Queue.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_TattleTale.o: ece118_base/ES_TattleTale.c  .generated_files/flags/part_5/b44248a265b3b9bebedcaecc6f560c1df1f8ce63 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_TattleTale.o.d" -o ${OBJECTDIR}/ece118_base/ES_TattleTale.o ece118_base/ES_TattleTale.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_TimerService.o: ece118_base/ES_TimerService.c  .generated_files/flags/part_5/47709c3e98f3c7cea193aeb8ee02e6831b5137ea .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TimerService.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TimerService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_TimerService.o.d" -o ${OBJECTDIR}/ece118_base/ES_TimerService.o ece118_base/ES_TimerService.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/RC_Servo.o: ece118_base/RC_Servo.c  .generated_files/flags/part_5/5d92ec396e64260db1b9f955100d0cec17f881e1 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/RC_Servo.o.d" -o ${OBJECTDIR}/ece118_base/RC_Servo.o ece118_base/RC_Servo.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/BetterEventChecker.o: ece118_template/BetterEventChecker.c  .generated_files/flags/part_5/df88ef12f6e705578e6ed2e69a5c1b3baa3b4a83 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/BetterEventChecker.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/BetterEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/BetterEventChecker.o.d" -o ${OBJECTDIR}/ece118_template/BetterEventChecker.o ece118_template/BetterEventChecker.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/SimpleService.o: ece118_template/SimpleService.c  .generated_files/flags/part_5/52f8fae578a04ba72e491fb5103783fe6ade8482 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleService.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/SimpleService.o.d" -o ${OBJECTDIR}/ece118_template/SimpleService.o ece118_template/SimpleService.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/main.o: main.c  .generated_files/flags/part_5/a0cc1692f566b47c24a14efce70c4712250a5af6 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/BOARD.o: ece118_base/BOARD.c  .generated_files/flags/part_5/4a242225e28238125d90ae2db3adb13eff589f56 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/BOARD.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/BOARD.o.d" -o ${OBJECTDIR}/ece118_base/BOARD.o ece118_base/BOARD.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/AD.o: ece118_base/AD.c  .generated_files/flags/part_5/6d1b290b32791e5fa34f31de61bca0eebda803e3 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/AD.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/AD.o.d" -o ${OBJECTDIR}/ece118_base/AD.o ece118_base/AD.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/serial.o: ece118_base/serial.c  .generated_files/flags/part_5/f03e90b6dbe484da24735bf36eaea63a3359ef3e .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/serial.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/serial.o.d" -o ${OBJECTDIR}/ece118_base/serial.o ece118_base/serial.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/roach.o: ece118_base/roach.c  .generated_files/flags/part_5/9c159eed986d2270ae9ed85d4ff1f13a67683903 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/roach.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/roach.o.d" -o ${OBJECTDIR}/ece118_base/roach.o ece118_base/roach.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/pwm.o: ece118_base/pwm.c  .generated_files/flags/part_5/3274cff84b71c0bb1d0ffcedbad46468a6835e16 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/pwm.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/pwm.o.d" -o ${OBJECTDIR}/ece118_base/pwm.o ece118_base/pwm.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/SimpleEventChecker.o: ece118_template/SimpleEventChecker.c  .generated_files/flags/part_5/e0a1989c0dbcd7879cbc231ed0de5d6c706d4bc9 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d" -o ${OBJECTDIR}/ece118_template/SimpleEventChecker.o ece118_template/SimpleEventChecker.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Framework.o: ece118_base/ES_Framework.c  .generated_files/flags/part_5/62a3c7e3c0b37ed92f0314f4d5eafb03c2d61f2b .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Framework.o.d" -o ${OBJECTDIR}/ece118_base/ES_Framework.o ece118_base/ES_Framework.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Timers.o: ece118_base/ES_Timers.c  .generated_files/flags/part_5/291c96481a4b2e686f11fe5ecf4aed7186bbebc7 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Timers.o.d" -o ${OBJECTDIR}/ece118_base/ES_Timers.o ece118_base/ES_Timers.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_CheckEvents.o: ece118_base/ES_CheckEvents.c  .generated_files/flags/part_5/779f48a4b4d331c3e68446ad13b3005a9bd7c2cf .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d" -o ${OBJECTDIR}/ece118_base/ES_CheckEvents.o ece118_base/ES_CheckEvents.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_KeyboardInput.o: ece118_base/ES_KeyboardInput.c  .generated_files/flags/part_5/3b46931ecac3ee0536d58fafef7eda9b42af2759 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o ece118_base/ES_KeyboardInput.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_LookupTables.o: ece118_base/ES_LookupTables.c  .generated_files/flags/part_5/3e1062a1b5d6fbd54c8ddb53b60a0775bec5f692 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_LookupTables.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_LookupTables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_LookupTables.o.d" -o ${OBJECTDIR}/ece118_base/ES_LookupTables.o ece118_base/ES_LookupTables.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_PostList.o: ece118_base/ES_PostList.c  .generated_files/flags/part_5/92d675ac445230dff8b19392a08657c25e8d8a05 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_PostList.o.d" -o ${OBJECTDIR}/ece118_base/ES_PostList.o ece118_base/ES_PostList.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Queue.o: ece118_base/ES_Queue.c  .generated_files/flags/part_5/669530b81ade4be5138d130307151de3cef9f50b .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Queue.o.d" -o ${OBJECTDIR}/ece118_base/ES_Queue.o ece118_base/ES_Queue.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_TattleTale.o: ece118_base/ES_TattleTale.c  .generated_files/flags/part_5/2a17c2c29d48bff90530d960390d8131f88fba54 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_TattleTale.o.d" -o ${OBJECTDIR}/ece118_base/ES_TattleTale.o ece118_base/ES_TattleTale.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_TimerService.o: ece118_base/ES_TimerService.c  .generated_files/flags/part_5/d6e4fc8e5352bdc75608a8e946048152b3aca8d5 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TimerService.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TimerService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_TimerService.o.d" -o ${OBJECTDIR}/ece118_base/ES_TimerService.o ece118_base/ES_TimerService.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/RC_Servo.o: ece118_base/RC_Servo.c  .generated_files/flags/part_5/45435fe7ffeb0ef813aecf775f1f53ace243b230 .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/RC_Servo.o.d" -o ${OBJECTDIR}/ece118_base/RC_Servo.o ece118_base/RC_Servo.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/BetterEventChecker.o: ece118_template/BetterEventChecker.c  .generated_files/flags/part_5/b9dc191e70d453d2a3b42e754c8be1f7ebff28b .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/BetterEventChecker.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/BetterEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLE_EVENTCHECKER_TEST -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/BetterEventChecker.o.d" -o ${OBJECTDIR}/ece118_template/BetterEventChecker.o ece118_template/BetterEventChecker.c    -DXPRJ_part_5=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/SimpleService.o: ece118_template/SimpleService.c  .generated_files/flags/part_5/eed1ea667274098ad17bdda07ea33bef2728897b .generated_files/flags/part_5/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
