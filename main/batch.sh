source /data/intel_fpga/devcloudLoginToolSetup.sh
tools_setup -t A10DS
# Job will exit if directory already exists; no overwrite. No error message.
[ ! -d ~/A10_OPENCL_AFU/v1.2.1 ] && mkdir -p ~/A10_OPENCL_AFU/v1.2.1 || exit 0


# Check Arria 10 PAC card connectivity
aocl diagnose
error_check


# Running project in FPGA Hardware Mode (this takes approximately 1 hour)
printf "\\n%s\\n" "Running in FPGA Hardware Mode:"
aoc device/main.cl -o bin/main_fpga.aocx -board=pac_a10
# Relink to hardware .aocx
ln -sf main_fpga.aocx bin/main.aocx
# Availavility of Acceleration cards
aoc -list-boards
error_check
# Get device name
aocl diagnose
error_check

# Converting to an unsigned .aocx file
cd bin
printf "\\n%s\\n" "Converting to unsigned .aocx:"
printf "Y\\nY\\n" | source $AOCL_BOARD_PACKAGE_ROOT/linux64/libexec/sign_aocx.sh -H openssl_manager -i main_fpga.aocx -r NULL -k NULL -o main_fpga_unsigned.aocx
error_check
# Programmming PAC Card
aocl program acl0 main_fpga_unsigned.aocx
./host
error_check