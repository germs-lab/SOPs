## MagAttract PowerWater DNA/RNA extraction protocol for Robot
* Catalog No. 27800-4-EP

### Things to consider
* A blank sample (DI water filter) needs to be included in each plate of DNA extraction
* To avoid any biases, arrange samples in the extraction plate **randomly**, the layout needs to be recorded in metadata
* The entire protocol can be devided into 3 parts:
    * **Days 0**: filtering water samples and store in 5 ml bead tubes. This step may takes several days according to your sampling days.
    * **Day 1**: manual extraction, 2 plates of 96-well plate can be extracted together in one day and may require up to 6-8 hours (this SOP).
    * **Day 2**: robot run, 1 plate of 96-well plate require 5-6 hours.

### Day 1
### Before starting
*	Warm the `PowerMag Lysis Solution (MBL)` at 60oC for 15-20 mins before starting to dissolve any precipitates.
*	Since samples are in individual tubes at the beginning of the protocol, it is a good idea to have plate layouts of how the samples will be arranged in 96-well plate format. The plate layouts need to be updated to metadata.

### Procedure
1.	Your samples are already on the filter rolled into cylinder with the top side facing inward in the 5 ml Bead Tube.
    *	If the filter is not rolled like cylinder, use alcohol-cleaned forceps to unfold the filter and roll it like cylinder with the top side facing inward. 

2.	Add 1 ml of warmed `PowerMag Lysis Solution/RNaseA`.
    *	For 96 samples, need 100 ml `PowerMag lysis Solution` and 900 ul `RNase A`. Pour 50 ml `PowerMag lysis solution` into **two** 50 ml falcon tubes and add 450 ul `RNase A` into each tube, then invert the tube to mix well. 
    *	Option: you could make one of these two tubes at a time by adding 450 ul RNase A into one of the tubes and add the solution/RNase into each bead tube while keeping another 50 ml Lysis Solution in the 60oC water bath to keep warm until you need it; then add RNase A in before you are ready to use.

3.	Place 16 of the 5 ml Bead Tubes into each 5 ml Tube Adapter and place on the 96 Well Plate Shaker.  Two Tube Adapter are available, so 32 samples can be done at the same time. Shake at speed 20 for 5 mins
    *	Program 1

4.	After the first 5 minute cycle, remove the Tube Adapter assemblies and rotate them so that the side closest to the machine body is now furthest from the machine body. Shake again at speed 20 for 5 more mins.

5.	Use alcohol-cleaned forceps to take out the filter. Avoid taking out too much beads and liquid, rotate the filter and lean it to the inner wall of tubes to leave as much liquid as possible in the tubes. 

6.	Centrifuge the 5 ml Bead Tubes at room temperature for 1 min at 4500 X g. 
    *	Rotor: S-5.1 with BUC (not PLA)
    *	RCF: 4500 X g

7.	Repeat step 3,4 and 5 to finish 96 samples

8.	Transfer the supernatant to a clean MO BIO 2 ml Deep Well Plate (DWP). It will be necessary to push the pipette tip through the beads into the bottom to the bead tube in order to recover as much supernatant as possible.
    *	This is crucial step. You have to know which sample is transferred to which well.  Always double check with the plate layout and mark them down.

9.  Add 200 ul `PowerMag Inhibitor Removal Solution (IRS)` to each well and apply sealing Tape to the MO BIO 2 ml DWP. Vortex horizontally for 5 seconds on the vortex ensuring the solution is well mixed. Incubate at room temperature for 5 mins
    *	Use the reservoir in the lab.  Add 20 ml PowerMag Inhibitor Removal Solution to reservoir and then add it to DWP with multichannel pipette.

10. Centrifuge the MO BIO 2 ml DWP at room temperature for 6 mins at 4500 X g. Remove and discard Sealing Tape.
    * Rotor: S-5700
    * RCF: 4500 g

11. Avoid the pellet, use E1-ClipTip automatic multichannel pipettes (programmed Htp850) to transfer the entire volume of the supernatant to a new Mo BIO 2 ml DWP. Apply Sealing Tape to the DWP. 
    *	Position is around 7 for the plate holder. You can insert the pipette and check whether the tip touch the pellets

12. Centrifuge at 4500 g for 6 mins to clear any residual particulates that may have carried over.

13. Transfer no more than 800 ul of supernatant to a new MO BIO 2 ml DWP again avoiding any residual pellet.
    * Until now, we get the samples ready for Robot. Seal the plate with Polyethylene Film, label it and store in -80oC for further use.

### Day 2
Follow [MagAttract Robot setup protocol](https://github.com/germs-lab/SOPs/blob/fef614f1888320dab76877186d03215bdfc58ad4/DNA_SOPs/SOP_MagAttract_robot_setup_for_DNA_extraction.md) for Robot use. 
