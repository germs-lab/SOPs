# DADA2

### Before start
To run DADA2 in HPC you need this line in .bashrc file in your home folder
```
export R_LIBS_USER=/mnt/research/germs/R/library
```
Don't forget you need to log-in again if you just added this line.

## Example
This example will use EPA 16S sequencing from Argonne

#### make link of samples
```
mkdir dada2
cd dada2
ln -s /mnt/research/germs/germs_raw_sequences/EPA_16S_argonne/demeltiplex/*.gz .
```

#### Copy sb file and Rscript
```
cp /mnt/research/germs/softwares/SOPs/HPCC_related/amplicon-sequencing-pipeline/dada2/dada2.sb .
cp /mnt/research/germs/softwares/SOPs/HPCC_related/amplicon-sequencing-pipeline/dada2/dada2_seq_proc_hpcc.R .
```


#### You need to change file: dada2_seq_proc_hpcc.R
```
#Choose sequence length filter for F and R
F_seq_filter = 140
#F_seq_filter = 240

R_seq_filter = 140
#R_seq_filter = 240

#Path for your location of data
path <- "/mnt/research/germs/germs_raw_sequences/EPA_16S_argonne/dada2"

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

#### Change sb file
Change folder
```
#!/bin/bash --login                                                                                                                                                     
########## Define Resources Needed with SBATCH Lines ##########                                                                                                         

#SBATCH --time=80:00:00             # limit of wall clock time - how long the job will run (same as -t)                                                                 
#SBATCH --ntasks=1                 # number of tasks - how many tasks (nodes) that you require (same as -n)                                                             
#SBATCH --cpus-per-task=10           # number of CPUs (or cores) per task (same as -c)                                                                                  
#SBATCH --mem=100G                    # memory required per node - amount of memory (in bytes)                                                                          
#SBATCH --job-name dada2      # you can give your job a name for easier identification (same as -J)                                                                     


########## Command Lines to Run ##########                                                                                                                              

### load necessary modules, e.g.                                                                                                                                        
module load R-core

### change to the directory where your code is located                                                                                                                  
cd /mnt/research/germs/germs_raw_sequences/EPA_16S_argonne/dada2

Rscript dada2_seq_proc_hpcc.R

```

#### Finally, submit sb file
```
sbatch dada2.sb
```


## Other information
This pipeline is adapted from this
```
https://benjjneb.github.io/dada2/tutorial.html
```

#### DADA2 is already installed in HPC, but in case you want to know,
```
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("dada2", version = "3.8")
```
