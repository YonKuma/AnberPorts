#!/bin/bash
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/srb2kart"
LIB64="$(dirname `pwd`)/AnberPorts/lib64"
export SDL_GAMECONTROLLERCONFIG="$(cat gamecontrollerdb.txt)"
export LD_PRELOAD="$LIB64/libpng16.so"
./srb2kart 2>&1 | tee -a ./log.txt
unset SDL_GAMECONTROLLERCONFIG