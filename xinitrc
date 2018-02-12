
# Load Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

exec i3

# Wal, colorscheme should not be reset when you reboot.
# -R restores the last colorscheme that was in use.
wal -R
