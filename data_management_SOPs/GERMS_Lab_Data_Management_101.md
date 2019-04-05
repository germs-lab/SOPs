# GERMS Lab Data Management - The Basics

This document reviews our sample and data management procedures in the laboratory.  Of the many ongoing things going on in the lab, this management is central to the success of our GERMS boat not sinking.  All new members are asked to review this document.  Any individual who is working with samples or data associated with our group also inherently agrees to participate in this plan.

## Structure of "GERMS-DATAMAN"

We organize our samples and associated by project on CyBox.  You will need access to this folder in order to work with us.  Here is the [link](https://iastate.box.com/s/6faf0qlfmmqisrulqg21wpf584arf0xf) and you should email Adina, adina@iastate.edu, if you do not have access.

Within each funded project, there are folders that contain associated information.  The structure is as follows:

```
.
+--Funded_Project_Name
|  +--Samples
|  |  +--metadata_2018.xlsx
|  +--Raw_Data 
|  |  +--16S_rRNA_sequencing
|  |  |  +--README.txt [containing link to HPC where data might be storecd]
|  |  +--Wafergen
|  |  |  +--Wafergen_results.txt
|  |  +--Metagenomes
|  |  |  +--README.txt [containing link to HPC where data might be stored]
```      
## Samples Inbound into GERMS

When collecting field samples and bringing samples into our lab, you will need to fill out the metadata under the Samples folder for the appropriate project ASAP.  

The SOPs for the metadata documentation are found [here](https://github.com/germs-lab/SOPs/blob/master/data_management_SOPs/metadata_managment.md)

If your project does not have a metadat file in it, you should create one. 
If there is a metadata file in it, you should add your metadata for relevant samples to the existing file.

## Data Inbound into GERMS

When data comes in relevant to your samples, you should put the raw data either directly into the associated folder in GERMS-DATAMAN or a text file describing where the raw data is stored, likely the HPC.
