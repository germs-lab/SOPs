
## Measure the DNA concentration in 96-well-plate by Quant-iT TM dsDNA Assay Kit
Author: Lanying Ma

This SOP is based on Quant-iT dsDNA Assay Kit, High Sensitivity. Catalog Number Q33120.  We use this assay for high throughput quantification of DNA concentration for sequencing and qPCR applications.

## Special Materials needed:
The plate used for plate reader: Number is 165305 (Thermo)
Plate name: 96 well Optical Btm Plt Polymer Base Black W/Lid Cell Culture Sterile PS.

## Notes before you start:
* As the plate reader is in Biorenewable lab, it has to be signed up before use.  It would be better for you to plan the use ahead and email the postdoc who is in charge.  The google sheet is to sign up for it:  [here](https://docs.google.com/spreadsheets/u/1/d/1ncDLb8JX7nBUYpeRIOBZAdRddo-Z1Ojrx37FU0aqGYQ/edit#gid=0); sign on the "Fluoresence one" tab. 
* Always wear lab coat and safety glasses to use this plate reader.  It is a privilage that we are allowed to use this instrument so please help us continue to sharing this instrument.  

## Protocol:
1.	  Equilibrate all assay components to room temperature.
2.	  [Note:  This step should be done only when you are ready to move swiftly to measure DNA, eg., your sampels are ready].  Prepare the working solution by diluting the Quant-iT dsDNA HS reagent 1:200 in Quant-iT dsDNA HS buffer. The amount of working solution you will need depends on your number of samples.  In each well, for quantification, you will need 200 uL.  Thus, you will need 200 uL x # of samples = total_volume_working_solution.  Don't forget to include your standards as a sample.  For safety, we'll also add an additional 20% volume.  Total Volume = total_volume_working_solution * 1.2

For example, if we have 96 samples, plus two columns of standards, in total 112 wells. In each well, we will have 200µl working solution, plus 20% more. So we will need: (1.2)X112X200=26,880 µl.  We will make it even to be 26,000µl.  So, we need 130µl reagent to be in 25,870µl HS buffer to make this working solution. In 50 ml falcon tube, you could mix the reagent and buffer.  You should know how to make dilutions, and you should double check them with this [handy dandy calculator](https://www.physiologyweb.com/calculators/dilution_calculator_mass_per_volume.html).  For this example, stock concentration = 200, volume from stock = blank, final concentration = 1, final solution volume = 26000, resuting in a calculation of 130 -- or the amount you need to add of the stock.  

* This step could only be done after your DNA samples are ready as the fluorescence will drop as time passes by.  It would be better you could add DNA in right after the working solution is loaded into wells.

3.	Pour the working solution into a new reservoir to be easier to transfer sample by multichannel.  Use multiple channel pipettes to load 200  ul to targeted wells. 

4.	Add 10µl of each of the Quant-iT dsDNA HS standards to separate wells and mix well.
5.	Add _5µl_ of each DNA samples to separate wells and mix well.

* The settings will be:
    + left plate 1st column: standards; 
    + 2nd-12th columns: samples from your sample plate 1st -11th  columns.  
    + The 1st column of right plate: the 12th column of your sample plate; 
    + the 2nd column of right plate: standards. 
    
* Here, I use 5µl of DNA samples for concentration measurement by this plate reader.  Jin and I have tried different standards and different samples and have shown that 5µl is suitable amount for accuracy and feasibility (not to waste too much of our samples). However, the amount of DNA samples added into working solution depends on the DNA concentrations of your samples.  That's why in the original protocol, they wrote down 1-20 l of samples
* It is important to _mix well_ of each well. You could do the mixing step later after you add all your samples to working solution and pipette wells with multiple channel pipette. 

    
 
 ![two aligned 96 well plates](https://github.com/germs-lab/SOPs/blob/master/images/two_plates.jpg)   


6.	 Measure the fluorescence using a microplate reader by: 
* Turn on the plate reader
* Double click the software: Gen5
* Load your plate
* Click "Open", go to "read now", then click "existing protocol", choose "howe_quanit-dsdna"
* Click Ok to read your plate
* Save your excel
* Copy your data to a USB drive.

7. Calculate the DNA concentration based on the standard curves generate with stanadard DNA and their plate readings.  We recommend the R2 of the standard curve to be at least 0.90.
