#!/bin/sh

APP=$1
RES=2880x1620
USER=dylan
IP=winwizardtech.com:51996

xfreerdp -u $USER -g $RES --app --plugin rail --data $APP -- $IP

