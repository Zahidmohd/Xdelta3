#!/bin/sh
cd "$(cd "$(dirname "$0")" && pwd)"
mkdir ./output
chmod +x ./exec/xdelta3_mac
echo Place the files to be patched in the \"original\" directory with the following names:
echo --------------------
echo "old_file.bin"
echo --------------------
echo Patched files will be in the \"output\" directory
read -p "Press enter to continue..." inp
./exec/xdelta3_mac -v -d -s "./original/old_file.bin" "vcdiff/old_file.bin.vcdiff" "./output/new_file.bin"
