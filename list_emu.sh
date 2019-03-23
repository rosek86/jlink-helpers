#!/bin/bash

echo "ShowEmuList
q" > cmd

JLinkExe -CommanderScript cmd | grep Connection

