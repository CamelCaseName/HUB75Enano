# decompiling the arduino binaries
navigate to the temp folder where gcc places the .elf files
run this command `avr-objdump -S .\dev.ino.elf > "dev.ino.compiled.asm"`
profit. It will be output in avr assembly, intel syntax.