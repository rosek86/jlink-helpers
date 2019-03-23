#!/bin/bash

if [[ $# -ne 2 ]]; then
  echo "./load_hex.sh device filename.hex"
  echo "./load_hex.sh NRF52 nrf52832.hex"
  exit 1
fi

echo "r
e
loadfile \"$2\"
r
g
q" > cmd

JLinkExe -Device $1 -Speed 4000 -If SWD -Autoconnect 1 -CommanderScript cmd

