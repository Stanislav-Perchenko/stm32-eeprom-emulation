# stm32-eeprom-emulation
This repository provides demo projects for EEPROM emulation based on embedded Flash memory in the STM32 microcontrollers. Implementations for STM32F103C8 and STM32F030C8

This implementation is based on the Applicaation note AN4061 from the ST Microelectronics, which shows EEPROM implementation.
The source code files of this application note are used in the final demo projects, but those sources were optimized slightly in terms of "Clean Code". Please, pay attention on this.

Final demo projects are based on the STM32Cube drivers. All peripheral uses LL variant of drivers. Buth the AN4061 implementation is based on the old variant of drivers from "Prerpheral Driver Library". The only driver for internal Flash memory is used. So corresponded files from the "Prerpheral Driver Library" are integrated into the projects manually and connected to necessary low-level drivers from STM32Cube. The above mentioned Flash driver files are located ander the Drivers/STM32F10x_StdPeriph_Driver folder.
