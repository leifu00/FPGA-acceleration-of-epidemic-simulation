aoc -march=emulator -v device/main_general.cl -o bin/main_emulation.aocx
ln -sf main_emulation.aocx bin/main.aocx

make
./bin/host -emulator 
