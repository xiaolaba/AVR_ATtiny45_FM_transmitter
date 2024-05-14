:: by xiaolaba, 2021-AUG-10

prompt AVR_Tiny45_FM_TX_testing $G$$ 

:: add tool chain to path
path=%PATH%;C:\avr8-gnu-toolchain-win32_x86\utils\bin;C:\avr8-gnu-toolchain-win32_x86\bin

cls

:://// modified Makeifle, for burn hex code and& fuses
copy Makefile .\fmxmit\Makefile
cd fmxmit

:::://// clean up old project file
make clean
pause

:::://// build hex firmware
:::://// display redirect to file of std, speeding up, no screen showing
make hex >> std
::make hex
::pause

:::://// use makefile to read efuse
::make readfuse

:::://// use makefile to burn hex
make writeflash

:::://// use makefile to change fuse
make writefuse

:::://// almost same as writeflash, no uses here
::make install

@echo off
::// remove files after hex build
rm std
::rm *.o
::rm *.ee.hex
::rm *.out
::rm *.map

goto end

:: burn firmware
set mcu=atmega328p
set target=LMG6401PLGE_lcd.hex
avrdude -c usbtiny -p %mcu% -U flash:w:%target%:a

:end
pause