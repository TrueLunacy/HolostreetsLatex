# Shadowrun LaTeX Template

This is a LaTeX template for Holostreets works inspired by the Shadowrun Single Page Template provided by CGL.

A guide to use this template on Overleaf can be found in `Overleaf-Setup.md`

## Use

This package uses lua script features. LuaTeX is required to use this class.

This package overrides the default `\maketitle` and `\tableofcontents` commands. The `\tableofcontents` command will automatically begin numbering after the table of contents. If you don't want to use the table of contents, use `\beginnumbering` to begin numbering manually.

You can override the title image by redefining the `\titleimage` command, to a file path for the image you wish to use..

You can remove the logo for Catalyst Game Labs from the title page by using the `titlepage-no-cgl` class option.

You can add the chapter background images to the title page to make it seamless with the title image by using the `titlepage-seamless` class option.

You can change the colour scheme, Shadowrun title logo, and/or font setup with class options:

- For colour schemes, `purple`, `blue`, and `red` are supported.
- For the Shadowrun title logo, `logo-6e`, `logo-5e`, `logo-4e`, `logo-3e`, `logo-2e`, and `logo-1e` are all supported. Note that `logo-2e` and `logo-1e` use the same logos.
- For the font setup, `font-6e`, `font-6e-freealt`, `font-5e`, and `font-5e-freealt` are supported.

If no options are specified, the default options are `purple`, `logo-6e`, and `font-6e-freealt`.

`openany` as an option is supported, which allows chapters to open on any page. The default is `openright`, which forces chapters to only open on right pages, as if the file was a book.

`no-images` as an option removes rendering images from the output. This can speed up compilation times, but isn't suitable for a final publish.

An example LaTeX file is provided in the example folder, showcasing the features of this class file.

### Fonts

This template uses five fonts. You can override the font setup as follows.

- Main font - `\setmainfont{your font}` - The main text font.
- Monospace font - `\setmonofont{your font}` - The font used in monospace sections, such as Jackpoint chatter.
- Title font - `\setfontfamily\titlefont{your font}` - The font used by the main title on the titlepage.
- Header font - `\setfontfamily\headerfont{your font}` - The font used for all headings and chapter titles, including table headings and the bottom of the page current chapter/section reminder.
- Table font - `\setfontfamily\tablefont{your font}` - The font used for text inside tables and figures.

### Commands

The following commands are defined:

`\tableheader{header}` Formats text for use as a heading in a table.

`\quality{title}{cost}{details}`

`\adeptpower{title}{cost}{details}`

`\combatspell{name}{subheader}{spell type}{spell range}{spell damage}{spell duration}{drain value}{content}`

`\spell{name}{subheader}{spell type}{spell range}{spell duration}{drain value}{content}`

`\todo{text}`

`\matrixaction{name}{subheader}{content}`

`\yen` In case you get lazy about copying ¥ around and don't have a key on your keyboard

`\wholerow{columns}{content}` Helper method for spanning a whole row in a tabularx environment. Specify the number of columns as the first argument, and your row content as the second.

### Environments

The following environments are defined:

`chatter` No arguments, formatted with a monospace font e.g Jackpoint chatter.

`srsmalltable` The `table` environment, except preformatted, and taking an additional argument, a header.

`srbigtable` The `table*` environment, except preformatted, and taking an additional argument, a header.

`srsmallbox` The `figure` environment, except preformatted, and taking an additional argument, a header.

`srbigbox` The `figure*` environment, except preformatted, and taking an additional argument, a header.

### Collections

A new, special command is defined, `\newcollection{<name>}{columns}{column specification}` that is intended for use in generating tables. This command will define a number of new commands, useful for generating tables for weapons, items, ware and more.

The `<name>` argument in the command defines the base name of the helper commands. Unlike newcommand, it should not be given with a slash. The `columns` argument is the number of columns in the table, it also specifies the number of arguments in some of the helper commands. The column specification is the specification as given in tabularx. The tabularx environment created will have its width set to \textwidth, and is intended for use in the `srsmalltable` or  `srbigtable` environments.

There are five additional commands defined.

`\<name>` with `columns` arguments. Each argument corresponds to a single cell, the whole command defines a row.

`\<name>Header`with `columns` arguments. Each value is surrounded by a `\tableheader{...}`, to define headers.

`\<name>WholeRow` with 1 argument. This value is set over the entire row.

`\<name>RowDirect` with 1 argument. The value is set as an entire row in the tabularx environment, with no preprocessing. A `\\` is set at the end of the value, otherwise you can use this to do anything you'd like in the tabularx environment.

`\<name>TableOut` with no arguments. This prints the entire table as defined.

The example document has examples of this command in action.

## Requirements

The sty file requires the following LaTeX packages: adjustbox, anyfontsize, array, background, colortbl, enumitem, etoc, etoolbox, etoolbox, fancyhdr, float, fontspec, geometry, ifthen, luacode, mdframed, multirow, ragged2e, setspace, stfloats, tabularx, tikz, titlesec, titling, transparent, xcolor.

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

## Common Issues

### Extremely Large PDF files

The image files are not compressed at all when a PDF is made, resulting in an extremely large file. If you are on Linux or otherwise have access to ghostscript, you can use the following command to compress the files.

`gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=compressed.pdf main.pdf`

`/ebook` may be replaced with `/screen` for lower resolution output, and `/default` for higher resolution output. Consult the [ghostscript documentation](https://ghostscript.readthedocs.io/en/gs10.0.0/VectorDevices.html#the-family-of-pdf-and-postscript-output-devices) for more information.

### Long Build Time

You can use the `no-images` option to build your project faster. This shortens build time by not including the high-quality images in the document. The layout should be identical to a full build, with the exception of the title page, but you should still check it on a full build before publishing.

## Licencing

This work is licensed under CC BY-SA 4.0. To view a copy of this license, visit [https://creativecommons.org/licenses/by-sa/4.0/](https://creativecommons.org/licenses/by-sa/4.0/).
