# Arch Stuff
## Starting the SSH server
systemctl start sshd.service

# CPU Stuff
[This](https://wiki.debian.org/CpuFrequencyScaling) contains a lot of really
good info regarding scaling CPU speeds.
- sudo cpupower frequency-info
- sudo cpupower frequency-set -g performance
    - Max all the time
- sudo cpupower frequency-set -g ondemand
    - Slow down when not needed

# Random
[Buiilding w/ Embedded Linux](https://jaycarlson.net/embedded-linux/)
