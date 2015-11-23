onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib uc_GPIO_opt

do {wave.do}

view wave
view structure
view signals

do {uc_GPIO.udo}

run -all

quit -force
