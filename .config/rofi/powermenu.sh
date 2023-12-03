# ---------------------------------------- #
#  _        _                          __  #
# | |_ __ _| | _____   ___ ___  _ __  / _| #
# | __/ _` | |/ / _ \ / __/ _ \| '_ \| |_  #
# | || (_| |   <  __/| (_| (_) | | | |  _| #
#  \__\__,_|_|\_\___(_)___\___/|_| |_|_|   #
#                                          #
# ---------------------------------------- #


#! /bin/sh

chosen=$(printf "  Power Off\n  Restart\n  Lock" | rofi -dmenu -i)

case "$chosen" in
	"  Power Off") poweroff ;;
	"  Restart") reboot ;;
	"  Lock") betterlockscreen -l ;;
	*) exit 1 ;;
esac
