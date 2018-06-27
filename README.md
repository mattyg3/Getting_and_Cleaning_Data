# Getting_and_Cleaning_Data

### Data Summary
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'Codebook.md' for more details. 


### Files
* run_analysis.R - script for data analysis
* Codebook.md - description of variables, units, and transformation of data

### Script Summary
The script run_analysis.R contains all of the steps from downloading the data to the summarized dataset by subject and activity. 

Step 1: Lines 3 thru 26 downloads the data, combines all dateframes into a single dataframe, and adds the original variable names to the combined dataframe.

Step 2: Lines 28 thru 34 selects only the mean and standard deviation variables. Then using the dplyr package, converts the dataframe into a dataframe table so the dplyr package can be used. 

Step 3: Lines 36 thru 42 use the mutate function from the dplyr package to convert the activity number to the descriptive label. (ex: 1 -> Walking, 2 -> Walking Upstairs, ...) 

Step 4: Lines 44 thru 56 edit the existing variable names so that they are more descriptive and user friendly. (ex:Acc -> accelerometer, t -> time, all lowercase for variable names, ...)

Step5: Lines 59 thru 64 groups the dataset by subject and activity, then takes the average of every variable and saves it as a new dataframe table. Then prints the new dataframe table to the console. 


### Notes
* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.
