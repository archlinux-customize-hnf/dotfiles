#         _       _ _
#   __  _(_)_ __ (_) |_ _ __ ___
#   \ \/ / | '_ \| | __| '__/ __|
#  _ >  <| | | | | | |_| | | (__
# (_)_/\_\_|_| |_|_|\__|_|  \___|
# 
# --------------------------------------------------------------
#
feh --no-fehbg --bg-fill --randomize ~/pictures/wallpapers &
sleep 0.7
xrandr --setprovideroutputsource NVIDIA-G0 Intel &
xrandr --output HDMI-1-0 --mode 1920x1080 --output eDP-1 --off &
xcompmgr &
slstatus &
exec dwm
