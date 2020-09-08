library(simple.dada)
# You can get this here...https://github.com/germs-lab/simple.dada

for( folder in "sequence-data/Argonne_Run_1/"){
  simple_dada(folder, cores = 3)
}
