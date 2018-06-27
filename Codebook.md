# Getting and Cleaning Data Project

### Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals time_accelerometer_xyz and time_gyroscope_xyz. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (time_accelerometer_xyz and time_gravity_accelerometer_xyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (time_accelerometer_jerk_xyz and time_gyroscope_jerk_xyz). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (time_accerometer_magnitude, time_gravity_accelerometer_magnitude, time_accelerometer_jerk_magnitude, time_gyroscope_magnitude, time_bodygyroscope_jerk_magnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freq_accelerometer_xyz, freq_accelerometer_jerk_xyz, freq_gyroscope_xyz, freq_accelerometer_jerk_magnitude, freq_gyroscope_magnitude, freq_gyroscope_jerk_magnitude. 

These signals were used to estimate variables of the feature vector for each pattern:  
'_xyz' is used to denote 3-axial signals in the X, Y and Z directions.

* time_accelerometer_xyz
* time_gravity_accelerometer_xyz
* time_accelerometer_jerk_xyz
* time_gyroscope_xyz
* time_gyroscope_jerk_xyz
* time_accelerometer_magnitude
* time_gravity_accelerometer_magnitude
* time_accelerometer_jerk_magnitude
* time_gyroscope_magnitude
* time_gyroscope_jerk_magnitude
* freq_accelerometer_xyz
* freq_accelerometer_jerk_xyz
* freq_gyroscope_xyz
* freq_accelerometer_magnitude
* freq_accelerometer_jerk_magnitude
* freq_gyroscope_magnitude
* freq_gyroscope_jerk_magnitude

The set of variables that were estimated from these signals are: 

* mean: Mean value
* std: Standard deviation


### Features

* "subject"
* "activity"
* "time_accelerometer_mean_x"
* "time_accelerometer_mean_y"
* "time_accelerometer_mean_z"
* "time_accelerometer_std_x"
* "time_accelerometer_std_y"
* "time_accelerometer_std_z"
* "time_gravity_accelerometer_mean_x"
* "time_gravity_accelerometer_mean_y"
* "time_gravity_accelerometer_mean_z"
* "time_gravity_accelerometer_std_x"
* "time_gravity_accelerometer_std_y"
* "time_gravity_accelerometer_std_z"
* "time_accelerometer_jerk_mean_x"
* "time_accelerometer_jerk_mean_y"
* "time_accelerometer_jerk_mean_z"
* "time_accelerometer_jerk_std_x"
* "time_accelerometer_jerk_std_y"
* "time_accelerometer_jerk_std_z"
* "time_gyroscope_mean_x"
* "time_gyroscope_mean_y"
* "time_gyroscope_mean_z"
* "time_gyroscope_std_x"
* "time_gyroscope_std_y"
* "time_gyroscope_std_z"
* "time_gyroscope_jerk_mean_x"
* "time_gyroscope_jerk_mean_y"
* "time_gyroscope_jerk_mean_z"
* "time_gyroscope_jerk_std_x"
* "time_gyroscope_jerk_std_y"
* "time_gyroscope_jerk_std_z"
* "time_accelerometer_magnitude_mean"
* "time_accelerometer_magnitude_std"
* "time_gravity_accelerometer_magnitude_mean"
* "time_gravity_accelerometer_magnitude_std"
* "time_accelerometer_jerk_magnitude_mean"
* "time_accelerometer_jerk_magnitude_std"
* "time_gyroscope_magnitude_mean"
* "time_gyroscope_magnitude_std"
* "time_gyroscope_jerk_magnitude_mean"
* "time_gyroscope_jerk_magnitude_std"
* "freq_accelerometer_mean_x"
* "freq_accelerometer_mean_y"
* "freq_accelerometer_mean_z"
* "freq_accelerometer_std_x"
* "freq_accelerometer_std_y"
* "freq_accelerometer_std_z"
* "freq_accelerometer_jerk_mean_x"
* "freq_accelerometer_jerk_mean_y"
* "freq_accelerometer_jerk_mean_z"
* "freq_accelerometer_jerk_std_x"
* "freq_accelerometer_jerk_std_y"
* "freq_accelerometer_jerk_std_z"
* "freq_gyroscope_mean_x"
* "freq_gyroscope_mean_y"
* "freq_gyroscope_mean_z"
* "freq_gyroscope_std_x"
* "freq_gyroscope_std_y"
* "freq_gyroscope_std_z"
* "freq_accelerometer_magnitude_mean"
* "freq_accelerometer_magnitude_std"
* "freq_accelerometer_jerk_magnitude_mean"
* "freq_accelerometer_jerk_magnitude_std"
* "freq_gyroscope_magnitude_mean"
* "freq_gyroscope_magnitude_std"
* "freq_gyroscope_jerk_magnitude_mean"
* "freq_gyroscope_jerk_magnitude_std"

### Activity Labels
* 1 WALKING
* 2 WALKING_UPSTAIRS
* 3 WALKING_DOWNSTAIRS
* 4 SITTING
* 5 STANDING
* 6 LAYING



### Transformations
Took the average of each variable grouped by subject and activity, so the final dataset has one observation for subject 1's Walking, one observation for subject 1's Walking Upstairs, ect.  