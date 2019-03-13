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
ln -s /mnt/research/germs/jin/sampledata/16s.argonne/*.gz .
```

#### copy sb file and stability file
```
cp /mnt/research/germs/softwares/SOPs/HPCC_related/amplicon-sequencing-pipeline/mothur/mothur.sb .
cp /mnt/research/germs/softwares/SOPs/HPCC_related/amplicon-sequencing-pipeline/mothur/stability.batch.16s.v4.silva.nr .
```

### change mothur.sb file
```
Chagne your current location
Chagne filename of stability file
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
