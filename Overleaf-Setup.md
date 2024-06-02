# Shadowrun LaTeX Template on Overleaf.com

**Warning:** Overleaf's free plan has a strict time limit for building LaTeX projects, and large or complex projects may overrun this. If this happens, you must either run the build locally, or purchase an Overleaf paid plan. The no-images mode may help in reducing compile times, but is not suitable for publishing.

This guide assumes you have set up an account on Overleaf, and downloaded the required fonts.

## Project Upload

You can acquire a zipped version of the project [here](https://github.com/TrueLunacy/HolostreetsLatex/releases/tag/nightly). This is built using the latest code at time of download, but compresses some of the image files to be smaller to avoid file size limits.

Create a new project in Overleaf and use this zip file as the base. Overleaf provides a guide for this [here](https://www.overleaf.com/learn/how-to/Uploading_a_project).

## Required Configuration

When you upload this project to Overleaf, the project will fail to build. You must upload all fonts, and change your compiler to LuaTeX before the project will build. You can find the settings for the compiler in the menu for your project.

All font files you need must be uploaded to your project and named properly before it will compile. The font must be named exactly what the compiler expects, otherwise the project will fail to build properly. The error log will tell you what font it cannot find, with an error as similar: `Package fontspec error: The font ">MISSING FONT<" cannot be found.`

The list of font names as expected is as follows:
- Shadowrun
- Decker
- Mustica Pro Semi-Bold
- Creato Display
- Njord Alternate
- Njord Regular
- Amplitude Medium
- Squares Bold
- Univers Condensed Bold
- Armadura Solid