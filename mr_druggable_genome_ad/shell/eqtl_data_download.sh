#!/usr/bin/env zsh

# Download publicly available eQTL data

### psychencode

mkdir eqtl_data_psychencode

curl http://resource.psychencode.org/Datasets/Derived/QTLs/DER-08a_hg19_eQTL.significant.txt -o eqtl_data_psychencode/significant.txt
curl http://resource.psychencode.org/Datasets/Derived/QTLs/SNP_Information_Table_with_Alleles.txt -o eqtl_data_psychencode/snps.txt

### eqtlgen

mkdir eqtl_data_eqtlgen

curl https://molgenis26.gcc.rug.nl/downloads/eqtlgen/cis-eqtl/2019-12-11-cis-eQTLsFDR0.05-ProbeLevel-CohortInfoRemoved-BonferroniAdded.txt.gz -o eqtl_data_eqtlgen/significant.txt
curl https://molgenis26.gcc.rug.nl/downloads/eqtlgen/cis-eqtl/2018-07-18_SNP_AF_for_AlleleB_combined_allele_counts_and_MAF_pos_added.txt.gz -o eqtl_data_eqtlgen/snps.txt

### metabrain

mkdir eqtl_data_metabrain

# download Supplementary Table 2 from Metabrain paper
curl https://www.biorxiv.org/content/biorxiv/early/2021/03/02/2021.03.01.433439/DC38/embed/media-38.xlsx?download=true -o eqtl_data_metabrain/metabrain.xlsx

# Install pandas
python3 -m pip install pandas

# Get BG and Cortex data
python3 mr_druggable_genome_ad/python/metabrain.py
