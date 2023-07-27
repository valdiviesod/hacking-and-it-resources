#!/bin/bash

echo -n "Number: "
read num

if [ $num -gt 5 ]; then #gt -> greater than lt -> lower than le -> lower or equal ge -> greater or equal eq -> equal
# ne -> not equal
echo "Mayor a 5"
else
echo "menor a 5"
fi
