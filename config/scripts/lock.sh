#!/bin/bash
scrot -e 'convert -blur 0x3 $f '$HOME'/pictures/lockbg.png'
convert -gravity center -composite $HOME/pictures/lockbg.png $HOME/pictures/lock.png $HOME/pictures/lockfinal.png
i3lock -u -i $HOME/pictures/lockfinal.png
rm $HOME/pictures/lockfinal.png $HOME/pictures/lockbg.png

