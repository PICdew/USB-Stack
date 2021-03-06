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
ifeq "$(wildcard nbproject/Makefile-local-PIC18F27J53.mk)" "nbproject/Makefile-local-PIC18F27J53.mk"
include nbproject/Makefile-local-PIC18F27J53.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=PIC18F27J53
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18FX7J53.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18FX7J53.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../Shared_Files/USB.c ../Shared_Files/usb_app.c ../Shared_Files/usb_msd.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1662128652/USB.p1 ${OBJECTDIR}/_ext/1662128652/usb_app.p1 ${OBJECTDIR}/_ext/1662128652/usb_msd.p1 ${OBJECTDIR}/main.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1662128652/USB.p1.d ${OBJECTDIR}/_ext/1662128652/usb_app.p1.d ${OBJECTDIR}/_ext/1662128652/usb_msd.p1.d ${OBJECTDIR}/main.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1662128652/USB.p1 ${OBJECTDIR}/_ext/1662128652/usb_app.p1 ${OBJECTDIR}/_ext/1662128652/usb_msd.p1 ${OBJECTDIR}/main.p1

# Source Files
SOURCEFILES=../Shared_Files/USB.c ../Shared_Files/usb_app.c ../Shared_Files/usb_msd.c main.c


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

# The following macros may be used in the pre and post step lines
Device=PIC18F27J53
ProjectDir=/Users/johnizzard/Desktop/USB_Projects/MSD_Examples/MSD_Simple_Example/PIC18FX7J53.X
ConfName=PIC18F27J53
ImagePath=dist/PIC18F27J53/${IMAGE_TYPE}/PIC18FX7J53.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
ImageDir=dist/PIC18F27J53/${IMAGE_TYPE}
ImageName=PIC18FX7J53.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-PIC18F27J53.mk dist/${CND_CONF}/${IMAGE_TYPE}/PIC18FX7J53.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [cp ${ImagePath} E:\ ]"
	@cp ${ImagePath} E:\ 
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=18F27J53
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1662128652/USB.p1: ../Shared_Files/USB.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1662128652" 
	@${RM} ${OBJECTDIR}/_ext/1662128652/USB.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1662128652/USB.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --rom=2000-1FBFF --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist -DXPRJ_PIC18F27J53=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1662128652/USB.p1 ../Shared_Files/USB.c 
	@-${MV} ${OBJECTDIR}/_ext/1662128652/USB.d ${OBJECTDIR}/_ext/1662128652/USB.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1662128652/USB.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1662128652/usb_app.p1: ../Shared_Files/usb_app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1662128652" 
	@${RM} ${OBJECTDIR}/_ext/1662128652/usb_app.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1662128652/usb_app.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --rom=2000-1FBFF --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist -DXPRJ_PIC18F27J53=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1662128652/usb_app.p1 ../Shared_Files/usb_app.c 
	@-${MV} ${OBJECTDIR}/_ext/1662128652/usb_app.d ${OBJECTDIR}/_ext/1662128652/usb_app.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1662128652/usb_app.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1662128652/usb_msd.p1: ../Shared_Files/usb_msd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1662128652" 
	@${RM} ${OBJECTDIR}/_ext/1662128652/usb_msd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1662128652/usb_msd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --rom=2000-1FBFF --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist -DXPRJ_PIC18F27J53=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1662128652/usb_msd.p1 ../Shared_Files/usb_msd.c 
	@-${MV} ${OBJECTDIR}/_ext/1662128652/usb_msd.d ${OBJECTDIR}/_ext/1662128652/usb_msd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1662128652/usb_msd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --rom=2000-1FBFF --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist -DXPRJ_PIC18F27J53=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1662128652/USB.p1: ../Shared_Files/USB.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1662128652" 
	@${RM} ${OBJECTDIR}/_ext/1662128652/USB.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1662128652/USB.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --rom=2000-1FBFF --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist -DXPRJ_PIC18F27J53=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1662128652/USB.p1 ../Shared_Files/USB.c 
	@-${MV} ${OBJECTDIR}/_ext/1662128652/USB.d ${OBJECTDIR}/_ext/1662128652/USB.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1662128652/USB.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1662128652/usb_app.p1: ../Shared_Files/usb_app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1662128652" 
	@${RM} ${OBJECTDIR}/_ext/1662128652/usb_app.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1662128652/usb_app.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --rom=2000-1FBFF --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist -DXPRJ_PIC18F27J53=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1662128652/usb_app.p1 ../Shared_Files/usb_app.c 
	@-${MV} ${OBJECTDIR}/_ext/1662128652/usb_app.d ${OBJECTDIR}/_ext/1662128652/usb_app.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1662128652/usb_app.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1662128652/usb_msd.p1: ../Shared_Files/usb_msd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1662128652" 
	@${RM} ${OBJECTDIR}/_ext/1662128652/usb_msd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1662128652/usb_msd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --rom=2000-1FBFF --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist -DXPRJ_PIC18F27J53=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1662128652/usb_msd.p1 ../Shared_Files/usb_msd.c 
	@-${MV} ${OBJECTDIR}/_ext/1662128652/usb_msd.d ${OBJECTDIR}/_ext/1662128652/usb_msd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1662128652/usb_msd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --rom=2000-1FBFF --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist -DXPRJ_PIC18F27J53=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PIC18FX7J53.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/PIC18FX7J53.X.${IMAGE_TYPE}.map  -D__DEBUG=1  --debugger=pickit3  -DXPRJ_PIC18F27J53=$(CND_CONF)  --double=24 --float=24 --emi=wordwrite --rom=2000-1FBFF --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/PIC18FX7J53.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/PIC18FX7J53.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PIC18FX7J53.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/PIC18FX7J53.X.${IMAGE_TYPE}.map  -DXPRJ_PIC18F27J53=$(CND_CONF)  --double=24 --float=24 --emi=wordwrite --rom=2000-1FBFF --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/PIC18FX7J53.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/PIC18F27J53
	${RM} -r dist/PIC18F27J53

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
