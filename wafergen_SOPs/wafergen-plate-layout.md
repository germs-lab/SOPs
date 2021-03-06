# Wafergen Plate Layout SOP

Authors:  Lanying Ma, Adina Howe

## Requirements
- You should be done with #1 and #2 on the general Wafergen [SOP](https://github.com/germs-lab/SOPs/blob/master/wafergen_SOPs/wafergen-general.md)
- You have created and saved your metadata
- You have created and saved your primers
- You know you have X primer probes and Y samples
- Assay: primer sets.  The # of assays equals to (# of primer sets = # of targeted genes)* (# of replicates).
- Samples: will include standards (if you have any) in serial dilutions + negative controls + non-template control + your samples 

## Protocol
1.	 Based on the number of assays or the number of your samples, you can choose the best layouts to fit your experiment.  The available layouts are shown below.  Importantly, note that for communication to MSU:  assays are the mixture of a probe mix and sample.  For the purposes of layout design, you can consider the number of assays equivalent to your number of primers or probes.  You must pick one of the layouts below for the Smartchip.   For example, if you have 6 targeted gene probes and 1 sample with duplicates, you would have a total of 12 assays and 1 sample. 

Assays | Samples
----- | -----
12 | 384
24 | 216
36 | 144
48 | 108
54 | 96
72 | 72
80 | 64
96 | 54
120 | 42
144 | 36
216 | 24
248 | 20
296 | 16
384 | 12

Depending on your layout design, you will need to obtain the information on how much volume of samples and probes + PCR master mix you will need to send MSU.  This information is in this [excel sheet](https://iastate.app.box.com/folder/69923026206).  Do not modify this file within the Box, as it is the template we all share.  Instead, save it locally for your modifications.  Also, fill out the specific names of your samples and primers.  Note that it is very important the name of primers used from our lab match exactly (capitalized and lowercase matches) with our naming conventions.  If they don't, it will be very painful for you later.  You will save your plate layout in the folder you saved your metadata and primer file as described in the general wafergen SOP.

For example, in the following 12A_384A layout, you will need 10 ul of each sample, and 50 ul of probe + Master Mix (as specified below).


![AssaySourcePlate](https://github.com/germs-lab/SOPs/blob/master/images/AssaySourcePlate.png) ![SampleSourcePlate](https://github.com/germs-lab/SOPs/blob/master/images/SampleSourcePlate.png)
  

2.  After you have decided the number of assays and/or the number of samples, you need to contact our service for Wafergen.  Our contact is Christi Harris, hemmingc@msu.edu, who takes charge of Wafergen in MSU.  *Note you should send samples only on Monday to Wednesday to ensure safe arrival at MSU.

Dear Christi,

My name is ____, and I am working with Adina Howe at ISU.  I am interested in running a Wafergen adn writing to ask if you would be willing to do our analysis.  I am sending you a layout of my proposed plate, with ____ assays and ____ samples.  I am hoping to send my samples on ______, would this be OK with you?  Also, I wanted to ask if you would like me to send along some SYBR master mix, in case you are out from our group's allotment.

Thank you,
Name
Email
