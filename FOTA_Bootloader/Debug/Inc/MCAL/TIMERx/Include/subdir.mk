################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Inc/MCAL/TIMERx/Include/TIMERx_PROG.c 

OBJS += \
./Inc/MCAL/TIMERx/Include/TIMERx_PROG.o 

C_DEPS += \
./Inc/MCAL/TIMERx/Include/TIMERx_PROG.d 


# Each subdirectory must supply rules for building sources it contributes
Inc/MCAL/TIMERx/Include/%.o Inc/MCAL/TIMERx/Include/%.su Inc/MCAL/TIMERx/Include/%.cyclo: ../Inc/MCAL/TIMERx/Include/%.c Inc/MCAL/TIMERx/Include/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/LIB" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/HAL/WIFI/Include" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/MCAL/EXTI/Include" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/MCAL/GPIO/Include" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/MCAL/RCC/Include" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/MCAL/SYSTICK/Include" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/MCAL/USART/Include" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/MCAL/FPEC/Include" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/MCAL/NVIC/Include" -I"F:/Embedded System/NTI/0_Grag_Project/0_Grad_Project_Drivers/FOTA_Bootloader/Inc/MCAL/TIMERx/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Inc-2f-MCAL-2f-TIMERx-2f-Include

clean-Inc-2f-MCAL-2f-TIMERx-2f-Include:
	-$(RM) ./Inc/MCAL/TIMERx/Include/TIMERx_PROG.cyclo ./Inc/MCAL/TIMERx/Include/TIMERx_PROG.d ./Inc/MCAL/TIMERx/Include/TIMERx_PROG.o ./Inc/MCAL/TIMERx/Include/TIMERx_PROG.su

.PHONY: clean-Inc-2f-MCAL-2f-TIMERx-2f-Include

