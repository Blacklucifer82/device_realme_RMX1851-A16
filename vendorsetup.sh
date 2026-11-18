#!/bin/bash

banner(){
echo "================================"
echo "|                              |"
echo "|   Realme 3 Pro Setup Script  |"
echo "|     Branch: Android 17 (LOS) |"
echo "|    Maintained By: Sourabh    |"
echo "|                              |"
echo "================================"
}

banner

# Kernel
if [ ! -d "kernel/realme/sdm710" ]; then
    echo "Cloning Kernel (17-bpf)..."
    git clone --depth=1 https://github.com/Blacklucifer82/android_kernel_realme_sdm710.git -b 17-bpf kernel/realme/sdm710
fi

# Vendor
if [ ! -d "vendor/realme/RMX1851" ]; then
    echo "Cloning Vendor (17)..."
    git clone https://github.com/Blacklucifer82/vendor-realme-RMX1851-A16.git -b 17 vendor/realme/RMX1851
fi

# Dolby
if [ ! -d "hardware/dolby" ]; then
    echo "Cloning Dolby (16)..."
    git clone https://github.com/Blacklucifer82/hardware_dolby.git -b 16 hardware/dolby
fi
