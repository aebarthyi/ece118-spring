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
ifeq "$(wildcard nbproject/Makefile-local-part_4.mk)" "nbproject/Makefile-local-part_4.mk"
include nbproject/Makefile-local-part_4.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=part_4
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
SOURCEFILES_QUOTED_IF_SPACED=main.c ece118_base/BOARD.c ece118_base/AD.c ece118_base/serial.c ece118_base/roach.c ece118_base/pwm.c ece118_template/SimpleEventChecker.c ece118_template/SimpleTemplateService.c ece118_base/ES_Framework.c ece118_base/ES_Timers.c ece118_base/ES_CheckEvents.c ece118_base/ES_KeyboardInput.c ece118_base/ES_LookupTables.c ece118_base/ES_PostList.c ece118_base/ES_Queue.c ece118_base/ES_TattleTale.c ece118_base/ES_TimerService.c ece118_base/RC_Servo.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/ece118_base/BOARD.o ${OBJECTDIR}/ece118_base/AD.o ${OBJECTDIR}/ece118_base/serial.o ${OBJECTDIR}/ece118_base/roach.o ${OBJECTDIR}/ece118_base/pwm.o ${OBJECTDIR}/ece118_template/SimpleEventChecker.o ${OBJECTDIR}/ece118_template/SimpleTemplateService.o ${OBJECTDIR}/ece118_base/ES_Framework.o ${OBJECTDIR}/ece118_base/ES_Timers.o ${OBJECTDIR}/ece118_base/ES_CheckEvents.o ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o ${OBJECTDIR}/ece118_base/ES_LookupTables.o ${OBJECTDIR}/ece118_base/ES_PostList.o ${OBJECTDIR}/ece118_base/ES_Queue.o ${OBJECTDIR}/ece118_base/ES_TattleTale.o ${OBJECTDIR}/ece118_base/ES_TimerService.o ${OBJECTDIR}/ece118_base/RC_Servo.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/ece118_base/BOARD.o.d ${OBJECTDIR}/ece118_base/AD.o.d ${OBJECTDIR}/ece118_base/serial.o.d ${OBJECTDIR}/ece118_base/roach.o.d ${OBJECTDIR}/ece118_base/pwm.o.d ${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d ${OBJECTDIR}/ece118_template/SimpleTemplateService.o.d ${OBJECTDIR}/ece118_base/ES_Framework.o.d ${OBJECTDIR}/ece118_base/ES_Timers.o.d ${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d ${OBJECTDIR}/ece118_base/ES_LookupTables.o.d ${OBJECTDIR}/ece118_base/ES_PostList.o.d ${OBJECTDIR}/ece118_base/ES_Queue.o.d ${OBJECTDIR}/ece118_base/ES_TattleTale.o.d ${OBJECTDIR}/ece118_base/ES_TimerService.o.d ${OBJECTDIR}/ece118_base/RC_Servo.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/ece118_base/BOARD.o ${OBJECTDIR}/ece118_base/AD.o ${OBJECTDIR}/ece118_base/serial.o ${OBJECTDIR}/ece118_base/roach.o ${OBJECTDIR}/ece118_base/pwm.o ${OBJECTDIR}/ece118_template/SimpleEventChecker.o ${OBJECTDIR}/ece118_template/SimpleTemplateService.o ${OBJECTDIR}/ece118_base/ES_Framework.o ${OBJECTDIR}/ece118_base/ES_Timers.o ${OBJECTDIR}/ece118_base/ES_CheckEvents.o ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o ${OBJECTDIR}/ece118_base/ES_LookupTables.o ${OBJECTDIR}/ece118_base/ES_PostList.o ${OBJECTDIR}/ece118_base/ES_Queue.o ${OBJECTDIR}/ece118_base/ES_TattleTale.o ${OBJECTDIR}/ece118_base/ES_TimerService.o ${OBJECTDIR}/ece118_base/RC_Servo.o

# Source Files
SOURCEFILES=main.c ece118_base/BOARD.c ece118_base/AD.c ece118_base/serial.c ece118_base/roach.c ece118_base/pwm.c ece118_template/SimpleEventChecker.c ece118_template/SimpleTemplateService.c ece118_base/ES_Framework.c ece118_base/ES_Timers.c ece118_base/ES_CheckEvents.c ece118_base/ES_KeyboardInput.c ece118_base/ES_LookupTables.c ece118_base/ES_PostList.c ece118_base/ES_Queue.c ece118_base/ES_TattleTale.c ece118_base/ES_TimerService.c ece118_base/RC_Servo.c



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
	${MAKE}  -f nbproject/Makefile-part_4.mk ${DISTDIR}/Lab0.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/main.o: main.c  .generated_files/flags/part_4/130191aba3236068856f89564e0c5a3240465140 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/BOARD.o: ece118_base/BOARD.c  .generated_files/flags/part_4/895eac9d6a5b8aad0693c961ebe5d6c8129750c5 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/BOARD.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/BOARD.o.d" -o ${OBJECTDIR}/ece118_base/BOARD.o ece118_base/BOARD.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/AD.o: ece118_base/AD.c  .generated_files/flags/part_4/d29ea258cd35f678b5bde7f40dfb0c68f23aa898 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/AD.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/AD.o.d" -o ${OBJECTDIR}/ece118_base/AD.o ece118_base/AD.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/serial.o: ece118_base/serial.c  .generated_files/flags/part_4/eeae4b4f474b69b755abadcf9b5732e384d99f8d .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/serial.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/serial.o.d" -o ${OBJECTDIR}/ece118_base/serial.o ece118_base/serial.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/roach.o: ece118_base/roach.c  .generated_files/flags/part_4/be015515667372e3385b30b4a47256b37d91519e .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/roach.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/roach.o.d" -o ${OBJECTDIR}/ece118_base/roach.o ece118_base/roach.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/pwm.o: ece118_base/pwm.c  .generated_files/flags/part_4/f465a90c431ffc555f1183fd8c029d03984150a9 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/pwm.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/pwm.o.d" -o ${OBJECTDIR}/ece118_base/pwm.o ece118_base/pwm.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/SimpleEventChecker.o: ece118_template/SimpleEventChecker.c  .generated_files/flags/part_4/d9b89274387f6c5b10665550a130be673de2cb8d .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d" -o ${OBJECTDIR}/ece118_template/SimpleEventChecker.o ece118_template/SimpleEventChecker.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/SimpleTemplateService.o: ece118_template/SimpleTemplateService.c  .generated_files/flags/part_4/db94f733f7e5c08e77a4b28f83f4079fc063a21d .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleTemplateService.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleTemplateService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/SimpleTemplateService.o.d" -o ${OBJECTDIR}/ece118_template/SimpleTemplateService.o ece118_template/SimpleTemplateService.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Framework.o: ece118_base/ES_Framework.c  .generated_files/flags/part_4/5a1206484c4c9b1b6367d976dcec9d58cf233abe .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Framework.o.d" -o ${OBJECTDIR}/ece118_base/ES_Framework.o ece118_base/ES_Framework.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Timers.o: ece118_base/ES_Timers.c  .generated_files/flags/part_4/bc5629adc7c93abbc9f1a3d129a4550701e939d0 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Timers.o.d" -o ${OBJECTDIR}/ece118_base/ES_Timers.o ece118_base/ES_Timers.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_CheckEvents.o: ece118_base/ES_CheckEvents.c  .generated_files/flags/part_4/e4ad737664221750a2cf570f58865c8da194d142 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d" -o ${OBJECTDIR}/ece118_base/ES_CheckEvents.o ece118_base/ES_CheckEvents.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_KeyboardInput.o: ece118_base/ES_KeyboardInput.c  .generated_files/flags/part_4/ebdf709923cd8f20cd2ad1fb5138dd83ec0a4876 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o ece118_base/ES_KeyboardInput.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_LookupTables.o: ece118_base/ES_LookupTables.c  .generated_files/flags/part_4/4f8126980dbabc18ee9413f32bf547379f2140ad .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_LookupTables.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_LookupTables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_LookupTables.o.d" -o ${OBJECTDIR}/ece118_base/ES_LookupTables.o ece118_base/ES_LookupTables.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_PostList.o: ece118_base/ES_PostList.c  .generated_files/flags/part_4/a86150753460dbc2187778c3826a709bd9c94c5e .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_PostList.o.d" -o ${OBJECTDIR}/ece118_base/ES_PostList.o ece118_base/ES_PostList.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Queue.o: ece118_base/ES_Queue.c  .generated_files/flags/part_4/d746a7743ddedbc1aa7cf9a5f08392eee4173fbc .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Queue.o.d" -o ${OBJECTDIR}/ece118_base/ES_Queue.o ece118_base/ES_Queue.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_TattleTale.o: ece118_base/ES_TattleTale.c  .generated_files/flags/part_4/fef3139364a6c6efbae325e14356128496d5d1b0 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_TattleTale.o.d" -o ${OBJECTDIR}/ece118_base/ES_TattleTale.o ece118_base/ES_TattleTale.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_TimerService.o: ece118_base/ES_TimerService.c  .generated_files/flags/part_4/1ad78cd5120d248392b31b132df0161eda087d6b .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TimerService.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TimerService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_TimerService.o.d" -o ${OBJECTDIR}/ece118_base/ES_TimerService.o ece118_base/ES_TimerService.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/RC_Servo.o: ece118_base/RC_Servo.c  .generated_files/flags/part_4/fa05368c918c22b4e18df384fba89fee4cc98d09 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/RC_Servo.o.d" -o ${OBJECTDIR}/ece118_base/RC_Servo.o ece118_base/RC_Servo.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/main.o: main.c  .generated_files/flags/part_4/24699a9ed67e990e43fb6cf5166efe3ff1b4e2f1 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/BOARD.o: ece118_base/BOARD.c  .generated_files/flags/part_4/8f23f204900e911f3e1b80a044975e8de021ab54 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/BOARD.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/BOARD.o.d" -o ${OBJECTDIR}/ece118_base/BOARD.o ece118_base/BOARD.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/AD.o: ece118_base/AD.c  .generated_files/flags/part_4/88a02bb12fa8e6966791ce85fab1964f4b798545 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/AD.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/AD.o.d" -o ${OBJECTDIR}/ece118_base/AD.o ece118_base/AD.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/serial.o: ece118_base/serial.c  .generated_files/flags/part_4/d50b4daa23cdc007513eb25d52841736842fa8cb .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/serial.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/serial.o.d" -o ${OBJECTDIR}/ece118_base/serial.o ece118_base/serial.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/roach.o: ece118_base/roach.c  .generated_files/flags/part_4/54c254207530d88f018bb4a0d290b1de1fa49778 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/roach.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/roach.o.d" -o ${OBJECTDIR}/ece118_base/roach.o ece118_base/roach.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/pwm.o: ece118_base/pwm.c  .generated_files/flags/part_4/6724ccfe10ce69dff2d2aa64410e58014dbaf091 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/pwm.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/pwm.o.d" -o ${OBJECTDIR}/ece118_base/pwm.o ece118_base/pwm.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/SimpleEventChecker.o: ece118_template/SimpleEventChecker.c  .generated_files/flags/part_4/da15500b47a9fbca85ae7c46fcf6aa2381aae4e1 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/SimpleEventChecker.o.d" -o ${OBJECTDIR}/ece118_template/SimpleEventChecker.o ece118_template/SimpleEventChecker.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_template/SimpleTemplateService.o: ece118_template/SimpleTemplateService.c  .generated_files/flags/part_4/c499c6d2b7339eb45b9dad052e53eb00de2aabf .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_template" 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleTemplateService.o.d 
	@${RM} ${OBJECTDIR}/ece118_template/SimpleTemplateService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_template/SimpleTemplateService.o.d" -o ${OBJECTDIR}/ece118_template/SimpleTemplateService.o ece118_template/SimpleTemplateService.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Framework.o: ece118_base/ES_Framework.c  .generated_files/flags/part_4/6b3ec5336d52fa2127b0b0d6a9ab8e1d54b685a2 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Framework.o.d" -o ${OBJECTDIR}/ece118_base/ES_Framework.o ece118_base/ES_Framework.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Timers.o: ece118_base/ES_Timers.c  .generated_files/flags/part_4/d7f04d6e8770eea0a653509df1c67a0a9f8ed6cb .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Timers.o.d" -o ${OBJECTDIR}/ece118_base/ES_Timers.o ece118_base/ES_Timers.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_CheckEvents.o: ece118_base/ES_CheckEvents.c  .generated_files/flags/part_4/e94f4cbcbdfbc5a81899dcffb9a4b84988b5afbc .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_CheckEvents.o.d" -o ${OBJECTDIR}/ece118_base/ES_CheckEvents.o ece118_base/ES_CheckEvents.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_KeyboardInput.o: ece118_base/ES_KeyboardInput.c  .generated_files/flags/part_4/378507dd79873f4c3b3aca6a633574f992a1b880 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/ece118_base/ES_KeyboardInput.o ece118_base/ES_KeyboardInput.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_LookupTables.o: ece118_base/ES_LookupTables.c  .generated_files/flags/part_4/ad6cef26eefa637f1e9d75af779b50cf2a1787e0 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_LookupTables.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_LookupTables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_LookupTables.o.d" -o ${OBJECTDIR}/ece118_base/ES_LookupTables.o ece118_base/ES_LookupTables.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_PostList.o: ece118_base/ES_PostList.c  .generated_files/flags/part_4/ed67e7cf4f90b7320a6e7748da6de6693edb4b29 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_PostList.o.d" -o ${OBJECTDIR}/ece118_base/ES_PostList.o ece118_base/ES_PostList.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_Queue.o: ece118_base/ES_Queue.c  .generated_files/flags/part_4/18755d1a68e6a86ddbe3cee7a206a342b8197eb .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_Queue.o.d" -o ${OBJECTDIR}/ece118_base/ES_Queue.o ece118_base/ES_Queue.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_TattleTale.o: ece118_base/ES_TattleTale.c  .generated_files/flags/part_4/188a0d58bcafac3ddb052728470eb4c0a5b049e0 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_TattleTale.o.d" -o ${OBJECTDIR}/ece118_base/ES_TattleTale.o ece118_base/ES_TattleTale.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/ES_TimerService.o: ece118_base/ES_TimerService.c  .generated_files/flags/part_4/5df25addd61f0dcc6373f2d79158f1b204d4c934 .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TimerService.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/ES_TimerService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/ES_TimerService.o.d" -o ${OBJECTDIR}/ece118_base/ES_TimerService.o ece118_base/ES_TimerService.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ece118_base/RC_Servo.o: ece118_base/RC_Servo.c  .generated_files/flags/part_4/f58e63104d1d6e085e6f2d68bb98a205b99bdd9c .generated_files/flags/part_4/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ece118_base" 
	@${RM} ${OBJECTDIR}/ece118_base/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/ece118_base/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART_4 -I"ece118_base" -I"ece118_template" -MP -MMD -MF "${OBJECTDIR}/ece118_base/RC_Servo.o.d" -o ${OBJECTDIR}/ece118_base/RC_Servo.o ece118_base/RC_Servo.c    -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Lab0.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_part_4=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
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
