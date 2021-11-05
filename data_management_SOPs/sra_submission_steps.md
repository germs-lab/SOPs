# Submitting sequencing data to NCBI SRA

This SOP is to guide users to submitting data to the NCBI Short Read Archive (SRA). This step is important to deposit sequences in a way that can be stored for publication and to provide others access.

You will need your raw sequencing files and the metadata for your samples.  For the SRA, you will need to describe your project, your samples, your metadata, and then your sequences.  Each sample needs to have unique attributes, often governed by the metadata.

The directions from NCBI are pretty good, see this [link](https://submit.ncbi.nlm.nih.gov/subs/sra/).  You'll need to register and login.  Create an account if you do not have one.  You'll fill out information on your project and your samples.  You will need to add additional columns to the Biosample table in order to ensure that each sample has unique characteristics.  For example, you may want to add a treatment or replication number column.  I recommend using the built-in editor for a few samples to make sure that the system 'accepts' your attributes and then filling in the remainder of the rows once that works.  Here is an [example](https://github.com/germs-lab/SOPs/blob/master/data_management_SOPs/attributes_table.tsv).

Next, you'll fill in the SRA metadata based on the sample names you provided.  Here is an [example](https://github.com/germs-lab/SOPs/blob/master/data_management_SOPs/metadata-10622161-submitted.tsv).

Next, you'll need to upload the sequencing files (with the exact names in your metadata).  This can be done via your local computer or the HPC using Aspera.

Aspera Notes:
You'll need to get the directions for Aspera from the command line.  Download the key file somewhere onto the HPC where you know its path and location.


First, when you do this on HPC, you'll need to use the rsync login:

ssh user@rsync.hpcc.msu.edu

Then, you'll need to download and install Aspera - that download puts the ascp command into your home directory bin as shown below.  

Run the command:
~/.aspera/connect/bin/ascp -i [full path and direct to key file] -QT -l100m -k1 -d [directory of sequencing files - /mnt/research/germs/darte-adina/raw/used-for-analysis] subasp@upload.ncbi.nlm.nih.gov:uploads/[the key from the sra upload wizerd]


That's my advice, but add to this as folks go through it again.
