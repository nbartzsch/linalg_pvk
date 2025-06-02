Lineare Algebra I & II  - PVK Skript Sommer 2025

-----------
For questions or issues, please contact:
Nicolas Bartzsch
nbartzsch@ethz.ch

Last Updated: June 2025

==============================

This repository contains LaTeX source files for the Linear Algebra PVK script from summer 2025

Directory Structure
-----------------
- build.sh              : Bash script for compiling the document
- main.tex              : Main document file without solutions
- main_solutions.tex    : Main document file with solutions
- chapters/             : Individual chapter files
- pdf/                  : PDFs from recital notes that contain the main content
- script.sty            : Style sheet for the overall document
- gauss.sty             : Style sheet for notation when using the gauss algorithm

Requirements
-----------
- LaTeX distribution (e.g., TexLive)
- Required packages listed in script.sty

Recomended compilation method
----------
1. Make sure all required packages are installed
2. Run: build.sh in your terminal (executes pdflatex)
3. Select if you want the script with out without solutions
(4. If table of contents or references are missing compile a second time)