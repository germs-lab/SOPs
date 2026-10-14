a <- data.table::fread('sequence-data/run1_metadata.csv', sep = ',', skip = 19)
data.table::setkey(a, Sample_ID)

seq_files <- dir('sequence-data/KMou_STRIPS_Run_1')
for(sample in seq_along(a$Sample_ID)){
  dir.create(file.path('sequence-data/KMou_STRIPS_Run_1', a$Sample_Plate[sample]), showWarnings = FALSE)
  files <- seq_files[grep(gsub('_','-',a$Sample_ID[sample]), seq_files)]
  for(file in files){
    file.rename(file.path('sequence-data/KMou_STRIPS_Run_1', file), file.path('sequence-data/KMou_STRIPS_Run_1', a$Sample_Plate[sample], file))
  }
}

seq_folders <- dir('sequence-data/KMou_STRIPS_Run_1', pattern = 'plate', full.names = TRUE)
