# Wafergen SOP - Preparation, submission, and analysis

Authors:  Lanying Ma, Adina Howe

## Requirements
- Basic knowledge of qPCR. You should know what the basic steps of PCR are, the reagants involved in PCR, the meaning of CT and how it is calculated, what a standard curve is, and efficiency and its relationship to PCR.  We recommend this [resource](https://www.bio-rad.com/webroot/web/pdf/lsr/literature/Bulletin_5279.pdf), and there is a lot on the google-webs about PCR.  Before you ask us questions, please have due diligence in finding the information.
- You should be familiar with all the reagants that are involved in a qPCR.
- Probe selection and number of primers desired
- Samples - the specific number of samples you want to target for genes in question
- Number of technical replicates desired
- Account number, for which you are paying for this project
- Calculated total number of qPCR assays you will need for your probes x samples

## Before submission of samples to MSU

1. You will be creating some data management files and storing them in our Box drive for your project's Wafergen data.  See this link for our [GERMS Lab Data Management SOP](https://github.com/germs-lab/SOPs/blob/master/data_management_SOPs/GERMS_Lab_Data_Management_101.md) and the link to where you should store your [data](https://iastate.box.com/s/6faf0qlfmmqisrulqg21wpf584arf0xf).  This SOP is associated with Wafergen associated files. It is important that you follow our naming conventions as you create these files.  Within the Wafergen folder for your pfoject, you will create a new folder and name it:  wafergen-yourname-date.  Next, place the following described files within that folder

2. Create a file of metadata for your samples.  This data contains a description of your samples and experiment.  It should contain a unique sample identifier and associated metadata for each sample.  An example is shown [here](https://github.com/germs-lab/SOPs/blob/master/datasheets/meta_fix.csv), with a screenshot below.

![meta_wafergen](https://github.com/germs-lab/SOPs/blob/master/images/Meta_wafergen_MLY.jpg)

3. Create a file of the primers used, and name it primers_yourname_date (e.g., primers_howe_190318) for Adina Howe's primers used on March 18, 2019.   Place a copy of the file in the Box.  An example is shown [here](https://github.com/germs-lab/SOPs/blob/master/datasheets/meta_standard.csv).

4. Design your plate layout. Name this file layout_yourname_date and place a copy in the Box. We have a SOP on how to design your plate layout.  Please refer [here](https://github.com/germs-lab/SOPs/blob/master/wafergen_SOPs/wafergen-plate-layout.md). 

To summarize, within your folder, you'll have a metadata file, a primer file, a layout file, and later, you'll have your raw data file after you get your results.


## Notes before you start:
1.	 We need to clarify several terms used in wafergen setting:
* Assay: primer sets.  The # of assays equals to (# of primer sets = # of targeted genes)* (# of replicates).
* Samples: will include standards (if you have any) in serial dilutions + negative controls + non-template control + your samples 

## Create a plate layout

You must design a plate layout.  The directions to do so are [here](https://github.com/germs-lab/SOPs/blob/master/wafergen_SOPs/wafergen-plate-layout.md)

The result of the plate layout is that you should be emailing MSU services what is going to be on your plate.  It is very important that this communication is done well as your results will be impacted.

## DNA quantification

You need to quantify the concentration of DNA in each of your samples.  The directions are [here](https://github.com/germs-lab/SOPs/blob/master/DNA_SOPs/Quant-iT_dsDNA_Assay.md)

## Preparation of your plate of samples and primers.

### Preparation of Sample DNA Plate
* Normalize your DNA

Based on your concentrations, you will need to in a 96-well plate, normalize cDNA at 4-6ng/ul. For your information, the final reaction concentration will be 1 - 1.5ng/ul on the SmartChip. Not all samples can be normalized to 4-6 ng/uL, so if you do not have enough DNA, you may ask for suggestions, but typically we've seen positive results for as low as 1 ng/uL but negative results for over 20 ng/uL.

* Make standards, if applicable

For these primers which we have standards for, including, 16s rRNA, ermB, ermF, tetM, you will need to make standards to generate a standard curve.  These standards are in the Freezer F, Jin's rack, labelled as "Wafergen".  Note that we all share these probes and DNA so be careful not to contaminate them. If there are any concerns, let us know.  It is better to replace them rather than ruining everyone's results.  
Those Synthetic DNAs have 478bp. It is ordered 500 ng. 50 ul of TE buffer was added at the time of purchasing. So, it is 10 ng/ul of concentration in original tubes. 

* First, take 1 ul from original tube, mix into 9 ul of water. It makes 1 ng/ul. 

* From here, 1 ul of this 1 ng/ul standards plus 36 ul water to make it be 1e8 copies/2ul concentration.  From here, you could make the series dilutions to get your desired standards. Remember, copy number 1e8 is when you use 2 ul. In wafergen, copy number will be 1.25e6.
* if you include the standards in, the total number of samples will include your own experiment samples with the 8 dilutions of each standards ( 8X4=32)


### Preparation of Primer DNA Plate
You will next prepare your primer/probe plate for sending to MSU.  Below, are specific instructions if you are using our ARG probes.

*  We have 8 plates of ARGs primer sets (Bob Primers).  The spreadsheet of these primers is [here](https://github.com/germs-lab/wafergen/blob/master/bob_primer_plate.clean.tsv). There are two sets of these primers sets. One set is 100 uM, and these are the original plates we get from company.  The other set is by 10 fold dilution, also labelled as "working". You need to use the "working" set.  Again, do not contaminate this set and if you do, please let us know.  It is important to keep these uncontaminated for all in the lab.  These primers are in Freezer F, 2nd compartment counting from bottom, in Jaejin's rack.
![Bob_primers_100uM](https://github.com/germs-lab/SOPs/blob/master/images/ARGs_100uM.jpg)
![Bob_primer_10umMWorking](https://github.com/germs-lab/SOPs/blob/master/images/ARGs_10uMWorking.jpg)

* If you only need to fill in 12 priimer sets into plate, it is recommended to do it mannually; if you'd like to do it by Robot, the protocol to prepare the Robot file is below.  Otherwise, skip to the next section below.


#### If you are using the robot, here is some advice on how to prepare primer assay plate for wafergen by Robot
**********************************
##### Background:
This SOP is trying to walk you through how to prepare primer plate with Robot for Wafergen run.  As we have 8 plates of Bob primers about antibiotic resistant genes (384 primers with F and R primers), it would be too easy to make mistakes manually preparing the primer plates.  Thus, we try to automate it by Robot. 

##### Procedures:
1. The first file needed is [bob_primer_plate.clean.tsv](https://github.com/germs-lab/wafergen/blob/master/bob_primer_plate.clean.tsv).  In this file, there are information on the primer position: in which plate, in which well, and sequencing Name including F or R.
2. You should have a list of your targeted primers from the general [Wafergen SOP](https://github.com/germs-lab/SOPs/blob/master/wafergen_SOPs/wafergen-general.md) Step 3, primers_yourname_date

It is critically important that your list match primer names in file from step #1.

3. Download this [file](https://github.com/germs-lab/wafergen/blob/master/prepare_bob_primer.py).  Run Python: python prepare_bob_primer.py list_target.txt bob_primer_plate.clean.tsv
4. This code will generate two files: for_Robot.tsv and for_Record.csv.  For_Robot_tsv will be the file you copy to Robot computer to tell Robot from which target plate and postion to which particular well of your primer plate.
* 4 Run Robot with for_robot.tsv to prepare the primer plate.

It will need 16 ul water with 2 ul of each F/R primers.
**********************************

* There is a paper in the box of primer sets where 16s rRNA primers in. Please write down the date of use and remaining volume.  As 16s rRNA primers are used almost for each run of Wafergen, to keep track of 16s primer will give us some idea of the volume of all other primers.
[I think we can do this for the ARG primers also]


### Preparation of Master Mix
*	You will need to send the Master Mix if Christi needs more The image of Master Mix we use is as following:
![MasterMIxForWafergen](https://github.com/germs-lab/SOPs/blob/master/images/MasterMix_wafergen.jpg)

### Shipment preparation
* You will need to send Mster Mix, the DNA sample plates, and the Assay plate on dry ice.  The best way to seal the plate is with 8-strip caps. This seals the well individually so there should be no contamination between samples.

To send DNA out, we normally add dry ice to ship along, catagorized as hazardous shipping.  Refer [here](https://github.com/germs-lab/SOPs/blob/master/HazardousShipping.md)

## After run, manage your data!

1.  Place the raw data downloaded from MSU into your folder in the Box.  Rename .text file rawdata_yourname_date_of_the_run. 

## Data Analysis

1.  You can go at it on your own, but also there is a very nice tutorial on Wafergen analysis that you can try [here](https://github.com/germs-lab/SOPs/blob/master/data_management_SOPs/Wafergen_analysis_SOP.md).  We are still in the midst of making this the most useful for other users.

2.  Adina would like to track standard curve data somehow throughout the lab.  The solution for that is yet undetermined but maybe someone can come up with something.

3.  The main thing is that your results get uploaded in a useful way to the GERMS-Dataman so that your results are available to the Adina and PIs to see as needed.
