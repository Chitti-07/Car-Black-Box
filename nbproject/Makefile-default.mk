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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/24016_002_Car_Black_Box.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/24016_002_Car_Black_Box.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
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
SOURCEFILES_QUOTED_IF_SPACED=adc.c clcd.c clear_log.c display_main_menu.c download_log.c DS_1307.c Event_reader.c External_EEPROM.c I2C.c Internal_EEPROM.c main.c Matrix_keypad.c RTC.c set_time.c UART.c view_dashboard.c view_log.c Event_Store.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/adc.p1 ${OBJECTDIR}/clcd.p1 ${OBJECTDIR}/clear_log.p1 ${OBJECTDIR}/display_main_menu.p1 ${OBJECTDIR}/download_log.p1 ${OBJECTDIR}/DS_1307.p1 ${OBJECTDIR}/Event_reader.p1 ${OBJECTDIR}/External_EEPROM.p1 ${OBJECTDIR}/I2C.p1 ${OBJECTDIR}/Internal_EEPROM.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/Matrix_keypad.p1 ${OBJECTDIR}/RTC.p1 ${OBJECTDIR}/set_time.p1 ${OBJECTDIR}/UART.p1 ${OBJECTDIR}/view_dashboard.p1 ${OBJECTDIR}/view_log.p1 ${OBJECTDIR}/Event_Store.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/adc.p1.d ${OBJECTDIR}/clcd.p1.d ${OBJECTDIR}/clear_log.p1.d ${OBJECTDIR}/display_main_menu.p1.d ${OBJECTDIR}/download_log.p1.d ${OBJECTDIR}/DS_1307.p1.d ${OBJECTDIR}/Event_reader.p1.d ${OBJECTDIR}/External_EEPROM.p1.d ${OBJECTDIR}/I2C.p1.d ${OBJECTDIR}/Internal_EEPROM.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/Matrix_keypad.p1.d ${OBJECTDIR}/RTC.p1.d ${OBJECTDIR}/set_time.p1.d ${OBJECTDIR}/UART.p1.d ${OBJECTDIR}/view_dashboard.p1.d ${OBJECTDIR}/view_log.p1.d ${OBJECTDIR}/Event_Store.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/adc.p1 ${OBJECTDIR}/clcd.p1 ${OBJECTDIR}/clear_log.p1 ${OBJECTDIR}/display_main_menu.p1 ${OBJECTDIR}/download_log.p1 ${OBJECTDIR}/DS_1307.p1 ${OBJECTDIR}/Event_reader.p1 ${OBJECTDIR}/External_EEPROM.p1 ${OBJECTDIR}/I2C.p1 ${OBJECTDIR}/Internal_EEPROM.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/Matrix_keypad.p1 ${OBJECTDIR}/RTC.p1 ${OBJECTDIR}/set_time.p1 ${OBJECTDIR}/UART.p1 ${OBJECTDIR}/view_dashboard.p1 ${OBJECTDIR}/view_log.p1 ${OBJECTDIR}/Event_Store.p1

# Source Files
SOURCEFILES=adc.c clcd.c clear_log.c display_main_menu.c download_log.c DS_1307.c Event_reader.c External_EEPROM.c I2C.c Internal_EEPROM.c main.c Matrix_keypad.c RTC.c set_time.c UART.c view_dashboard.c view_log.c Event_Store.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/24016_002_Car_Black_Box.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4580
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/adc.p1: adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc.p1.d 
	@${RM} ${OBJECTDIR}/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/adc.p1 adc.c 
	@-${MV} ${OBJECTDIR}/adc.d ${OBJECTDIR}/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/clcd.p1: clcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/clcd.p1.d 
	@${RM} ${OBJECTDIR}/clcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/clcd.p1 clcd.c 
	@-${MV} ${OBJECTDIR}/clcd.d ${OBJECTDIR}/clcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/clcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/clear_log.p1: clear_log.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/clear_log.p1.d 
	@${RM} ${OBJECTDIR}/clear_log.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/clear_log.p1 clear_log.c 
	@-${MV} ${OBJECTDIR}/clear_log.d ${OBJECTDIR}/clear_log.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/clear_log.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/display_main_menu.p1: display_main_menu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/display_main_menu.p1.d 
	@${RM} ${OBJECTDIR}/display_main_menu.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/display_main_menu.p1 display_main_menu.c 
	@-${MV} ${OBJECTDIR}/display_main_menu.d ${OBJECTDIR}/display_main_menu.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/display_main_menu.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/download_log.p1: download_log.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/download_log.p1.d 
	@${RM} ${OBJECTDIR}/download_log.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/download_log.p1 download_log.c 
	@-${MV} ${OBJECTDIR}/download_log.d ${OBJECTDIR}/download_log.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/download_log.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DS_1307.p1: DS_1307.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DS_1307.p1.d 
	@${RM} ${OBJECTDIR}/DS_1307.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DS_1307.p1 DS_1307.c 
	@-${MV} ${OBJECTDIR}/DS_1307.d ${OBJECTDIR}/DS_1307.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DS_1307.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Event_reader.p1: Event_reader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Event_reader.p1.d 
	@${RM} ${OBJECTDIR}/Event_reader.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Event_reader.p1 Event_reader.c 
	@-${MV} ${OBJECTDIR}/Event_reader.d ${OBJECTDIR}/Event_reader.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Event_reader.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/External_EEPROM.p1: External_EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/External_EEPROM.p1.d 
	@${RM} ${OBJECTDIR}/External_EEPROM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/External_EEPROM.p1 External_EEPROM.c 
	@-${MV} ${OBJECTDIR}/External_EEPROM.d ${OBJECTDIR}/External_EEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/External_EEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/I2C.p1: I2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/I2C.p1.d 
	@${RM} ${OBJECTDIR}/I2C.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/I2C.p1 I2C.c 
	@-${MV} ${OBJECTDIR}/I2C.d ${OBJECTDIR}/I2C.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/I2C.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Internal_EEPROM.p1: Internal_EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Internal_EEPROM.p1.d 
	@${RM} ${OBJECTDIR}/Internal_EEPROM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Internal_EEPROM.p1 Internal_EEPROM.c 
	@-${MV} ${OBJECTDIR}/Internal_EEPROM.d ${OBJECTDIR}/Internal_EEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Internal_EEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Matrix_keypad.p1: Matrix_keypad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Matrix_keypad.p1.d 
	@${RM} ${OBJECTDIR}/Matrix_keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Matrix_keypad.p1 Matrix_keypad.c 
	@-${MV} ${OBJECTDIR}/Matrix_keypad.d ${OBJECTDIR}/Matrix_keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Matrix_keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/RTC.p1: RTC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RTC.p1.d 
	@${RM} ${OBJECTDIR}/RTC.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/RTC.p1 RTC.c 
	@-${MV} ${OBJECTDIR}/RTC.d ${OBJECTDIR}/RTC.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/RTC.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/set_time.p1: set_time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/set_time.p1.d 
	@${RM} ${OBJECTDIR}/set_time.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/set_time.p1 set_time.c 
	@-${MV} ${OBJECTDIR}/set_time.d ${OBJECTDIR}/set_time.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/set_time.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/UART.p1: UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UART.p1.d 
	@${RM} ${OBJECTDIR}/UART.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/UART.p1 UART.c 
	@-${MV} ${OBJECTDIR}/UART.d ${OBJECTDIR}/UART.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/UART.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/view_dashboard.p1: view_dashboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/view_dashboard.p1.d 
	@${RM} ${OBJECTDIR}/view_dashboard.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/view_dashboard.p1 view_dashboard.c 
	@-${MV} ${OBJECTDIR}/view_dashboard.d ${OBJECTDIR}/view_dashboard.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/view_dashboard.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/view_log.p1: view_log.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/view_log.p1.d 
	@${RM} ${OBJECTDIR}/view_log.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/view_log.p1 view_log.c 
	@-${MV} ${OBJECTDIR}/view_log.d ${OBJECTDIR}/view_log.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/view_log.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Event_Store.p1: Event_Store.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Event_Store.p1.d 
	@${RM} ${OBJECTDIR}/Event_Store.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Event_Store.p1 Event_Store.c 
	@-${MV} ${OBJECTDIR}/Event_Store.d ${OBJECTDIR}/Event_Store.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Event_Store.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/adc.p1: adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc.p1.d 
	@${RM} ${OBJECTDIR}/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/adc.p1 adc.c 
	@-${MV} ${OBJECTDIR}/adc.d ${OBJECTDIR}/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/clcd.p1: clcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/clcd.p1.d 
	@${RM} ${OBJECTDIR}/clcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/clcd.p1 clcd.c 
	@-${MV} ${OBJECTDIR}/clcd.d ${OBJECTDIR}/clcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/clcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/clear_log.p1: clear_log.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/clear_log.p1.d 
	@${RM} ${OBJECTDIR}/clear_log.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/clear_log.p1 clear_log.c 
	@-${MV} ${OBJECTDIR}/clear_log.d ${OBJECTDIR}/clear_log.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/clear_log.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/display_main_menu.p1: display_main_menu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/display_main_menu.p1.d 
	@${RM} ${OBJECTDIR}/display_main_menu.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/display_main_menu.p1 display_main_menu.c 
	@-${MV} ${OBJECTDIR}/display_main_menu.d ${OBJECTDIR}/display_main_menu.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/display_main_menu.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/download_log.p1: download_log.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/download_log.p1.d 
	@${RM} ${OBJECTDIR}/download_log.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/download_log.p1 download_log.c 
	@-${MV} ${OBJECTDIR}/download_log.d ${OBJECTDIR}/download_log.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/download_log.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DS_1307.p1: DS_1307.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DS_1307.p1.d 
	@${RM} ${OBJECTDIR}/DS_1307.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DS_1307.p1 DS_1307.c 
	@-${MV} ${OBJECTDIR}/DS_1307.d ${OBJECTDIR}/DS_1307.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DS_1307.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Event_reader.p1: Event_reader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Event_reader.p1.d 
	@${RM} ${OBJECTDIR}/Event_reader.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Event_reader.p1 Event_reader.c 
	@-${MV} ${OBJECTDIR}/Event_reader.d ${OBJECTDIR}/Event_reader.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Event_reader.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/External_EEPROM.p1: External_EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/External_EEPROM.p1.d 
	@${RM} ${OBJECTDIR}/External_EEPROM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/External_EEPROM.p1 External_EEPROM.c 
	@-${MV} ${OBJECTDIR}/External_EEPROM.d ${OBJECTDIR}/External_EEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/External_EEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/I2C.p1: I2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/I2C.p1.d 
	@${RM} ${OBJECTDIR}/I2C.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/I2C.p1 I2C.c 
	@-${MV} ${OBJECTDIR}/I2C.d ${OBJECTDIR}/I2C.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/I2C.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Internal_EEPROM.p1: Internal_EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Internal_EEPROM.p1.d 
	@${RM} ${OBJECTDIR}/Internal_EEPROM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Internal_EEPROM.p1 Internal_EEPROM.c 
	@-${MV} ${OBJECTDIR}/Internal_EEPROM.d ${OBJECTDIR}/Internal_EEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Internal_EEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Matrix_keypad.p1: Matrix_keypad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Matrix_keypad.p1.d 
	@${RM} ${OBJECTDIR}/Matrix_keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Matrix_keypad.p1 Matrix_keypad.c 
	@-${MV} ${OBJECTDIR}/Matrix_keypad.d ${OBJECTDIR}/Matrix_keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Matrix_keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/RTC.p1: RTC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RTC.p1.d 
	@${RM} ${OBJECTDIR}/RTC.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/RTC.p1 RTC.c 
	@-${MV} ${OBJECTDIR}/RTC.d ${OBJECTDIR}/RTC.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/RTC.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/set_time.p1: set_time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/set_time.p1.d 
	@${RM} ${OBJECTDIR}/set_time.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/set_time.p1 set_time.c 
	@-${MV} ${OBJECTDIR}/set_time.d ${OBJECTDIR}/set_time.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/set_time.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/UART.p1: UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UART.p1.d 
	@${RM} ${OBJECTDIR}/UART.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/UART.p1 UART.c 
	@-${MV} ${OBJECTDIR}/UART.d ${OBJECTDIR}/UART.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/UART.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/view_dashboard.p1: view_dashboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/view_dashboard.p1.d 
	@${RM} ${OBJECTDIR}/view_dashboard.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/view_dashboard.p1 view_dashboard.c 
	@-${MV} ${OBJECTDIR}/view_dashboard.d ${OBJECTDIR}/view_dashboard.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/view_dashboard.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/view_log.p1: view_log.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/view_log.p1.d 
	@${RM} ${OBJECTDIR}/view_log.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/view_log.p1 view_log.c 
	@-${MV} ${OBJECTDIR}/view_log.d ${OBJECTDIR}/view_log.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/view_log.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Event_Store.p1: Event_Store.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Event_Store.p1.d 
	@${RM} ${OBJECTDIR}/Event_Store.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Event_Store.p1 Event_Store.c 
	@-${MV} ${OBJECTDIR}/Event_Store.d ${OBJECTDIR}/Event_Store.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Event_Store.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

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
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/24016_002_Car_Black_Box.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/24016_002_Car_Black_Box.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/24016_002_Car_Black_Box.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/24016_002_Car_Black_Box.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/24016_002_Car_Black_Box.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/24016_002_Car_Black_Box.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/24016_002_Car_Black_Box.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
