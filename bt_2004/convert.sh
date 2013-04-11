#!/bin/bash

#   file                 : convert.sh
#   created              : Fri Oct 22 11:01:37 CET 2004
#   copyright            : (C) 2004 Bernhard Wymann
#   email                : berniw@bluewin.ch
#   version              : $Id$

#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.

# Script to create your own version of bt_2004.
# Read the new name, it MUST differ from bt_2004 (TODO: check).
echo
echo "If you have not yet read the README do it before you run the script again."
echo "This script will create your own version of bt_2004. Please enter the new name,"
echo "e.g. \"gaga_2005\", use just lowercase characters, \"_\" and digits."
echo
echo -n "Name: "
read robotname

# Check if the name is ok.
cname=`echo $robotname | grep -E "^[a-z]+_200[4-9]$"`
if [[ $cname != $robotname ]]; then
	echo;
	echo "ERROR: Name \"$robotname\" does not fit the requirements (^[a-z]+_200[4-9]$).";
	echo;
	exit;
fi

# Create string for name.
robotstring=`echo $robotname | sed s/_/\ /`
basename="bt_2004"
basestring="bt 2004"

# Create directories.
find . -type d -exec mkdir -p "../$robotname/{}" \;

#Copy and transform files.
for f in `find . -type f`; do
	fname=`echo $f | sed s/bt_2004/$robotname/`
	sed "s/$basename/$robotname/g" $f | sed "s/$basestring/$robotstring/g" > "../$robotname/$fname"
done
