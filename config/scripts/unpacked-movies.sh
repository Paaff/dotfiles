#!/bin/bash

# Argument provided by user. Expected to be a directory path.
if [[ -z $1 ]] ; then
	echo "No path supplied. Exiting.."
	exit 1
fi

no_ext() {
    for f  in "$1"/*; do
        if [ -d "$f" ]; then
            # Just a subdir, no need to check here.
            continue
        fi
            EXT="${f##*.}"
            case $EXT in
                "mkv" | "avi" | "iso" | "ISO")
                    # Known video extensions found.
                    return 1;;
                *)
            esac
    done
    # No video extensions found, return true.
    return 0
}

# Go into each folder in the directory given.
find $1 -maxdepth 1 -type d ! -path $1 | while read dir; do
    if no_ext "$dir"; then
        echo "$dir"
    fi
done
