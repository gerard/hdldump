#!/bin/bash

HDL_BIN=`which hdl_dump`

[ "$1" = "-d" ] && HDL_BIN="echo [$#] $HDL_BIN" && shift
[ -z "$1" ] && echo "E: Give at least one command" && exit 1
HDL_CMD=$1 && shift

if [ "$1" = "$PS2_IP" ] ; then
    # No shortcut for the IP is used
    $HDL_BIN $HDL_CMD "$@"
else 
    [ -z "$PS2_IP" ] && echo "E: Set PS2_IP environment variable" && exit 1
    $HDL_BIN $HDL_CMD $PS2_IP "$@"
fi

exit $?
