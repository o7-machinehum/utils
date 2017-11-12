#!/bin/bash

val=$(cat /sys/class/power_supply/battery/current_now)
printf "Battery Current = %suA\n" "$val"

val=$(cat /sys/class/power_supply/battery/voltage_now)
printf "Battery Voltage = %suV\n" "$val"
