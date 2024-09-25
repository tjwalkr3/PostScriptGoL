#!/bin/bash
# The packages poppler-utils and ffmpeg must be installed

mkdir png
ps2pdf GameOfLife.ps GameOfLife.pdf
pdftoppm -png -f 1 -l 120 GameOfLife.pdf png/GameOfLife
ffmpeg -y -i png/GameOfLife-%03d.png -filter_complex "fps=12,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen=max_colors=32[p];[s1][p]paletteuse=dither=bayer" GameOfLife.gif
rm -r png