#!/bin/bash -
#
# Cybersecurity Ops with bash
# osdetect.sh
#
# Description: 
# Distinguish between MS-Windows/Linux/MacOS
#
# Usage: bash osdetect.sh
#   output will be one of: Linux MSWin macOS
#
function osdetect()
{

    if type -t wevtutil &> /dev/null           # <1>
    then
    #  OS 未用 local 声明, 故为全局变量
        OS=MSWin
    elif type -t scutil &> /dev/null           # <2>
    then
        OS=macOS
    else
        OS=Linux
    fi
    return 0
}

osdetect
echo $OS
