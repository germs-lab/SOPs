# Submitting sequencing data to NCBI SRA

This SOP is to guide users to submitting data to the NCBI Short Read Archive (SRA). This step is important to deposit sequences in a way that can be stored for publication and to provide others access.

You will need your raw sequencing files and the metadata for your samples.  For the SRA, you will need to describe your project, your samples, your metadata, and then your sequences.  Each sample needs to have unique attributes, often governed by the metadata.

The directions from NCBI are pretty good, see this [link](https://submit.ncbi.nlm.nih.gov/subs/sra/).  You'll need to register and login.  Create an account if you do not have one.  You'll fill out information on your project and your samples.  You will need to add additional columns to the Biosample table in order to ensure that each sample has unique characteristics.  For example, you may want to add a treatment or replication number column.  I recommend using the built-in editor for a few samples to make sure that the system 'accepts' your attributes and then filling in the remainder of the rows once that works.

Next, you'll fill in the SRA metadata based on the sample names you provided.


You'll need to get the directions for Aspera from the command line.  Download the key file somewhere onto the HPC where you know its path and location.


The unique ID of the sample names can be a real pain.  The main thing is they whole row needs to have unique attributes, I find that putting the sample well ID somewhere in the data helps it differentiate.  

The FTP command on MSU HPC has been legacied out - it's gone.   

The directions from NCBI are pretty good, see this [link](https://submit.ncbi.nlm.nih.gov/subs/sra/).  You'll need to get the directions for Aspera from the command line.  Download the key file somewhere onto the HPC where you know its path and location.

Here's advice from Adina:

First, when you do this on HPC, you'll need to use the rsync login:

ssh user@rsync.hpcc.msu.edu

Then, you'll need to download and install Aspera - that download puts the ascp command into your home directory bin as shown below.  

Run the command:
~/.aspera/connect/bin/ascp -i [full path and direct to key file] -QT -l100m -k1 -d [directory of sequencing files - /mnt/research/germs/darte-adina/raw/used-for-analysis] subasp@upload.ncbi.nlm.nih.gov:uploads/[the key from the sra upload wizerd]

When putting sample data in, you need unique names.  If you get an error, add another column and add more data about the samples so that you pass the "unique" test from NCBI.  For example, S1, S2, ... will error out on me but if I put the well names and/or metadata into the columns, it will pass.

That's my advice, but add to this as folks go through it again.
