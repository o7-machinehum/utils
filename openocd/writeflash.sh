# Write the file

# sudo openocd -f interface/stlink-v2.cfg -f target/stm32f4x_stlink.cfg -c "program filename.elf verify reset exit"

sudo openocd -f interface/stlink-v2.cfg -f target/stm32f4x_stlink.cfg -c "program code.bin exit 0x08000000"
