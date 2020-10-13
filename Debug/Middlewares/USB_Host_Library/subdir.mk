################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Src/usbh_cdc.c \
C:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_core.c \
C:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ctlreq.c \
C:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ioreq.c \
C:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_pipes.c 

OBJS += \
./Middlewares/USB_Host_Library/usbh_cdc.o \
./Middlewares/USB_Host_Library/usbh_core.o \
./Middlewares/USB_Host_Library/usbh_ctlreq.o \
./Middlewares/USB_Host_Library/usbh_ioreq.o \
./Middlewares/USB_Host_Library/usbh_pipes.o 

C_DEPS += \
./Middlewares/USB_Host_Library/usbh_cdc.d \
./Middlewares/USB_Host_Library/usbh_core.d \
./Middlewares/USB_Host_Library/usbh_ctlreq.d \
./Middlewares/USB_Host_Library/usbh_ioreq.d \
./Middlewares/USB_Host_Library/usbh_pipes.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/USB_Host_Library/usbh_cdc.o: C:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Src/usbh_cdc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DSTM32F407xx -c -I../USB_HOST/App -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Core/Inc -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/CMSIS/Device/ST/STM32F4xx/Include -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/CMSIS/Include -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/STM32F4xx_HAL_Driver/Inc -I../USB_HOST/Target -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/USB_Host_Library/usbh_cdc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/USB_Host_Library/usbh_core.o: C:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_core.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DSTM32F407xx -c -I../USB_HOST/App -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Core/Inc -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/CMSIS/Device/ST/STM32F4xx/Include -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/CMSIS/Include -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/STM32F4xx_HAL_Driver/Inc -I../USB_HOST/Target -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/USB_Host_Library/usbh_core.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/USB_Host_Library/usbh_ctlreq.o: C:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ctlreq.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DSTM32F407xx -c -I../USB_HOST/App -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Core/Inc -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/CMSIS/Device/ST/STM32F4xx/Include -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/CMSIS/Include -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/STM32F4xx_HAL_Driver/Inc -I../USB_HOST/Target -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/USB_Host_Library/usbh_ctlreq.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/USB_Host_Library/usbh_ioreq.o: C:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ioreq.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DSTM32F407xx -c -I../USB_HOST/App -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Core/Inc -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/CMSIS/Device/ST/STM32F4xx/Include -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/CMSIS/Include -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/STM32F4xx_HAL_Driver/Inc -I../USB_HOST/Target -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/USB_Host_Library/usbh_ioreq.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/USB_Host_Library/usbh_pipes.o: C:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_pipes.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DSTM32F407xx -c -I../USB_HOST/App -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Core/Inc -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/CMSIS/Device/ST/STM32F4xx/Include -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/CMSIS/Include -IC:/Users/Aishwarya/STM32Cube/Repository/STM32Cube_FW_F4_V1.24.2/Drivers/STM32F4xx_HAL_Driver/Inc -I../USB_HOST/Target -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/USB_Host_Library/usbh_pipes.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

