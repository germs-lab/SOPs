especially if you have over 10G/more than 500 samples, and your fastqs are on hpc. 

1. go to https://submit.ncbi.nlm.nih.gov/subs/

2. create a new bioproject and fill in basic information
    1. 2.Project type: 
            targeted loci environmental
            sample scope: environment
    2. 3.Target:
            manure metagenome (i know... it makes no sense... but don't put anything that's not on the list in taxonomy dastabase)
    3. because we are doing batch biosample loading, don't add anything to 5.Biosample

4. submit the bioproject as it is and wait for it to generate a bioproject number.  

5. meanwhile, initiate the submission of biosamples using batch mode.
    1. 3.Sample type: select Genome, metagenome or marker sequences  
        then: survey-related marker sequences  
        then: miscellaneous
    2. 4.Attributes: download the excel. Fill the required fiels up.
        be very careful with the date format. this step requires you to upload a txt file. But every time you use excel to open the txt file to make modifications, it screws up your dates. So keep an excel version around.  
        *organism field: use the taxonomy you used in Bioproject 3.Target. in my case, `manure metagenome`   
    3. submit batch biosamples. wait for the biosample accession numbers to be generated. 

6. once you have both bioproject and biosample accesion number, create a new submission for `Sequence Read Archive`.   
    1. 2.General info: 
        Do you want to create new BioProject? No
        Exisiting BioProject: put down the bioproject number generated at step 3. 
    2. 3.SRA metadata:  
        Download the excel SRA metadata template   
        fill in bioproject id, biosample ids, etc. 
        if you have more than 500 biosamples, put them into different SRA metadata workbooks. Each metadata contain less than 500 biosamples. Excel submission is ok for this step. use the same bioproject id. But you will need to initiae another new SRA submission to submit the 2nd part of the SRA metadata. 
    3. 4.Files:  
        If you were me, all of your raw sequences are on some sort of server. Download then upload takes too much of space and time. Plus, SRA only allows you to do direct upload for 300 or less files... 
        So use ftp to upload your seqs to the `preload` folder:  
            1. log onto your server and navigate to where the sequences you wanted to upload are (ie, where all of the *.fastq files are). Use a screen session.   
            2. in terminal type: 
                ```
                ftp ftp-private.ncbi.nlm.nih.gov
                ```
            3. follow the FTP instructions as shown to create a new folder.  
            4. navigate into the new folder. Don't do the following as the instructions.  
            5. instead, type:   
                ```
                prompt n
                mput *.fastq
                ```
            6. you can detach your screen and watch the magic happening.  
     4. The preload folder takes some time to refresh. But once it's updated, you can select the desired folder to upload.
     5. Then submit.  
