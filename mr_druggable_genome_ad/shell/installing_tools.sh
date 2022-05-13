#!/usr/bin/env zsh


# Install METAL for GWAS meta-analysis for Mac
curl http://csg.sph.umich.edu/abecasis/Metal/download/Darwin-metal.tar.gz -o Darwin-metal.tar.gz
tar -xvf Darwin-metal.tar.gz

# Install R

# Download R here: https://cran.r-project.org/bin/macosx/
# Select R-4.2.0-arm64.pkg for M1 macs
# Use installer to setup. Requires XCode

# Install the required R packages
Rscript R_packages.R

# Install Python
# Download Python 3.10.4 here: https://www.python.org/downloads/release/python-3104/
# Use installer to setup.

# crossmap
python3 -m pip install --upgrade pip
pip3 install wheel
pip3 install CrossMap
