@echo off

::set "output_file=github_link.txt"
set "output_file=README.md"

::set "prefix=hack/"
set "prefix="

rem delete previous first
del %output_file%

echo # AVR_ATtiny45_FM_transmitter  > %output_file%
echo clone and try to better understanding mixer and RF TX, Attiny45 MCU acts as RF signal generator at FM89.9 or FM90.7   >> %output_file%

echo ### AVR ATtiny45 FM Transitter testing OK  >> %output_file%

echo recomile done, no lib used, recovered from old archive   >> %output_file%
echo by xiaoalab   >> %output_file%
echo ...   >> %output_file%

echo originaator/author, https://spritesmods.com/?art=avrfmtx   >> %output_file%
echo ...   >> %output_file%

echo ### How to   >> %output_file%
echo build.bat, will build hex code and burn the avr chip   >> %output_file%
echo programmer : usbtiny or the clone   >> %output_file%
echo ...   >> %output_file%

echo ### Tx freuency (MHz)   >> %output_file%
echo images, 89.9 / 90.6 / 101.1 etc.,  >> %output_file%
echo DSP radid and FM radio has different reception frequency, perhaps down-conversion mixer are different   >> %output_file%
echo ...   >> %output_file%


rem Use 'dir' command to list files and save the output to a temporary file
dir /b > temp.txt

rem Iterate through each line of the temporary file
for /f "tokens=* delims=" %%a in (temp.txt) do (

    rem Check if the file does not end with ".bat" and is not "github_link.txt"
    rem if /i "%%~xa" neq ".bat" if /i "%%a" neq "github_link.txt" if /i "%%a" neq "temp.txt" (
	if /i "%%~xa" neq  ".lst" if /i "%%~xa" neq "github_link_build_filelist.bat" if /i "%%a" neq "github_link.txt" if /i "%%a" neq "temp.txt" (
        rem Format each line with the prefix and append it to the output file
		rem two more space for each line, github format required as line change
		echo %%a  >> %output_file%
		echo ![%prefix%%%a](%prefix%%%a^)  >> %output_file%
		echo ...  >> %output_file%
    )
)

rem Cleanup: delete the temporary file
del temp.txt

echo "Output written to %output_file%"
