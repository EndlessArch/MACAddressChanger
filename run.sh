#!/bin/bash

echo "실행~"

STR=""
DEV="en0" # LAN Device of Mac
FILE=TARGET_MAC_ADDR.txt
if [ -f "$FILE" ]; then
    # 4
    STR=$(head -n 1 $FILE)
    echo $STR
else
    # 4
    echo "기본 MAC 주소는 A1:AA:A2:B2:BB:B1. 원하는 MAC 주소가 있다면 $FILE 생성 후 MAC 주소만 적을 것(검사는 없으니 주의)"
    STR="A1:AA:A2:B2:BB:B1"
fi

for ((i=1; i< 10; i++)); do
    #4
    sudo ifconfig $DEV ether $STR
done

echo "이더넷 장치를 껐다 킴"
sudo ifconfig $DEV down

sudo ifconfig $DEV up
