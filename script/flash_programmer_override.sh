#!/bin/sh
#
# This file was automatically generated.
#
# It can be overwritten by nios2-flash-programmer-generate or nios2-flash-programmer-gui.
#
#
# Converting SOF File: ../output_files/de2_115_golden_sopc.sof to: "../flash/de2_115_golden_sopc_epcs.flash"
#
sof2flash --input="../output_files/de2_115_golden_sopc.sof" --output="../flash/de2_115_golden_sopc_epcs.flash" --epcs --verbose 
#
# Converting ELF File: ../software/rt-thread_demo/rt-thread_demo.elf to: "../flash/rt-thread_demo_epcs.flash"
#
elf2flash --input="../software/rt-thread_demo/rt-thread_demo.elf" --output="../flash/rt-thread_demo_epcs.flash" --epcs --after="../flash/de2_115_golden_sopc_epcs.flash" --verbose 
nios2-elf-objcopy -I srec -O ihex ../flash/de2_115_golden_sopc_epcs.flash ../flash/de2_115_golden_sopc_epcs.hex  
nios2-elf-objcopy -I srec -O ihex ../flash/rt-thread_demo_epcs.flash ../flash/rt-thread_demo_epcs.hex  
quartus_cpf -c ../output_files/output_file.cof 