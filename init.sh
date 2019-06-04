#!/bin/bash

git submodule update --init --recursive

pip3 install future
cd mavlink/mavlink
rm -rf ../include/mavlink/
python3 -m pymavlink.tools.mavgen --lang=C++11 --wire-protocol=2.0 --output=../include/mavlink/ message_definitions/v1.0/common.xml

