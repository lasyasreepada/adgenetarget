import pandas as pd

# Read data
bg = pd.read_excel("eqtl_data_metabrain/metabrain.xlsx", sheet_name="BasalGanglia-EUR")
cortex = pd.read_excel("eqtl_data_metabrain/metabrain.xlsx", sheet_name="Cortex-EUR")

# save sheet "BasalGanglia-EUR" as "eqtl_data_metabrainmetabrain_basalganglia_eur.csv"
bg.to_csv("eqtl_data_metabrain/metabrain_basalganglia_eur.csv")

# save sheet "Cortex-EUR" as "eqtl_data_metabrain/metabrain_cortex_eur.csv"
cortex.to_csv("eqtl_data_metabrain/metabrain_cortex_eur.csv")
