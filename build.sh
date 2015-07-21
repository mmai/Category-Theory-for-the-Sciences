#!/bin/bash

wget --mirror --convert-links --adjust-extension --page-requisites --no-parent http://category-theory.mitpress.mit.edu/toc.html

cd category-theory.mitpress.mit.edu
pandoc -S -o ../category_theory_for_the_sciences.epub ../title.txt \
  index.html \
  copyright.html \
  acknowledgments.html \
  toc.html \
  chapter001.html \
  chapter002.html \
  chapter003.html \
  chapter004.html \
  chapter005.html \
  chapter006.html \
  chapter007.html \
  reference.html \
  bookindex.html 
cd -
