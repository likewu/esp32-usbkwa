#!/bin/sh

#cargo espflash --monitor /dev/ttyUSB0 qemu-esp32_cantest.bin
#cargo espflash --monitor COM5 qemu-esp32_cantest.bin
#D:\tools\esptool-v4.6.2-win64\esptool --chip esp32s3 --port COM5 erase_flash
#D:\tools\esptool-v4.6.2-win64\esptool --chip esp32s3 --port COM5 write_flash -z 0x0000 D:/tools/flash_download_tool_3.9.3/espruino_2v16_esp32s3idf4/GENERIC_S3-20230426-v1.20.0.bin
#D:\tools\esptool-v4.6.2-win64\esptool --chip esp32s3 -p COM5 -b 115200 write_flash --flash_mode dio --flash_size detect --flash_freq 40m 0x0 D:/tools/flash_download_tool_3.9.3/espruino_2v16_esp32s3idf4/bootloader.bin 0x8000 D:/tools/flash_download_tool_3.9.3/espruino_2v16_esp32s3idf4//partition-table.bin 0x10000 D:/tools/flash_download_tool_3.9.3/espruino_2v16_esp32s3idf4/espruino.bin
D:\tools\esptool-v4.6.2-win64\esptool --chip esp32s3 -p COM5 -b 115200 write_flash --flash_mode dio --flash_size detect --flash_freq 40m 0x0 usbkwa/build/esp32.esp32.esp32s3/usbkwa.ino.bootloader.bin 0x8000 usbkwa/build/esp32.esp32.esp32s3/usbkwa.ino.partitions.bin 0x10000 usbkwa/build/esp32.esp32.esp32s3/usbkwa.ino.bin
--flash_size 128m
idf.py -p COM5 flash monitor   #Ctrl+] 退出监视器程序

#not nonly 3v, 5v can also download
#G:\Espressif\tools\xtensa-esp32-elf\esp-12.2.0_20230208\xtensa-esp32-elf\bin\xtensa-esp32-elf-objcopy -O binary build/esp32_cantest.elf build/esp32_cantest.bin

wokwi-server --chip esp32s3 build/esp32_cantest.elf
