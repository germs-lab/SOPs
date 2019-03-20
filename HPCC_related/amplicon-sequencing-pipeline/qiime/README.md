
#### make link of your data
```
ln -s /mnt/research/germs/jin/sampledata/mock.usda/*.gz .
```


#### copy sb file 
```
cp /mnt/research/germs/softwares/SOPs/HPCC_related/amplicon-sequencing-pipeline/qiime/qiime.sb .
```

#### change sb file
```
change current folder
```


## installation
#### install miniconda3
```
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
```
#### install qiime
```
/mnt/research/germs/softwares/miniconda3/bin/conda create -n qiime1 python=2.7
source /mnt/research/germs/softwares/miniconda3/bin/activate qiime1
pip install numpy
pip install qiime
```
