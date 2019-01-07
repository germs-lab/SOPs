Demultiplex
```
git clone https://github.com/metajinomics/qiime_tools.git
python qiime_tools/demultiplex_sequences.py -m mapping.fix.txt -b Undetermined_S0_L001_I1_001.fastq -f Undetermined_S0_L001_R1_001.fastq -r Undetermined_S0_L001_R2_001.fastq -o demultiplexed
```

Install DADA2
```
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("dada2", version = "3.8")
```

