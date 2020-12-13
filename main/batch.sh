source /data/intel_fpga/devcloudLoginToolSetup.sh
tools_setup -t A10DS

# Running project in FPGA Hardware Mode (this takes approximately 1 hour)
printf "\\n%s\\n" "Running in FPGA Hardware Mode:"
cd FPGA-acceleration-of-epidemic-simulation/main
aoc device/main.cl -o bin/main_fpga.aocx -board=pac_a10
ln -sf main_fpga.aocx bin/main.aocx
make
cd bin
printf "\\n%s\\n" "Converting to unsigned .aocx:"
printf "Y\\nY\\n" | source $AOCL_BOARD_PACKAGE_ROOT/linux64/libexec/sign_aocx.sh -H openssl_manager -i main_fpga.aocx -r NULL -k NULL -o main_fpga_unsigned.aocx
error_check
aocl program acl0 main_fpga_unsigned.aocx
./host
error_check

