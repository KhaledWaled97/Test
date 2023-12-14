################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/AFIO.c \
../Src/DELAY_PROG.c \
../Src/ESP8266_PROG.c \
../Src/EXTI.c \
../Src/FPEC_program.c \
../Src/GPIO.c \
../Src/NVIC_PROG.c \
../Src/Parse.c \
../Src/RCC_PROG.c \
../Src/SYSTICK_PROG.c \
../Src/TIMERx_PROG.c \
../Src/USART2_PROG.c \
../Src/USART_PROG.c \
../Src/main.c \
../Src/syscalls.c \
../Src/sysmem.c 

OBJS += \
./Src/AFIO.o \
./Src/DELAY_PROG.o \
./Src/ESP8266_PROG.o \
./Src/EXTI.o \
./Src/FPEC_program.o \
./Src/GPIO.o \
./Src/NVIC_PROG.o \
./Src/Parse.o \
./Src/RCC_PROG.o \
./Src/SYSTICK_PROG.o \
./Src/TIMERx_PROG.o \
./Src/USART2_PROG.o \
./Src/USART_PROG.o \
./Src/main.o \
./Src/syscalls.o \
./Src/sysmem.o 

C_DEPS += \
./Src/AFIO.d \
./Src/DELAY_PROG.d \
./Src/ESP8266_PROG.d \
./Src/EXTI.d \
./Src/FPEC_program.d \
./Src/GPIO.d \
./Src/NVIC_PROG.d \
./Src/Parse.d \
./Src/RCC_PROG.d \
./Src/SYSTICK_PROG.d \
./Src/TIMERx_PROG.d \
./Src/USART2_PROG.d \
./Src/USART_PROG.d \
./Src/main.d \
./Src/syscalls.d \
./Src/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/LIB" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/HAL/WIFI/Include" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/MCAL/EXTI/Include" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/MCAL/GPIO/Include" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/MCAL/RCC/Include" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/MCAL/SYSTICK/Include" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/MCAL/USART/Include" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/MCAL/FPEC/Include" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/MCAL/NVIC/Include" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/MCAL/TIMERx/Include" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/MCAL/USART2/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/AFIO.cyclo ./Src/AFIO.d ./Src/AFIO.o ./Src/AFIO.su ./Src/DELAY_PROG.cyclo ./Src/DELAY_PROG.d ./Src/DELAY_PROG.o ./Src/DELAY_PROG.su ./Src/ESP8266_PROG.cyclo ./Src/ESP8266_PROG.d ./Src/ESP8266_PROG.o ./Src/ESP8266_PROG.su ./Src/EXTI.cyclo ./Src/EXTI.d ./Src/EXTI.o ./Src/EXTI.su ./Src/FPEC_program.cyclo ./Src/FPEC_program.d ./Src/FPEC_program.o ./Src/FPEC_program.su ./Src/GPIO.cyclo ./Src/GPIO.d ./Src/GPIO.o ./Src/GPIO.su ./Src/NVIC_PROG.cyclo ./Src/NVIC_PROG.d ./Src/NVIC_PROG.o ./Src/NVIC_PROG.su ./Src/Parse.cyclo ./Src/Parse.d ./Src/Parse.o ./Src/Parse.su ./Src/RCC_PROG.cyclo ./Src/RCC_PROG.d ./Src/RCC_PROG.o ./Src/RCC_PROG.su ./Src/SYSTICK_PROG.cyclo ./Src/SYSTICK_PROG.d ./Src/SYSTICK_PROG.o ./Src/SYSTICK_PROG.su ./Src/TIMERx_PROG.cyclo ./Src/TIMERx_PROG.d ./Src/TIMERx_PROG.o ./Src/TIMERx_PROG.su ./Src/USART2_PROG.cyclo ./Src/USART2_PROG.d ./Src/USART2_PROG.o ./Src/USART2_PROG.su ./Src/USART_PROG.cyclo ./Src/USART_PROG.d ./Src/USART_PROG.o ./Src/USART_PROG.su ./Src/main.cyclo ./Src/main.d ./Src/main.o ./Src/main.su ./Src/syscalls.cyclo ./Src/syscalls.d ./Src/syscalls.o ./Src/syscalls.su ./Src/sysmem.cyclo ./Src/sysmem.d ./Src/sysmem.o ./Src/sysmem.su

.PHONY: clean-Src

