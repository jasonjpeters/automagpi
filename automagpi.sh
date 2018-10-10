#!/usr/bin/env bash

MAGPI_URL="https://www.raspberrypi.org/magpi-issues/"


curl ${MAGPI_URL} | grep -o 'href="[^"]*.[pdf]"' | cut -d\" -f2 | uniq > ./.library.list


while read name; do
    if [ ! -f ./library/${name} ]; then
        wget -e robots=off -O ./library/${name} ${MAGPI_URL}/${name}
    fi
done < ./.library.list