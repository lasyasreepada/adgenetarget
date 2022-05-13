#!/usr/bin/env Rscript 

# Package installs
install.packages('tidyverse', repos='http://cran.rstudio.com/')
install.packages('readr', repos='http://cran.rstudio.com/')
install.packages('dplyr', repos='http://cran.rstudio.com/')
install.packages('devtools', repos='http://cran.rstudio.com/')
install.packages('stringr', repos='http://cran.rstudio.com/')
install.packages('forestplot', repos='http://cran.rstudio.com/')
install.packages('remotes', repos='http://cran.rstudio.com/')

library("devtools")
devtools::install_github('MRCIEU/TwoSampleMR')
install.packages('MendelianRandomization', repos='http://cran.rstudio.com/')
remotes::install_github('chr1swallace/coloc')

install.packages('BiocManager')

library("BiocManager")
BiocManager::install(version = '3.10')
BiocManager::install('biomaRt')