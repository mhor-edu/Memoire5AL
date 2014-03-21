#!/bin/bash

echo "suppresion de l'ancienne version"

rm memoire.pdf
rm output.pdf

echo "Generate of report"

pandoc -N --template=templates/mytemplate.tex \
  --variable mainfont=Georgia \
  --variable sansfont=Arial \
  --variable monofont="Bitstream Vera Sans Mono" \
  --variable toc-depth=6 \
  --variable fontsize=12pt \
  -V geometry:"top=3cm, bottom=3cm, left=3cm, right=3cm" \
  -s --highlight-style haddock \
  summary/* \
  Chapters/1* Chapters/2* Chapters/3* Chapters/Outils/* Chapters/4* Chapters/Methods/* Chapters/5* Chapters/6* Chapters/7* \
  --latex-engine=pdflatex \
  --toc -o output.pdf

echo "Done Generate of report"

echo "Fusion"
gs -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile=memoire.pdf templates/PageCouverture.pdf output.pdf templates/plagiat.pdf
echo "Done Fusion"

rm output.pdf
open memoire.pdf

