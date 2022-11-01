
## This file helps install our R environment


install.packages(c("tidyverse", "optmatch", "blocktools", "designmatch", "RItools",
                   "coin", "DeclareDesign", "lme4", "brms", "rstanarm", "here", 
                   "blkvar", "lfe", "fixest", "data.table", "dtplyr", "estimatr", 
                   "quarto", "rmarkdown", "bookdown", "tinytex", "renv", "styler",
                   "quickmatch", "nbpMatching","languageserver"), dependencies = TRUE)

## You might need to install some other pieces one at a time:

## blockTools

## Get tinytex working for our reports
### To install the most LaTeX packages
tinytex::install_tinytex(bundle = 'TinyTeX-2')
## To install fewer:
## tinytex::install_tinytex()
## tinytex:::install_yihui_pkgs()

## Test tinytex in the most basic way.
writeLines(c(
  "\\documentclass{article}",
  "\\begin{document}", "Hello world!", "\\end{document}"
), "test.tex")

tinytex::pdflatex("test.tex")
