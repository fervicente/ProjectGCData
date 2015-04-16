
### CODEBOOK FOR TIDY DATA FROM <br /> 'Getting and Cleaning Data Course Project'

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and tBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometer-XYZ, frequencyBodyAccelerometerJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAccelerometerJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude. (Note the 'frequency' to indicate frequency domain signals).

The set of measures that are estimated from these signals are: 

*mean(): Mean value 
*std(): Standard deviation

These signals are used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y or Z directions.

| NAME        | DESCRIPTION           | VALUES OR EXPLANATION  |
| -----------: |:---------------------:|:----------------------:|
| Subject     | identifier of the subject | 1-30 |
| Activity    | activity label   | WALKING WALKING_UPSTAIRS WALKING_DOWNSTAIRS<br /> SITTING STANDING LAYING |
| timeBodyAccelerometer.mean...XYZ|                                                  |    -1:1 |
| timeBodyAccelerometer.std...XYZ |                                                  |    -1:1 |
| timeGravityAccelerometer.mean...XYZ |                                                  |    -1:1 |
| timeGravityAccelerometer.std...XYZ |                                                  |    -1:1 |
| timeBodyAccelerometerJerk.mean...XYZ |                                                  |    -1:1 |
| timeBodyAccelerometerJerk.std...XYZ |                                                  |    -1:1 |
| timeBodyGyroscope.mean...XYZ |                                                  |    -1:1 |
| timeBodyGyroscope.std...XYZ |                                                  |    -1:1 |
| timeBodyGyroscopeJerk.mean...XYZ |                                                  |    -1:1 |
| timeBodyGyroscopeJerk.std...XYZ |                                                  |    -1:1 |
| timeBodyAccelerometerMagnitude.mean.. |                                                  |    -1:1 |
| timeBodyAccelerometerMagnitude.std..XYZ |                                                  |    -1:1 |
| timeGravityAccelerometerMagnitude.mean.. |                                                  |    -1:1 |
| timeGravityAccelerometerMagnitude.std.. |                                                  |    -1:1 |
| timeBodyAccelerometerJerkMagnitude.mean.. |                                                  |    -1:1 |
| timeBodyAccelerometerJerkMagnitude.std.. |                                                  |    -1:1 |
| timeBodyGyroscopeMagnitude.mean.. |                                                  |    -1:1 |
| timeBodyGyroscopeMagnitude.std.. |                                                  |    -1:1 |
| timeBodyGyroscopeJerkMagnitude.mean.. |                                                  |    -1:1 |
| timeBodyGyroscopeJerkMagnitude.std.. |                                                  |    -1:1 |
| frequencyBodyAccelerometer.mean...XYZ |                                                  |    -1:1 |
| frequencyBodyAccelerometer.std...XYZ |                                                  |    -1:1 |
| frequencyBodyAccelerometerJerk.mean...XYZ |                                                  |    -1:1 |
| frequencyBodyAccelerometerJerk.std...XYZ |                                                  |    -1:1 |
| frequencyBodyGyroscope.mean...XYZ |                                                  |    -1:1 |
| frequencyBodyGyroscope.std...XYZ |                                                  |    -1:1 |
| frequencyBodyAccelerometerMagnitude.mean.. |                                                  |    -1:1 |
| frequencyBodyAccelerometerMagnitude.std.. |                                                  |    -1:1 |
| frequencyBodyAccelerometerJerkMagnitude.mean.. |                                                  |    -1:1 |
| frequencyBodyAccelerometerJerkMagnitude.std.. |                                                  |    -1:1 |
| frequencyBodyGyroscopeMagnitude.mean.. |                                                  |    -1:1 |
| frequencyBodyGyroscopeMagnitude.std.. |                                                  |    -1:1 |
| frequencyBodyGyroscopeJerkMagnitude.mean.. |                                                  |    -1:1 |
| frequencyBodyGyroscopeJerkMagnitude.std.. |                                                  |    -1:1 |


---

Author: Fernando Vicente Guijalba  
Date:   Apr 18, 2015