################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/User/eeprom.c \
C:/ST/projects/eeprom-emul-demo-f103/Src/gpio.c \
C:/ST/projects/eeprom-emul-demo-f103/Src/iwdg.c \
../Application/User/logger.c \
C:/ST/projects/eeprom-emul-demo-f103/Src/main.c \
C:/ST/projects/eeprom-emul-demo-f103/Src/stm32f1xx_it.c \
../Application/User/syscalls.c \
../Application/User/sysmem.c \
../Application/User/systick.c \
C:/ST/projects/eeprom-emul-demo-f103/Src/usart.c 

OBJS += \
./Application/User/eeprom.o \
./Application/User/gpio.o \
./Application/User/iwdg.o \
./Application/User/logger.o \
./Application/User/main.o \
./Application/User/stm32f1xx_it.o \
./Application/User/syscalls.o \
./Application/User/sysmem.o \
./Application/User/systick.o \
./Application/User/usart.o 

C_DEPS += \
./Application/User/eeprom.d \
./Application/User/gpio.d \
./Application/User/iwdg.d \
./Application/User/logger.d \
./Application/User/main.d \
./Application/User/stm32f1xx_it.d \
./Application/User/syscalls.d \
./Application/User/sysmem.d \
./Application/User/systick.d \
./Application/User/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/%.o: ../Application/User/%.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DHSE_VALUE=8000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DHSI_VALUE=8000000 -DLSI_VALUE=40000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=1 -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/inc" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/gpio.o: C:/ST/projects/eeprom-emul-demo-f103/Src/gpio.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DHSE_VALUE=8000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DHSI_VALUE=8000000 -DLSI_VALUE=40000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=1 -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/inc" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/iwdg.o: C:/ST/projects/eeprom-emul-demo-f103/Src/iwdg.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DHSE_VALUE=8000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DHSI_VALUE=8000000 -DLSI_VALUE=40000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=1 -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/inc" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/main.o: C:/ST/projects/eeprom-emul-demo-f103/Src/main.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DHSE_VALUE=8000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DHSI_VALUE=8000000 -DLSI_VALUE=40000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=1 -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/inc" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/stm32f1xx_it.o: C:/ST/projects/eeprom-emul-demo-f103/Src/stm32f1xx_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DHSE_VALUE=8000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DHSI_VALUE=8000000 -DLSI_VALUE=40000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=1 -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/inc" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/usart.o: C:/ST/projects/eeprom-emul-demo-f103/Src/usart.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DHSE_VALUE=8000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DHSI_VALUE=8000000 -DLSI_VALUE=40000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=1 -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/inc" -I"C:/ST/projects/eeprom-emul-demo-f103/STM32CubeIDE/Drivers/STM32F10x_StdPeriph_Driver/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

