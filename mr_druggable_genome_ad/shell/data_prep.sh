#!/usr/bin/env zsh


# Process the GWAS data for Mendelian randomization analysis


## keep only eqtls within 5 kb of the target gene and calculate betas or SEs where needed

while read EXPOSURE_DATA; do
        nohup Rscript ./mr_druggable_genome_pd/R/data_prep_${EXPOSURE_DATA}.R &> nohup_data_prep_${EXPOSURE_DATA}.log &
done < exposure_data.txt

wait


# liftover metabrain data
bash ./mr_druggable_genome_pd/shell/liftover_metabrain.sh


## process discovery-phase PD risk data for the discovery phase
# nohup Rscript ./mr_druggable_genome_pd/R/data_prep_pd_risk_discovery.R &> nohup_data_prep_pd_risk_discovery.log &


## meta-analyse PD risk GWAS datasets for replication-phase PD risk
# ./generic-metal/metal < ./mr_druggable_genome_pd/shell/meta_analysis_meta5_without_pd_risk_discovery.txt

# wait

# nohup Rscript ./mr_druggable_genome_pd/R/meta_analysis_meta5_without_pd_risk_discovery_qc.R &> nohup_meta_analysis_meta5_without_pd_risk_discovery_qc.log &


## process replication-phase PD risk & age at onset data
# nohup Rscript ./mr_druggable_genome_pd/R/data_prep_replication.R &> nohup_data_prep_replication.log &


## process progression GWAS data
nohup Rscript ./mr_druggable_genome_pd/R/data_prep_enigmacharge.R &> nohup_data_prep_enigmacharge.log &

wait

echo "ad_progression_cont_HC"
> progression_outcomes.txt


## generate read_outcome_data scripts for progression
while read OUTCOME; do
    cat ./mr_druggable_genome_pd/R/read_outcome_data_progression.R > ./mr_druggable_genome_pd/R/read_outcome_data_${OUTCOME}.R
done < progression_outcomes.txt



# pQTL data
nohup Rscript ./mr_druggable_genome_pd/R/data_prep_pqtl.R &> nohup_data_data_prep_pqtl.log &
