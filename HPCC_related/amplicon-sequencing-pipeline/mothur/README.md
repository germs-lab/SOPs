## Mothur


```
16S amplicon sequencing from Argonne sequencing center gives 151 bp long sequences
16S amplicon sequencing from USDA gives 251 bp long sequences 

18S amplicon sequencing from ISU sequencing center gives 250 bp long sequences 
```

#### make link of your data
```
ln -s /mnt/research/germs/jin/sample_data/16s.argonne/*.gz .
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
