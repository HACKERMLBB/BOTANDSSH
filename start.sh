#!/bin/bash

# 1. Bot eka background eke duvanna
python main.py &

sleep 3

# 2. Web Terminal eka $PORT eke duvanna
# pamela = username, CHANGE_THIS_PASSWORD_123 = password - MEKA MARU KARANNA!
exec ttyd -p $PORT -c pamela:CHANGE_THIS_PASSWORD_123 -W bash
