#!/bin/bash

killall -q picom
sleep 1
picom -b --experimental-backends
