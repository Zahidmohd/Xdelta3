@echo off
CHCP 65001
mkdir output
echo Place the files to be patched in the "original" directory with the following names:
echo --------------------
echo old_file.bin
echo --------------------
echo Patched files will be in the "output" directory
pause
exec\xdelta3_x86_64_win.exe -v -d -s ".\original\old_file.bin" ".\vcdiff\old_file.bin.vcdiff" ".\output\new_file.bin"
echo Completed!
@pause
