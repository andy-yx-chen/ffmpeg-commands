#!/bin/bash
ffmpeg -i $1.mp4 -c copy -vn $2.m4a
