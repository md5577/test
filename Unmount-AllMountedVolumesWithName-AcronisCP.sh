#!/bin/sh

#
# Description:
# This script will unmount any (one or many) mounted Volume used for 'Acronis Cyber Protect' tool.
# Script ID: 20230125093555
#
# History:
# 2023/01/25: created by Marius D.
#

echo Start script with name: '$0'.
echo "Script ID: 20230125093555"
echo "List all mounted volumes names:..."
ls -l /Volumes

VOL_KEYWORDS="Acronis Cyber Protect Agent"
if [[ -n $(ls -l /Volumes | grep "$VOL_KEYWORDS") ]]; then
	echo "One or more volumes named '$VOL_KEYWORDS'. Proceed with unmounting."
	for path in "/Volumes/$VOL_KEYWORDS"*; do
		echo "Detach/Unmount volume: path=$path"
		hdiutil detach "$path" -force
	done
else
	echo "No volume mounted named '$VOL_KEYWORDS'. Nothing to do."
fi

VOL_KEYWORDS="Agent for macOS"
if [[ -n $(ls -l /Volumes | grep "$VOL_KEYWORDS") ]]; then
	echo "One or more volumes named '$VOL_KEYWORDS'. Proceed with unmounting."
	for path in "/Volumes/$VOL_KEYWORDS"*; do
		echo "Detach/Unmount volume: path=$path"
		hdiutil detach "$path" -force
	done
else
	echo "No volume mounted named '$VOL_KEYWORDS'. Nothing to do."
fi

VOL_KEYWORDS="Acronis"
if [[ -n $(ls -l /Volumes | grep "$VOL_KEYWORDS") ]]; then
	echo "One or more volumes named '$VOL_KEYWORDS'. Proceed with unmounting."
	for path in "/Volumes/$VOL_KEYWORDS"*; do
		echo "Detach/Unmount volume: path=$path"
		hdiutil detach "$path" -force
	done
else
	echo "No volume mounted named '$VOL_KEYWORDS'. Nothing to do."
fi

exit 0