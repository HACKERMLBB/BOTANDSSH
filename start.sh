#!/bin/bash

# 1. Bot eka background eke duvanna
python main.py &

sleep 3

# 2. Web Terminal eka $PORT eke duvanna
# Username: pamela | Password: 123456
exec ttyd -p $PORT -c pamela:123456 -W bash
