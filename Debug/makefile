################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include USB_HOST/Target/subdir.mk
-include USB_HOST/App/subdir.mk
-include Middlewares/USB_Host_Library/subdir.mk
-include Drivers/STM32F4xx_HAL_Driver/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
2_stm32f4_IR_remote_decoder.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
2_stm32f4_IR_remote_decoder.list \

OBJCOPY_BIN += \
2_stm32f4_IR_remote_decoder.bin \


# All Target
all: 2_stm32f4_IR_remote_decoder.elf secondary-outputs

# Tool invocations
2_stm32f4_IR_remote_decoder.elf: $(OBJS) $(USER_OBJS) C:\Users\Aishwarya\Desktop\stm\2_stm32f4_IR_remote_decoder\STM32F407VGTX_FLASH.ld
	arm-none-eabi-gcc -o "2_stm32f4_IR_remote_decoder.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\Aishwarya\Desktop\stm\2_stm32f4_IR_remote_decoder\STM32F407VGTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="2_stm32f4_IR_remote_decoder.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

2_stm32f4_IR_remote_decoder.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "2_stm32f4_IR_remote_decoder.list"
	@echo 'Finished building: $@'
	@echo ' '

2_stm32f4_IR_remote_decoder.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "2_stm32f4_IR_remote_decoder.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
