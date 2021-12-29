################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/ST/projects/eeprom-emul-demo-f103/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_dma.c \
C:/ST/projects/eeprom-emul-demo-f103/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.c \
C:/ST/projects/eeprom-emul-demo-f103/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.c \
C:/ST/projects/eeprom-emul-demo-f103/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.c \
C:/ST/projects/eeprom-emul-demo-f103/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.c \
C:/ST/projects/eeprom-emul-demo-f103/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_usart.c \
C:/ST/projects/eeprom-emul-demo-f103/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.c 

OBJS += \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_dma.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_exti.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_gpio.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_pwr.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_rcc.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_usart.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_utils.o 

C_DEPS += \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_dma.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_exti.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_gpio.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_pwr.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_rcc.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_usart.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_dma.o: C:/ST/projects/eeprom-emul-demo-f103/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_dma.c Drivers/STM32F1xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DHSE_VALUE=8000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DHSI_VALUE=8000000 -DLSI_VALUE=40000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=1 -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/inc" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_exti.o: C:/ST/projects/eeprom-emul-demo-f103/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.c Drivers/STM32F1xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DHSE_VALUE=8000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DHSI_VALUE=8000000 -DLSI_VALUE=40000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=1 -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/inc" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_gpio.o: C:/ST/projects/eeprom-emul-demo-f103/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.c Drivers/STM32F1xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DHSE_VALUE=8000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DHSI_VALUE=8000000 -DLSI_VALUE=40000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=1 -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/inc" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_pwr.o: C:/ST/projects/eeprom-emul-demo-f103/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.c Drivers/STM32F1xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DHSE_VALUE=8000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DHSI_VALUE=8000000 -DLSI_VALUE=40000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=1 -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/inc" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_rcc.o: C:/ST/projects/eeprom-emul-demo-f103/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.c Drivers/STM32F1xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DHSE_VALUE=8000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DHSI_VALUE=8000000 -DLSI_VALUE=40000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=1 -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/inc" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_usart.o: C:/ST/projects/eeprom-emul-demo-f103/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_usart.c Drivers/STM32F1xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DHSE_VALUE=8000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DHSI_VALUE=8000000 -DLSI_VALUE=40000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=1 -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/inc" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32F1xx_HAL_Driver/stm32f1xx_ll_utils.o: C:/ST/projects/eeprom-emul-demo-f103/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.c Drivers/STM32F1xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DHSE_VALUE=8000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DHSI_VALUE=8000000 -DLSI_VALUE=40000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=1 -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/inc" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

