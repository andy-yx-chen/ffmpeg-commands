#!/bin/bash
ffmpeg -y -i $1 -i $2 -filter_complex "[0]volume=1.4[a];[1]volume=$3,adelay=$4|$4[b];[a][b]amix=inputs=2:duration=longest" -c:a libmp3lame -qscale:a 0 $5.mp3
