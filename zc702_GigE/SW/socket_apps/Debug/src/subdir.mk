################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/dispatch.c \
../src/echo.c \
../src/http_response.c \
../src/main.c \
../src/platform.c \
../src/platform_fs.c \
../src/platform_gpio.c \
../src/prot_malloc.c \
../src/rxperf.c \
../src/tftpserver.c \
../src/tftputils.c \
../src/txperf.c \
../src/udpsend.c \
../src/urxperf.c \
../src/utxperf.c \
../src/web_utils.c \
../src/webserver.c 

OBJS += \
./src/dispatch.o \
./src/echo.o \
./src/http_response.o \
./src/main.o \
./src/platform.o \
./src/platform_fs.o \
./src/platform_gpio.o \
./src/prot_malloc.o \
./src/rxperf.o \
./src/tftpserver.o \
./src/tftputils.o \
./src/txperf.o \
./src/udpsend.o \
./src/urxperf.o \
./src/utxperf.o \
./src/web_utils.o \
./src/webserver.o 

C_DEPS += \
./src/dispatch.d \
./src/echo.d \
./src/http_response.d \
./src/main.d \
./src/platform.d \
./src/platform_fs.d \
./src/platform_gpio.d \
./src/prot_malloc.d \
./src/rxperf.d \
./src/tftpserver.d \
./src/tftputils.d \
./src/txperf.d \
./src/udpsend.d \
./src/urxperf.d \
./src/utxperf.d \
./src/web_utils.d \
./src/webserver.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../../socket_apps_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


