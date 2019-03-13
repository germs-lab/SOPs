### Please modify this area

#Choose sequence length filter for F and R
#F_seq_filter = 140
F_seq_filter = 240

#R_seq_filter = 140
R_seq_filter = 240

#Path for your location of data
path <- "/mnt/research/germs"

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

##############################
# salloc -N 1 -c 20 --time=1:00:000 --mem-per-cpu=3000M

library(dada2);library(data.table)
set.seed(1390)
CORES = parallel::detectCores()

fnFs <- sort(list.files(path, pattern=F_pattern, full.names = TRUE))
fnRs <- sort(list.files(path, pattern=R_pattern, full.names = TRUE))
sample.names <- sapply(strsplit(basename(fnFs), F_pattern), `[`, 1)
number_samples <- length(sample.names)
filtFs <- file.path(path, "filtered", paste0(sample.names, "_F_filt.fastq.gz"))
filtRs <- file.path(path, "filtered", paste0(sample.names, "_R_filt.fastq.gz"))
names(filtFs) <- sample.names
names(filtRs) <- sample.names

#trunclen is the number of bps to trim the R1 and R2 reads to.. typically based on the read quality report
out <- filterAndTrim(fwd = fnFs, filt = filtFs, rev = fnRs, filt.rev = filtRs, truncLen=c(F_seq_filter,R_seq_filter), truncQ=2, rm.phix=TRUE, compress=TRUE, multithread=CORES) # On Windows set multithread=FALSE

derepFs <- derepFastq(filtFs, verbose=FALSE);names(derepFs) <- sample.names
derepRs <- derepFastq(filtRs, verbose=FALSE);names(derepRs) <- sample.names

errF <- learnErrors(filtFs, multithread=CORES, randomize = TRUE)
errR <- learnErrors(filtRs, multithread=CORES, randomize = TRUE)

dadaFs <- dada(derepFs, err=errF, multithread=CORES, pool=TRUE)
dadaRs <- dada(derepRs, err=errR, multithread=CORES, pool=TRUE)
merged_reads <- mergePairs(dadaFs, derepFs, dadaRs, derepRs, verbose=FALSE)

seq_table <- makeSequenceTable(merged_reads)
seq_table <- removeBimeraDenovo(seq_table, method="consensus", multithread = CORES)
saveRDS(t(seq_table), paste0(path,"/seq_table.RDS"))

tax_table <- assignTaxonomy(seq_table, tax_database, multithread = CORES)
tax_table <- addSpecies(tax_table, spe_database)
saveRDS(tax_table, paste0(path,"/tax_table.RDS"))