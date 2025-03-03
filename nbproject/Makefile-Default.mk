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
ifeq "$(wildcard nbproject/Makefile-local-Default.mk)" "nbproject/Makefile-local-Default.mk"
include nbproject/Makefile-local-Default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Invertor_Controller.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Invertor_Controller.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=examples/src/usart_basic_example.c src/driver_init.c src/bod.c src/clkctrl.c src/cpuint.c src/protected_io.S src/slpctrl.c src/tca.c src/usart_basic.c src/ac.c src/vref.c main.c driver_isr.c atmel_start.c Inv_Ctrlr.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/examples/src/usart_basic_example.o ${OBJECTDIR}/src/driver_init.o ${OBJECTDIR}/src/bod.o ${OBJECTDIR}/src/clkctrl.o ${OBJECTDIR}/src/cpuint.o ${OBJECTDIR}/src/protected_io.o ${OBJECTDIR}/src/slpctrl.o ${OBJECTDIR}/src/tca.o ${OBJECTDIR}/src/usart_basic.o ${OBJECTDIR}/src/ac.o ${OBJECTDIR}/src/vref.o ${OBJECTDIR}/main.o ${OBJECTDIR}/driver_isr.o ${OBJECTDIR}/atmel_start.o ${OBJECTDIR}/Inv_Ctrlr.o
POSSIBLE_DEPFILES=${OBJECTDIR}/examples/src/usart_basic_example.o.d ${OBJECTDIR}/src/driver_init.o.d ${OBJECTDIR}/src/bod.o.d ${OBJECTDIR}/src/clkctrl.o.d ${OBJECTDIR}/src/cpuint.o.d ${OBJECTDIR}/src/protected_io.o.d ${OBJECTDIR}/src/slpctrl.o.d ${OBJECTDIR}/src/tca.o.d ${OBJECTDIR}/src/usart_basic.o.d ${OBJECTDIR}/src/ac.o.d ${OBJECTDIR}/src/vref.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/driver_isr.o.d ${OBJECTDIR}/atmel_start.o.d ${OBJECTDIR}/Inv_Ctrlr.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/examples/src/usart_basic_example.o ${OBJECTDIR}/src/driver_init.o ${OBJECTDIR}/src/bod.o ${OBJECTDIR}/src/clkctrl.o ${OBJECTDIR}/src/cpuint.o ${OBJECTDIR}/src/protected_io.o ${OBJECTDIR}/src/slpctrl.o ${OBJECTDIR}/src/tca.o ${OBJECTDIR}/src/usart_basic.o ${OBJECTDIR}/src/ac.o ${OBJECTDIR}/src/vref.o ${OBJECTDIR}/main.o ${OBJECTDIR}/driver_isr.o ${OBJECTDIR}/atmel_start.o ${OBJECTDIR}/Inv_Ctrlr.o

# Source Files
SOURCEFILES=examples/src/usart_basic_example.c src/driver_init.c src/bod.c src/clkctrl.c src/cpuint.c src/protected_io.S src/slpctrl.c src/tca.c src/usart_basic.c src/ac.c src/vref.c main.c driver_isr.c atmel_start.c Inv_Ctrlr.c



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
	${MAKE}  -f nbproject/Makefile-Default.mk ${DISTDIR}/Invertor_Controller.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATtiny417
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/examples/src/usart_basic_example.o: examples/src/usart_basic_example.c  .generated_files/flags/Default/82156e164f06fe8614aed026a669db60bffa23d5 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/usart_basic_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/usart_basic_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/examples/src/usart_basic_example.o.d" -MT "${OBJECTDIR}/examples/src/usart_basic_example.o.d" -MT ${OBJECTDIR}/examples/src/usart_basic_example.o -o ${OBJECTDIR}/examples/src/usart_basic_example.o examples/src/usart_basic_example.c 
	
${OBJECTDIR}/src/driver_init.o: src/driver_init.c  .generated_files/flags/Default/ed006446d48d36246b9a5277539c8409797c3c19 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/driver_init.o.d 
	@${RM} ${OBJECTDIR}/src/driver_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/driver_init.o.d" -MT "${OBJECTDIR}/src/driver_init.o.d" -MT ${OBJECTDIR}/src/driver_init.o -o ${OBJECTDIR}/src/driver_init.o src/driver_init.c 
	
${OBJECTDIR}/src/bod.o: src/bod.c  .generated_files/flags/Default/84bf3d727f9720f6a3d3af78752434331bb07abb .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/bod.o.d 
	@${RM} ${OBJECTDIR}/src/bod.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/bod.o.d" -MT "${OBJECTDIR}/src/bod.o.d" -MT ${OBJECTDIR}/src/bod.o -o ${OBJECTDIR}/src/bod.o src/bod.c 
	
${OBJECTDIR}/src/clkctrl.o: src/clkctrl.c  .generated_files/flags/Default/4eeaddd943041d1637728f4cc6305777b5fc4bd3 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/clkctrl.o.d 
	@${RM} ${OBJECTDIR}/src/clkctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/clkctrl.o.d" -MT "${OBJECTDIR}/src/clkctrl.o.d" -MT ${OBJECTDIR}/src/clkctrl.o -o ${OBJECTDIR}/src/clkctrl.o src/clkctrl.c 
	
${OBJECTDIR}/src/cpuint.o: src/cpuint.c  .generated_files/flags/Default/5f1dfff769cf1ae81da6e8c98a40b364e16d853b .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/src/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/cpuint.o.d" -MT "${OBJECTDIR}/src/cpuint.o.d" -MT ${OBJECTDIR}/src/cpuint.o -o ${OBJECTDIR}/src/cpuint.o src/cpuint.c 
	
${OBJECTDIR}/src/slpctrl.o: src/slpctrl.c  .generated_files/flags/Default/f4baa4662aa7b7bfd25000ef278d154ea1e51e28 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/slpctrl.o.d 
	@${RM} ${OBJECTDIR}/src/slpctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/slpctrl.o.d" -MT "${OBJECTDIR}/src/slpctrl.o.d" -MT ${OBJECTDIR}/src/slpctrl.o -o ${OBJECTDIR}/src/slpctrl.o src/slpctrl.c 
	
${OBJECTDIR}/src/tca.o: src/tca.c  .generated_files/flags/Default/9c1c0bbc810e4e2257df4e32719680d4b21667a4 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/tca.o.d 
	@${RM} ${OBJECTDIR}/src/tca.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/tca.o.d" -MT "${OBJECTDIR}/src/tca.o.d" -MT ${OBJECTDIR}/src/tca.o -o ${OBJECTDIR}/src/tca.o src/tca.c 
	
${OBJECTDIR}/src/usart_basic.o: src/usart_basic.c  .generated_files/flags/Default/ee393778c9a893d80d78f08026d29715c42f51df .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/usart_basic.o.d 
	@${RM} ${OBJECTDIR}/src/usart_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/usart_basic.o.d" -MT "${OBJECTDIR}/src/usart_basic.o.d" -MT ${OBJECTDIR}/src/usart_basic.o -o ${OBJECTDIR}/src/usart_basic.o src/usart_basic.c 
	
${OBJECTDIR}/src/ac.o: src/ac.c  .generated_files/flags/Default/6857ad16978fd7d08404abe9bea97692ce3e5602 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ac.o.d 
	@${RM} ${OBJECTDIR}/src/ac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/ac.o.d" -MT "${OBJECTDIR}/src/ac.o.d" -MT ${OBJECTDIR}/src/ac.o -o ${OBJECTDIR}/src/ac.o src/ac.c 
	
${OBJECTDIR}/src/vref.o: src/vref.c  .generated_files/flags/Default/acdcc41a06e048b9774c74909006f3ae423e62ac .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/vref.o.d 
	@${RM} ${OBJECTDIR}/src/vref.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/vref.o.d" -MT "${OBJECTDIR}/src/vref.o.d" -MT ${OBJECTDIR}/src/vref.o -o ${OBJECTDIR}/src/vref.o src/vref.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/71736cefac736edd5fa542f91c27bec2cca192d5 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/driver_isr.o: driver_isr.c  .generated_files/flags/Default/3b8efb5acd22108025f014f64582611a1a4103c5 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_isr.o.d 
	@${RM} ${OBJECTDIR}/driver_isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/driver_isr.o.d" -MT "${OBJECTDIR}/driver_isr.o.d" -MT ${OBJECTDIR}/driver_isr.o -o ${OBJECTDIR}/driver_isr.o driver_isr.c 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/7a874b6f41859cc7f556bab99c3a38e6c0b9ab5c .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/atmel_start.o.d" -MT "${OBJECTDIR}/atmel_start.o.d" -MT ${OBJECTDIR}/atmel_start.o -o ${OBJECTDIR}/atmel_start.o atmel_start.c 
	
${OBJECTDIR}/Inv_Ctrlr.o: Inv_Ctrlr.c  .generated_files/flags/Default/1bf6fca38243fa1493e2d872dd5aa90113be9d5e .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Inv_Ctrlr.o.d 
	@${RM} ${OBJECTDIR}/Inv_Ctrlr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/Inv_Ctrlr.o.d" -MT "${OBJECTDIR}/Inv_Ctrlr.o.d" -MT ${OBJECTDIR}/Inv_Ctrlr.o -o ${OBJECTDIR}/Inv_Ctrlr.o Inv_Ctrlr.c 
	
else
${OBJECTDIR}/examples/src/usart_basic_example.o: examples/src/usart_basic_example.c  .generated_files/flags/Default/2ee54231cbbd7651a15ff501bc7118102154ed72 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/usart_basic_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/usart_basic_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/examples/src/usart_basic_example.o.d" -MT "${OBJECTDIR}/examples/src/usart_basic_example.o.d" -MT ${OBJECTDIR}/examples/src/usart_basic_example.o -o ${OBJECTDIR}/examples/src/usart_basic_example.o examples/src/usart_basic_example.c 
	
${OBJECTDIR}/src/driver_init.o: src/driver_init.c  .generated_files/flags/Default/814424ce51c8b11ca4e4831cf1ed8bb41aafcc02 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/driver_init.o.d 
	@${RM} ${OBJECTDIR}/src/driver_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/driver_init.o.d" -MT "${OBJECTDIR}/src/driver_init.o.d" -MT ${OBJECTDIR}/src/driver_init.o -o ${OBJECTDIR}/src/driver_init.o src/driver_init.c 
	
${OBJECTDIR}/src/bod.o: src/bod.c  .generated_files/flags/Default/62961e519d2c8803058a4bc5d8dcd67f505b7c0b .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/bod.o.d 
	@${RM} ${OBJECTDIR}/src/bod.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/bod.o.d" -MT "${OBJECTDIR}/src/bod.o.d" -MT ${OBJECTDIR}/src/bod.o -o ${OBJECTDIR}/src/bod.o src/bod.c 
	
${OBJECTDIR}/src/clkctrl.o: src/clkctrl.c  .generated_files/flags/Default/1181dd506898e3f9b153b1335049b27723f50317 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/clkctrl.o.d 
	@${RM} ${OBJECTDIR}/src/clkctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/clkctrl.o.d" -MT "${OBJECTDIR}/src/clkctrl.o.d" -MT ${OBJECTDIR}/src/clkctrl.o -o ${OBJECTDIR}/src/clkctrl.o src/clkctrl.c 
	
${OBJECTDIR}/src/cpuint.o: src/cpuint.c  .generated_files/flags/Default/ddb002ab001975203fa17e3def7bb1e32d60c4ca .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/src/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/cpuint.o.d" -MT "${OBJECTDIR}/src/cpuint.o.d" -MT ${OBJECTDIR}/src/cpuint.o -o ${OBJECTDIR}/src/cpuint.o src/cpuint.c 
	
${OBJECTDIR}/src/slpctrl.o: src/slpctrl.c  .generated_files/flags/Default/43d2dc9c42990d8e131049262dc2661421916c87 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/slpctrl.o.d 
	@${RM} ${OBJECTDIR}/src/slpctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/slpctrl.o.d" -MT "${OBJECTDIR}/src/slpctrl.o.d" -MT ${OBJECTDIR}/src/slpctrl.o -o ${OBJECTDIR}/src/slpctrl.o src/slpctrl.c 
	
${OBJECTDIR}/src/tca.o: src/tca.c  .generated_files/flags/Default/7b0d1886744a7d27516b7228f26652e898528900 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/tca.o.d 
	@${RM} ${OBJECTDIR}/src/tca.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/tca.o.d" -MT "${OBJECTDIR}/src/tca.o.d" -MT ${OBJECTDIR}/src/tca.o -o ${OBJECTDIR}/src/tca.o src/tca.c 
	
${OBJECTDIR}/src/usart_basic.o: src/usart_basic.c  .generated_files/flags/Default/3dca7c39ec20b33561c8c644b5edd233d20fcafa .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/usart_basic.o.d 
	@${RM} ${OBJECTDIR}/src/usart_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/usart_basic.o.d" -MT "${OBJECTDIR}/src/usart_basic.o.d" -MT ${OBJECTDIR}/src/usart_basic.o -o ${OBJECTDIR}/src/usart_basic.o src/usart_basic.c 
	
${OBJECTDIR}/src/ac.o: src/ac.c  .generated_files/flags/Default/41bd43ff67177899b1dd2f7ec118a2f0b17f9bfb .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ac.o.d 
	@${RM} ${OBJECTDIR}/src/ac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/ac.o.d" -MT "${OBJECTDIR}/src/ac.o.d" -MT ${OBJECTDIR}/src/ac.o -o ${OBJECTDIR}/src/ac.o src/ac.c 
	
${OBJECTDIR}/src/vref.o: src/vref.c  .generated_files/flags/Default/b37dec6eb6f0965d6cd38c6abf3a6fd07e28fea3 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/vref.o.d 
	@${RM} ${OBJECTDIR}/src/vref.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/vref.o.d" -MT "${OBJECTDIR}/src/vref.o.d" -MT ${OBJECTDIR}/src/vref.o -o ${OBJECTDIR}/src/vref.o src/vref.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/1f2723b3d452d82b298023d2a74444e0aed5fa45 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/driver_isr.o: driver_isr.c  .generated_files/flags/Default/8da098ef9c8bf75c197f88fda1dbed00ca5ff6cd .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_isr.o.d 
	@${RM} ${OBJECTDIR}/driver_isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/driver_isr.o.d" -MT "${OBJECTDIR}/driver_isr.o.d" -MT ${OBJECTDIR}/driver_isr.o -o ${OBJECTDIR}/driver_isr.o driver_isr.c 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/1fd904ccab3953db08978ed5cad2ced636e7a19d .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/atmel_start.o.d" -MT "${OBJECTDIR}/atmel_start.o.d" -MT ${OBJECTDIR}/atmel_start.o -o ${OBJECTDIR}/atmel_start.o atmel_start.c 
	
${OBJECTDIR}/Inv_Ctrlr.o: Inv_Ctrlr.c  .generated_files/flags/Default/27f731e59314d55e783ff66b8bed5dea46de3897 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Inv_Ctrlr.o.d 
	@${RM} ${OBJECTDIR}/Inv_Ctrlr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/Inv_Ctrlr.o.d" -MT "${OBJECTDIR}/Inv_Ctrlr.o.d" -MT ${OBJECTDIR}/Inv_Ctrlr.o -o ${OBJECTDIR}/Inv_Ctrlr.o Inv_Ctrlr.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/protected_io.o: src/protected_io.S  .generated_files/flags/Default/df9b1e6d95f643d136a8a9952fda1a086d9b9640 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  -std=gnu99 -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -std=gnu99   -MD -MP -MF "${OBJECTDIR}/src/protected_io.o.d" -MT "${OBJECTDIR}/src/protected_io.o.d" -MT ${OBJECTDIR}/src/protected_io.o -o ${OBJECTDIR}/src/protected_io.o  src/protected_io.S 
	
else
${OBJECTDIR}/src/protected_io.o: src/protected_io.S  .generated_files/flags/Default/881340ceed336d4684602b2959277c41b50b27c4 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  -std=gnu99 -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1 -std=gnu99   -MD -MP -MF "${OBJECTDIR}/src/protected_io.o.d" -MT "${OBJECTDIR}/src/protected_io.o.d" -MT ${OBJECTDIR}/src/protected_io.o -o ${OBJECTDIR}/src/protected_io.o  src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Invertor_Controller.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Invertor_Controller.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_Default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1     -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -std=gnu99 -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Invertor_Controller.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/Invertor_Controller.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/Invertor_Controller.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/Invertor_Controller.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Invertor_Controller.X.${IMAGE_TYPE}.map  -DXPRJ_Default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -std=gnu99 -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Invertor_Controller.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/Invertor_Controller.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/Invertor_Controller.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/Invertor_Controller.X.${IMAGE_TYPE}.hex"
	
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
