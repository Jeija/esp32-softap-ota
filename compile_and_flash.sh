#!/bin/bash

killall -SIGUSR2 gtkterm
. /opt/esp32/esp-idf/export.sh > /dev/null 2>&1
idf.py app
idf.py -p /dev/ttyUSB0 flash -b 921600
killall -SIGUSR1 gtkterm
