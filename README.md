# Shadowrun LaTeX Template

This is a LaTeX template for Holostreets works inspired by the Shadowrun Single Page Template provided by CGL.

## Use

This package uses the transparent package supported by pdfTeX and LuaTeX, as well as the fontspec package supported by XeTeX and luaTeX. luaTeX is therefore recommended.

This package overrides the default `\maketitle` and `\tableofcontents` commands. The `\tableofcontents` command will automatically begin numbering after the table of contents. If you don't want to use the table of contents, use `\beginnumbering` to begin numbering.

You can override the title image by redefining the `\titleimage` command.

You can remove the logo for Catalyst Game Labs from the title page by using the `no-cgl` class option.

You can change the colour scheme, Shadowrun title logo, and/or font setup with class options:

- For colour schemes, `purple`, `blue`, and `red` are supported.
- For the Shadowrun title logo, `logo-6e`, `logo-5e`, `logo-4e`, `logo-3e`, `logo-2e`, and `logo-1e` are all supported. Note that `logo-2e` and `logo-1e` use the same logos.
- For the font setup, `font-6e`, `font-6e-freealt`, `font-5e`, and `font-5e-freealt` are supported.

If no options are specified, the default options are `purple`, `logo-6e`, and `font-6e-freealt`.

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

Certain fonts must be acquired externally:

- The Shadowrun and Decker fonts are used for main text for all font options. They can both be acquired [here](https://rpg.divnull.com/srun/fonts.html).
- If you are using `font-6e`, the Amplitude Medium font is used for tables, the Njord Regular font is used for headings, and the Njord Alternate font is used for the main title.
  - Amplitude Medium can be purchased for commercial use [here](https://store.typenetwork.com/foundry/fontbureau/fonts/amplitude) and is also available through Adobe Creative Cloud [here](https://fonts.adobe.com/fonts/amplitude).
  - Njord Regular and Njord Alternate can be purchased for commercial use [here](https://www.tugcu.co/fonts/p/njord).
- If you are using `font-6e-freealt`, which is also the default option if no alternative font option is specified, the Creato Display font is used for tables, and the Mustica Pro font is used for headings.
  - Creato Display can be acquired for free for commercial use [here](https://www.dafont.com/creato-display.font).
  - Mustica Pro can be acquired for free for commercial use [here](https://www.dafont.com/mustica-pro.font).
- If you are using `font-5e`, the Univers Condensed Bold font is used for tables, and the Armadura Solid font is used for headings.
  - Univers Condensed Bold comes with Windows by default and can also be acquired for free for commercial use [here](https://font.download/font/univers-condensed).
  - Armadura Solid can be purchased for commercial use [here](https://www.myfonts.com/products/solid-armadura-177401).
- If you are using `font-5e-freealt`, the Univers Condensed Bold font is used for tables, and the Squares Bold font is used for headings.
  - Univers Condensed Bold comes with Windows by default and can also be acquired for free for commercial use [here](https://font.download/font/univers-condensed).
  - Squares Bold can be acquired for free for commercial use [here](https://www.1001fonts.com/squares-bold-font.html).

## Assets

This project uses assets from the Holostreets Shadowrun [Editions Logo Pack](https://drivethrurpg.com/product/433897/shadowrun-holostreets-shadowrun-editions-logo-pack), and the Shadowrun [Single Page Template](https://drivethrurpg.com/product/431512/shadowrun-holostreets-single-page-template). Some of these assets have been modified.

The [default image](https://pixabay.com/illustrations/robot-machine-digital-robots-4120890/) included is royalty-free under the Pixaby Content Licence.

## Licencing

This work is licensed under CC BY-SA 4.0. To view a copy of this license, visit [https://creativecommons.org/licenses/by-sa/4.0/](https://creativecommons.org/licenses/by-sa/4.0/).
