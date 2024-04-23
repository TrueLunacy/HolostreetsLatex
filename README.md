# Shadowrun LaTeX Template

This is a LaTeX template for Holostreets works inspired by the Shadowrun Single Page Template provided by CGL.

## Use

This package overrides the default `\maketitle` and `\tableofcontents` commands. The `\tableofcontents` command will automatically begin numbering after the table of contents. If you don't want to use the table of contents, use `\beginnumbering` to begin numbering.

You can override the title image by redefining the `\titleimage` command.

You can change the colour scheme with class options. `blue` and `red` are supported. You can also change the Shadowrun title logo: `logo-5e`, `logo-4e`, `logo-3e`, `logo-2e` and `logo-1e` are all supported, although 1st and 2nd edition use the same logos.

### Commands
The following commands are defined:

`\tableheader{header}`

`\quality{title}{cost}{details}`

`\adeptpower{title}{cost}{details}` 

`\combatspell{name}{subheader}{spell type}{spell range}{spell damage}{spell duration}{drain value}{content}`

`\spell{name}{subheader}{spell type}{spell range}{spell duration}{drain value}{content}`

`\todo{text}`

`\matrixaction{name}{subheader}{content}`

### Environments
The following environments are defined:

`chatter` No arguments, formatted with a monospace font e.g Jackpoint chatter.

`srsmalltable` The `table` environment, except preformatted, and taking an additional argument, a header.

`srbigtable` The `table*` environment, except preformatted, and taking an additional argument, a header.

`srsmallbox` The `figure` environment, except preformatted, and taking an additional argument, a header.

`srbigbox` The `figure*` environment, except preformatted, and taking an additional argument, a header.


## Requirements
The sty file requires the following LaTeX packages: anyfontsize, array, background, colortbl, enumitem, etoc, etoolbox, etoolbox, fancyhdr, float, fontspec, geometry, mdframed, multirow, ragged2e, setspace, stfloats, tabularx, tikz, titlesec, titling, transparent, xcolor.

All of these packages are available on CTAN and are included in the default Arch Linux TeX live distribution.

Certain fonts must be acquired. The Shadowrun and Decker font is used for main text and can be acquired [here](https://rpg.divnull.com/srun/fonts.html). The Creato Display font is used for tables, and can be acquired [here](https://www.dafont.com/creato-display.font). The Mustica Pro font is used for headings, and can be acquired [here](https://www.dafont.com/mustica-pro.font).

## Assets
This project uses assets from the Holostreets Shadowrun [Editions Logo Pack](https://drivethrurpg.com/product/433897/shadowrun-holostreets-shadowrun-editions-logo-pack), and the Shadowrun [Single Page Template](https://drivethrurpg.com/product/431512/shadowrun-holostreets-single-page-template). Some of these assets have been modified.

The [default image](https://pixabay.com/illustrations/robot-machine-digital-robots-4120890/) included is royalty-free under the Pixaby Content Licence.

## Licencing

This work is licensed under CC BY-SA 4.0. To view a copy of this license, visit https://creativecommons.org/licenses/by-sa/4.0/