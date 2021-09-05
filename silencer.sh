#!/bin/bash

Help()
 {
   # display help
   echo
   echo "This script will strip digital silence from the beginning and end of an audio file."
   echo "Useful when ripping music from various streaming services."
   echo
   echo "Syntax: silencer input.file output.file"
   echo
   echo "Weeb Labs - 2021"
}

while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
     \?) # incorrect option
         echo "Error: Invalid option"
         exit;;
   esac
done

if ! [ -x "$(command -v ffmpeg)" ]; then
  echo 'Error: FFMPEG is not installed.' >&2
  exit 1
fi

INPUT=${1?Error: No input file provided}
OUTPUT=${2?Error: No output file provided}
ffmpeg -i $INPUT -af  silenceremove=window=0:detection=peak:start_periods=1:start_threshold=0,areverse,silenceremove=window=0:detection=peak:start_periods=1:start_threshold=0,areverse $OUTPUT
