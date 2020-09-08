library(simple.dada)

for( folder in "sequence-data/Argonne_Run_1/"){
  simple_dada(folder, cores = 3)
}
