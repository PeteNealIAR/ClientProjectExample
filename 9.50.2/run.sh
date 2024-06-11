#! /usr/bin/bash

version="bxarm-9.50.2"

CSpyBat="/opt/iarsystems/$version/common/bin/CSpyBat"
armProc="/opt/iarsystems/$version/arm/bin/libarmPROC.so"
armSIM2="/opt/iarsystems/$version/arm/bin/libarmSIM2.so"
armJET="/opt/iarsystems/$version/arm/bin/libarmJET.so"
plugin="/opt/iarsystems/$version/arm/bin/libarmLibsupportUniversal.so"
device_macro="/opt/iarsystems/$version/arm/config/debugger/ST/STM32F4xx.dmac"
flash_loader="/opt/iarsystems/$version/arm/config/flashloader/ST/FlashSTM32F427xI.board"
board_file="/opt/iarsystems/$version/arm/config/flashloader/ST/FlashSTM32F427xI.board"
ddf="/opt/iarsystems/$version/arm/config/debugger/ST/STM32F429II.ddf"
cpu="Cortex-M4"
device="STM32F429II"

$CSpyBat $armProc $armSIM2 "tp.out" --plugin=$plugin --device_macro=$device_macro --backend --endian=little --cpu=$cpu --fpu=VFPv4_SP -p $ddf --semihosting --device=$device --multicore_nr_of_cores=1