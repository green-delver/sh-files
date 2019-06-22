#!/bin/bash
read -p "Iso-Name (ohne Dateiendung eingeben): " name
dd if=/dev/sr0 of=$HOME/$name.iso status=progress bs=1M
