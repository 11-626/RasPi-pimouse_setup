#!/bin/bash

sudo insmod ~/RaspberryPiMouse/lib/Pi2B+/4.14.70-v7+/rtmouse.ko
lsmod | grep rtmouse

sleep 1
sudo chmod 666 /dev/rt*

sleep 1
# for the sake of safety powoff motor
echo 0 > /dev/rtmotoren0
