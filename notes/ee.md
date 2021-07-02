# Embedded Systems
https://jaycarlson.net/embedded-linux/

## GDB Cheat Sheet
Ensure you use the -g flag when you compile.

### Running
gdb "binary" - Running, should bring you to a GDB shell
run - Run the application

### Breakpoints
break file.c:6 - Set a breakpoint at line 6
break my_func - Set a breakpoint at a function
info breakpoints - List the existing breakpoints
delete [breakpoints] - Remove breakpoints
continue - Keep running after break has been hit
step - run one line of code

### Output
print my_var - Print the value of a variable
watch my_var - Halt program execution when value changes

### General Debugging
backtrace - Produce a stack trace


# Wireless
## Radio
[Distance Of Transmission](https://en.wikipedia.org/wiki/Line-of-sight_propagation#Radio_horizon)


# Certification
https://tinyurl.com/y2vcyp9b
    - Good post outlining different certifications
    - However liability isn't correct, you're liable either way

# USB
## USB Inrush (As a device)
Inrush current is measured for a minimum of 100 milliseconds after attach. Attach is defined at the moment the VBus and ground pins of the plug mate with the receptacle. Any current exceeding 100 mA during the 100 ms interval is considered part of the inrush current event. The inrush current is divided into regions. A region is an interval where the current exceeds 100 mA until the time the current falls below 100 mA for at least 100 µs. There can be multiple inrush regions during the 100 ms period. Pass/fail is determined by the region having the highest charge.
