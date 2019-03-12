## Preparing samples for Wafergen
Author: Lanying Ma, Adina Howe

## Basic of qPCR
If you don't understand qPCR system, please study. You have to understand What Ct is, How to get Ct, What SYBR is, How to get Standard curve, What R2 is, How to get R2, What is acceptable R2, What Efficienty is, How to calcuate Efficiency, What is acceptable eficiency, What melting curve is. https://www.bio-rad.com/webroot/web/pdf/lsr/literature/Bulletin_5279.pdf

## Before Run (This is written by Adina)

1. Create a file of metadata for your samples.  It should contain a unique sample identifier and associated metadata for each sample.  An example is shown below.

https://github.com/germs-lab/SOPs/blob/master/meta_fix.csv

2. Create a file of the primers used, and name it primers_yourname_date (e.g., primers_howe_190318) for Adina Howe's primers used on March 18, 2019.

[Jin can you put an example here]

3. Design your plate layout. Name this file layout_yourname_date. Lanying has wrote a SOP on how to design your plate layout with other logistics.  Please refer here.https://github.com/germs-lab/SOPs/blob/master/Wafergen.md. or just scroll down. it is in the section of Protocol.

4.In the same Box folder of wafergen, there are excel files of layouts of wafergen  (https://iastate.app.box.com/folder/69923026206). 　The names are #S_#A, indicating the number of Samples wiht number of Assays.  After you have done step 2 and 3, you may use the corresponding excel file and fill out with your specific names of samples and primers.  The primer name must be the same as those in Bob's primer excel. 


5. Make a folder in the Box Drive Folder - GERMS-Wafergen [https://iastate.box.com/s/g0tt6382aagmd3eut4at2bgljhipi53g] to place the three files above in.  Name that folder as wafergen_yourname_date.


## Notes before you start:
1.	 We need to clarify several terms used in wafergen setting:
* Assay: primer sets.  The # of assays equals to (# of primer sets = # of targeted genes)* (# of replicates).
* Samples: will include standards (if you have any) in serial dilutions + negative controls + non-template control + your samples 
•	

## Protocol
1.	 The first and crucial step is to decide how many primer sets or how many samples you will send for wafergen. You have to know at least one of these two for sure, as you have to stick to certain layouts.  Based on the number of assays or the number of your samples, you can choose the best layouts to fit your experiment.  The available layouts are as follows: (eg. If you have 6 targeted gene with duplicates, it makes 12 essays)

Assays | Samples
----- | -----
12 | 384
24	| 216
36	| 144
48	| 108
54	| 96
72	| 72
80	| 64
96	| 54
120 | 42
144 | 36
216 | 24
248 | 20
296 | 16
384 | 12
2.	After you have decided the number of assays and/or the number of samples, contact Christi Harris, who takes charge of wafergen in MSU.fill out the layouts you will use
* The email address is: hemmingc@msu.edu 
*	In the layout, there is information of sample volume and volume of each primer set.
*	You always can email her with:
    *  A) The estimate time to send her samples and primers: to let her know that there are samples to come to scheudle the run
    *	 B) Does she have enough SYBR master mix? if yes, you dont need to send along with your samples; if not, send one pack
    

*	For each layout, the volume of sample and volume of each primer set are different.  Please refer to the layout she sends you based on your experiment. 
*	Use 12 assays X 384 samples layout as an example:

  ![AssaySourcePlate](https://github.com/germs-lab/SOPs/blob/master/images/AssaySourcePlate.png) ![SampleSourcePlate](https://github.com/germs-lab/SOPs/blob/master/images/SampleSourcePlate.png)
  



3.	Measure the DNA concentration of your samples.
*	In a 96-well plate, normalize cDNA at 4-6ng/ul. Final reaction concentration will be 1 - 1.5ng/ul on the SmartChip. This is the original request from Christi. Now she asks to give her whatever-concentration of DNA which you think works (or the concentration you have tried with local qPCR)
*	If DNA concentrations are below the guidelines, they may not guarantee that they will work. However, they actually don’t know how low it could be. 
*	NO, it will not work if you want to put more volume to make up for low concentration of DNA.  Please give them the volume which they have asked you.

4.	Fill out the layout to indicate the samples and primers.
5.	Prepare sample plates and primer set plate. 
*	The initial concentration of primer sets is 100 uM and we have diluted primer sets to be 10 uM.  Use this 10 uM primer sets as the concentration for Wafergen use is normally 1 uM.((these primers are those which we don’t have standards for)) 
*	We have 8 plates of ARGs primer sets.  If you don’t have the spreadsheet of these primers, please talk to Lanying.
*	If you have lots of primer sets and want to use Robot to fill the primer set plates, Please talk to Lanying.
*	There is a paper in the box of primer sets where 16s primers in. Please write down the date of use and remaining volume.  As 16s primers are used almost for each run of Wafergen, to keep track of 16s primer will give us some idea of the volume of all other primers.
*	For these primers which we have standards for, for now, 16s, ermB, ermF, tetM. Please make the concentration to be 1um as required.  The way to make them:  the original synthetic primers are 100um. Add 10ul water to be 10 um. Then dilute them to be 1um as you needed taking into account of your needed volumn too.
*	For the standards, The synthetic DNA standards have mass on the tubes, first make it to be 10 ng/ul, then dilute it to be 1ng/ul. From here, 1 ul of this 1 ng/ul standards plus 36 ul water to make it be 1e8 copies/2ul concentration.  From here, you could make the series dilutions to get your desired standards. 


6.	You will need to send the Master Mix you want them to use, the DNA sample plates, and the Assay plate on dry ice.  The best way to seal the plate is with 8-strip caps. This seals the well individually so there should be no contamination between samples. 
7.	 To send out samples with dry ice, it is categorized as Hazardous Material Shipping, which is under strict regulation.  Please follow the next several steps.
*	Go to Hazardous Materials Shipping in Environment Health and Safety. https://www.ehs.iastate.edu/hazmat-ship
*	Click “online submission system” to go https://shipping.ehs.iastate.edu/user-index
*	Click “ Create New Shipment”, click “yes” to indicate there is dry ice in the parcel.
*	Put in the required information including “shipping data”, “contact”, etc. 
*	Submit to EH&S.
*	After approval, print it out to bring with you to the Chemistry Store.
    * This step is better to be done at least a day before your desired shipping date.
*	Go to AccessPlus then go Chemistry Store online, buy the dry ice.


8.	Now Sylvia is tired of printing out the intramural for us.  I have put this excel file in the BoX too. Change the date and print out two copies and bring them to her so she can sign. The name is "DNA_Sample_Intramural.xls"
* "Bring your parcel with grant account number to Sylvia, ask her to print out the intramural for shipping parcel for Fedex." Now we dont do it.  do it ourself but let Sylvia sign.
9.	Go to Chemistry Store to get the dry ice in parcel.
10.	Go to “Postal & Parcel Servies” in General Business Building to send out parcels.
*	They only send out hazardous materials on Monday, Wednesday and Thursday every week.  Make sure you don’t miss these days.
*	It is better to send parcel to Wafergen at the beginning of week as they don’t work at weekend.  

## After run (This is written by Adina)

1.  Place the raw data downloaded from MSU into the folder you created above.  Rename that file rawdata_yourname_date_of_the_run.

2.  [Jin please put documentation on how to process data with an output of something I can use to keep track of standard curves]

You will have txt file after data back from MSU. Use Rscript_for_wafergen.R for analyzing data. You will need 1) txt formatted data file 2) meta data for samples 3) meta for standard. Then use R to run

3.  Place your standard curve data in the spreadsheet located in the Box Drive Folder - GERMS-Wafergen --> Standard_Curves.  

4.  Take a look at your standard curve compared to other runs, if it does not look aligned, you will need to do some troubleshooting.  


