# Wafergen SOP - Preparation, submission, and analysis

Authors:  Lanying Ma, Adina Howe

## Requirements
- Basic knowledge of qPCR. You should know what the basic steps of PCR are, the reagants involved in PCR, the meaning of CT and how it is calculated, what a standard curve is, and efficiency and its relationship to PCR.  We recommend this [resource](https://www.bio-rad.com/webroot/web/pdf/lsr/literature/Bulletin_5279.pdf), and there is a lot on the google-webs about PCR.  Before you ask us questions, please have due diligence in finding the information.
- Probe selection and number of primers desired
- Samples - the specific number of samples you want to target for genes in question
- Number of technical replicates desired
- Account number, for which you are paying for this project
- Calculated total number of qPCR assays you will need for your probes x samples

## Before submission of samples to MSU

1. Create a file of metadata for your samples.  It should contain a unique sample identifier and associated metadata for each sample.  An example is shown [here](https://github.com/germs-lab/SOPs/blob/master/datasheets/meta_fix.csv), with a screenshot below.

[Please add screenshot]

2. Create a file of the primers used, and name it primers_yourname_date (e.g., primers_howe_190318) for Adina Howe's primers used on March 18, 2019.  An exampe is shown [here](https://github.com/germs-lab/SOPs/blob/master/datasheets/meta_standard.csv), with a screenshot shown here.

[Please add]

3. Design your plate layout. Name this file layout_yourname_date. Lanying has wrote a SOP on how to design your plate layout with other logistics.  Please refer [here]（https://github.com/germs-lab/SOPs/blob/master/wafergen_SOPs/wafergen-plate-layout.md）


4.In the Box folder, there are excel files of layouts of wafergen.  [Link to layouts](https://iastate.app.box.com/folder/69923026206). 　The names are #S_#A, indicating the number of Samples wiht number of Assays.  After you have done step 2 and 3, you may use the corresponding excel file and fill out with your specific names of samples and primers.  The primer name must be the same as those in Bob's primer excel.  The exact same in every way.

5. Make a folder in the Box Drive Folder - GERMS-Wafergen, [link](https://iastate.box.com/s/g0tt6382aagmd3eut4at2bgljhipi53g) to place the three files above in.  Name that folder as wafergen_yourname_date.


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
Based on your concentrations, you will need to in a 96-well plate, normalize cDNA at 4-6ng/ul. For your informationm, the final reaction concentration will be 1 - 1.5ng/ul on the SmartChip. Not at all samples can be normalized to 4-6 ng/uL, so if you do not have enough DNA, you may ask for suggestions, but typically we've seen positive results for as low as 1 ng/uL but negative results for over 20 ng/uL.

### Preparation fo Primer DNA Plate
[This section needs more details, please, its not clear to me.  I can help let's do it together if you need some more suggestions]
*  The initial concentration of primer sets is 100 uM and we have diluted primer sets to be 10 uM.  Use this 10 uM primer sets as the concentration for Wafergen use is normally 1 uM.((these primers are those which we don’t have standards for))
*  We have 8 plates of ARGs primer sets.  If you don’t have the spreadsheet of these primers, please talk to Lanying.
*  If you have lots of primer sets and want to use Robot to fill the primer set plates, Please talk to Lanying.
*       There is a paper in the box of primer sets where 16s primers in. Please write down the date of use and remaining volume.  As 16s primers are used almost for each run of Wafergen, to keep track of 16s primer will give us some idea of the volume of all other primers.
*       For these primers which we have standards for, for now, 16s, ermB, ermF, tetM. Please make the concentration to be 1um as required.  The way to make them:  the original synthetic primers are 100um. Add 10ul water to be 10 um. Then dilute them to be 1um as you needed taking into account of your needed volumn too.
*       For the standards, The synthetic DNA standards have mass on the tubes, first make it to be 10 ng/ul, then dilute it to be 1ng/ul. From here, 1 ul of this 1 ng/ul standards plus 36 ul water to make it be 1e8 copies/2ul concentration.  From here, you could make the series dilutions to get your desired standards.

### Preparation of Master Mix
6.	You will need to send the Master Mix you want them to use, the DNA sample plates, and the Assay plate on dry ice.  The best way to seal the plate is with 8-strip caps. This seals the well individually so there should be no contamination between samples.

[We can maek teh below its own SOP, I think it then works for all shipment of DNA]
7.	 To send out samples with dry ice, it is categorized as Hazardous Material Shipping, which is under strict regulation.  Please follow the next several steps.
*	Go to Hazardous Materials Shipping in Environment Health and Safety. https://www.ehs.iastate.edu/hazmat-ship
*	Click “online submission system” to go https://shipping.ehs.iastate.edu/user-index
*	Click “ Create New Shipment”, click “yes” to indicate there is dry ice in the parcel.
*	Put in the required information including “shipping data”, “contact”, etc. 
*	Submit to EH&S.
*	After approval, print it out to bring with you to the Chemistry Store.
    * This step is better to be done at least a day before your desired shipping date.
*	Go to AccessPlus then go Chemistry Store online, buy the dry ice.

[This section below needs more details, a direct link to the file]

8 . Print out the intramural, which is under the GERMS_wafergen. The name is "DNA_Sample_Intramural.xls". You will need to change the date to be on the way you print; and fill in the account number to cover the shipping expense. For now, we all use Adina's Startup account so you dont need to change it until Adina asks it to.  Print out two copies and bring them to Sylvia to sign.


9.	Go to Chemistry Store to get the dry ice in parcel. [How much?]

10.	Go to “Postal & Parcel Servies” in General Business Building to send out parcels.
*	They only send out hazardous materials on Monday, Wednesday and Thursday every week.  Make sure you don’t miss these days.
*	It is better to send parcel to Wafergen at the beginning of week as they don’t work at weekend.  

## After run, manage your data!

1.  Place the raw data downloaded from MSU into the folder you created above.  Rename that file rawdata_yourname_date_of_the_run.

## Data Analysis

[include link to Jin's new awesome SOP]

You will have txt file after data back from MSU. Use Rscript_for_wafergen.R for analyzing data. You will need 1) txt formatted data file 2) meta data for samples 3) meta for standard. Then use R to run

3.  Place your standard curve data in the spreadsheet located in the Box Drive Folder - GERMS-Wafergen --> Standard_Curves.  

4.  Take a look at your standard curve compared to other runs, if it does not look aligned, you will need to do some troubleshooting.  


