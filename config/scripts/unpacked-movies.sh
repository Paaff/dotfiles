#!/usr/bin/env bash

# Argument provided by user. Expected to be a directory path.
if [[ -z $1 ]] ; then
	echo "No path supplied. Exiting.."
	exit 1
fi

PATH="$1"

# Function to check whether the or not the directory has a mkv file in it.
hasMKV() {
    for f in $1/*; do
        case ${f: -4} in
            ".mkv" | ".avi" | ".iso" | ".ISO")
                return 1 ;;
            *)
        esac
    done
    
    # No .mkv files found, return the path so we know which dir it is.
    echo $1
}

# Go into each folder in the directory given.
for dir in $1/*; do 
    if [ -d "$dir" ]; then
        hasMKV $dir;
    fi
done


