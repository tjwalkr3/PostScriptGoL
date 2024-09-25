# Running Conway's Game of Life in PostScript
Download the project: 

```
git clone https://github.com/tjwalkr3/PostScriptGoL.git
```

Then enter the directory: 

```
cd PostScriptGoL
```

To run this postscript file, download <a href="https://www.ghostscript.com/" target="_blank">ghostscript</a>: 

```
sudo apt install ghostscript -y
```

Then generate a PDF with the command: 

```
ps2pdf GameOfLife.ps GameOfLife.pdf
```

Now open the PDF with your favorite PDF viewer.  Each page is one iteration of the game.  You can change the number of cells in the square grid, and how many pixels in each cell by editing the parameters at the top of the PostScript file.  
