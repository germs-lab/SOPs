# Use Anaconda   

## Download anaconda for Linux 64 bit

Go to [Anaconda download](http://conda.pydata.org/miniconda.html)

Last I used, you should run this from HPC:

```
wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
bash Miniconda2-latest-Linux-x86_64.sh
```

You now have a whole set of commands in the Miniconda*/bin directory


## install R from anaconda   
```
conda install -c r r
```

## install essential packages that are available in anacoda  
```
conda install -c r r-essentials
```

## instal phyloseq from bioconductor  
```
source("http://bioconductor.org/biocLite.R")
biocLite("RJSONIO")
biocLite("phyloseq")
```

## update all packages if asked. 

