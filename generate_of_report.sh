#!/bin/bash

echo "Generate of report"

pandoc -N --template=templates/mytemplate.tex --variable mainfont=Georgia --variable sansfont=Arial --variable monofont="Bitstream Vera Sans Mono" --variable fontsize=12pt -V geometry:"top=3cm, bottom=3cm, left=3cm, right=3cm" -s --highlight-style haddock header.md Chapters/1* Chapters/2* Chapters/3* Chapters/Outils/* Chapters/4* Chapters/Methods/* Chapters/5* Chapters/6* Chapters/7* --latex-engine=xelatex --toc -o memoire.pdf

echo "Done"