source /data/intel_fpga/devcloudLoginToolSetup.sh
tools_setup -t A10DS

# Running project in FPGA Hardware Mode (this takes approximately 1 hour)
printf "\\n%s\\n" "Running in FPGA Hardware Mode:"
cd FPGA-acceleration-of-epidemic-simulation/main
aoc device/main.cl -o bin/main_fpga.aocx -board=pac_s10_dc -report



