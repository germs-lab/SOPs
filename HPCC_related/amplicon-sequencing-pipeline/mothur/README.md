## Mothur
It shows how to run Mothur on HPC

## Before you start

#### Make sure you dont' have underscore ("_") in the folder name



#### Check length of sequence
```
16S amplicon sequencing from Argonne sequencing center gives 151 bp long sequences
16S amplicon sequencing from USDA gives 251 bp long sequences 

18S amplicon sequencing from ISU sequencing center gives 250 bp long sequences 
```

### Now prepare
#### make link of your data
```
ln -s /mnt/research/germs/jin/sampledata/mock.usda/*.gz .
```

#### copy sb file and R script
```
cp /mnt/research/germs/softwares/SOPs/HPCC_related/amplicon-sequencing-pipeline/dada2/dada2.sb .
cp /mnt/research/germs/softwares/SOPs/HPCC_related/amplicon-sequencing-pipeline/dada2/dada2_seq_proc_hpcc.R .
```

### change mothur.sb file
```
Chagne your current location
Chagne filename of R script
```
### change R script file
```
#Choose sequence length filter for F and R
#F_seq_filter = 140
F_seq_filter = 240

#R_seq_filter = 140
R_seq_filter = 240

#Path for your location of data
path <- "/mnt/scratch/choiji22/test/dada2.mock.silva"

#pattern of your file for F and R
F_pattern = "_R1_"
#F_pattern = ".R1."
R_pattern = "_R2_"
#R_pattern = ".R2."

#Path for Taxomony database
#tax_database = "/mnt/research/germs/databases/dada2/rdp_train_set_16.fa.gz"
tax_database = "/mnt/research/germs/databases/dada2/silva_nr_v132_train_set.fa.gz"
#tax_database = "/mnt/research/germs/databases/dada2/gg_13_8_train_set_97.fa.gz"


#Path for Species
#spe_database = "/mnt/research/germs/databases/dada2/rdp_species_assignment_16.fa.gz"
spe_database = "/mnt/research/germs/databases/dada2/silva_species_assignment_v132.fa.gz"
```

### run
```
sbatch mothur.sb
```

#### Other tips
Mothur does not like underscore ('_') in the folder name

#### Mothur is already installed in HPC, but in case you want to know how to install,
Version 1.39.5 is in /mnt/research/germs/softwares/mothur/mothur1.39.5/mothur
```
wget https://github.com/mothur/mothur/releases/download/v1.39.5/Mothur.linux_64_static.zip
unzip Mothur.linux_64_static.zip
```
