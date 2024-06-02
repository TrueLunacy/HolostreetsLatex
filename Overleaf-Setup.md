# Shadowrun LaTeX Template on Overleaf.com

This is how to setup Overleaf with this repository. This assumes you have made a new account and have a new project ready to go.

## Base Files and Folders to upload

Move over the following files and folders:
```text
background
definitions
images
commands.tex
options.tex
configuration.tex
packages.tex
shadowrun.cls
```

After uploading all of those files. Move /background/exampleimage.jpg into the root file directory (So just move it next to commands.tex instead of being inside images folder).


## Base Template
When you create a new file, you will have a `main.tex` copy the following to.Feel free to change `logo-3e` to 4e, 5e, etc. I'm going to show you how to setup -most- of this. There are still a lot of things to do for different font's. 

### main.tex 
```latex
\documentclass[logo-3e,purple,font-5e-freealt,titlepage-seamless]{shadowrun}
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}

\title{Your Adventure's Title}
\author{Your Name}
\date{May 2024}

\begin{document}

\maketitle

\section{Prologue}

\section{How To Use This Book}

\section{Plot Synopsis}

\section{Cast Of Shadows}

\end{document}
```

## Installing Fonts

When you get this going you need to add the `Shadowrun.tff` and `Decker.tff`. Download from the links below, then put into the base directory (on the same level as `commands.tex`) and name the exactly as I have them display.

[Shadowrun Fonts](http://thor.divnull.com/pub/fonts/Shadowrun-12.zip)
[Decker Fonts](http://thor.divnull.com/pub/fonts/Decker-12.zip)

For using `font-5e-freealt` in your `main.tex`, then you will need `SquaresBold.otf` and `UniversCondensedBold.ttf`. When you export the font files, you need to find whatever they are named (and they will be named something generic, but you will see them say something like `squares_bold_2234.otf`) and change them to exactly what I have named them above and put them also next to `main.tex` in the file structure.

## Configuring the correct engine

This project used LuaLaTex. Click on Menu in the top left, then down to "Compiler" and change it to LuaLaTex. This will correct all of the compile errors. After doing this, when you compile you -should- be seeing a basic setup render on your right.