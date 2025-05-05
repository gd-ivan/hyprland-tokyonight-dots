#!/usr/bin/python3
import os

state = os.popen("bluetoothctl show | grep 'PowerState'").read().strip().removeprefix("PowerState: ")

print(state)

if state == "on":
	os.system("bluetoothctl power off")
else:
	os.system("bluetoothctl power on")
