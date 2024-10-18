#!/bin/sh

#echo "%{F#2a9d8f}  %{F#FFFFFF}$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}')%{u-}"
echo "%{F#2a9d8f}  %{T6} %{F#FFFFFF}$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}')%{u-}%{T-}"

