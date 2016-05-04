#!/bin/sh
vncserver -securitytypes none -geometry 1366x768 && tail -f /root/.vnc/*.log
