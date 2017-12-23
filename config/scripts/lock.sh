#!/bin/bash
scrot -e 'convert -blur 0x3 $f '$HOME'/Pictures/lockbg.png'
convert -gravity center -composite $HOME/Pictures/lockbg.png $HOME/Pictures/lock.png $HOME/Pictures/lockfinal.png
i3lock -u -i $HOME/Pictures/lockfinal.png
rm $HOME/Pictures/lockfinal.png $HOME/Pictures/lockbg.png

