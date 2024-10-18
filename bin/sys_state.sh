#!/bin/bash

# Obtener el uso de RAM (en MB)
mem_total=$(free -m | awk '/^Mem:/ {print $2}')
mem_used=$(free -m | awk '/^Mem:/ {print $3}')

# Obtener el uso de CPU
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')  # suma el porcentaje de user y system

# Obtener el uso de disco (en la raíz /)
disk_used=$(df -h / | awk 'NR==2 {print $3}')
disk_total=$(df -h / | awk 'NR==2 {print $2}')

# Mostrar la información de RAM, disco y CPU con colores
#echo "%{F#f4a261}RAM:%{F#FFFFFF}$mem_used/$mem_total MB\
#%{F#83a598}  %{F#FFFFFF}$disk_used/$disk_total \
#%{F#FFFFFF}CPU $cpu_usage% %{F#d3869b}"

#echo "%{T6}%{F#89b4fa}RAM : %{F#FFFFFF}$mem_used/$mem_total MB\
#%{F#f9e2af} DISK : %{F#FFFFFF}$disk_used/$disk_total \
#%{F#f38ba8}CPU : %{F#FFFFFF}$cpu_usage%"

echo "%{T6}%{F#f7768e}RAM : %{F#FFFFFF}$mem_used/$mem_total MB\
%{F#7aa2f7} DISK : %{F#FFFFFF}$disk_used/$disk_total \
%{F#e0af68}CPU : %{F#FFFFFF}$cpu_usage%"



