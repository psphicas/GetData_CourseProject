# Study Design

For details on the study design, please reference the original study:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

From the README.txt extracted from the data set:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
>
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
>
> For each record it is provided:
>
> - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

# Code Book

## Variables

The following is a list of variables in the final data set

timeBodyAccelerometer_Mean_X                                 | tBodyAcc-mean()-X             
timeBodyAccelerometer_Mean_Y                                 | tBodyAcc-mean()-Y             
timeBodyAccelerometer_Mean_Z                                 | tBodyAcc-mean()-Z             
timeBodyAccelerometer_StandardDeviation_X                    | tBodyAcc-std()-X              
timeBodyAccelerometer_StandardDeviation_Y                    | tBodyAcc-std()-Y              
timeBodyAccelerometer_StandardDeviation_Z                    | tBodyAcc-std()-Z              
timeGravityAccelerometer_Mean_X                              | tGravityAcc-mean()-X          
timeGravityAccelerometer_Mean_Y                              | tGravityAcc-mean()-Y          
timeGravityAccelerometer_Mean_Z                              | tGravityAcc-mean()-Z          
timeGravityAccelerometer_StandardDeviation_X                 | tGravityAcc-std()-X           
timeGravityAccelerometer_StandardDeviation_Y                 | tGravityAcc-std()-Y           
timeGravityAccelerometer_StandardDeviation_Z                 | tGravityAcc-std()-Z           
timeBodyAccelerometerJerk_Mean_X                             | tBodyAccJerk-mean()-X         
timeBodyAccelerometerJerk_Mean_Y                             | tBodyAccJerk-mean()-Y         
timeBodyAccelerometerJerk_Mean_Z                             | tBodyAccJerk-mean()-Z         
timeBodyAccelerometerJerk_StandardDeviation_X                | tBodyAccJerk-std()-X          
timeBodyAccelerometerJerk_StandardDeviation_Y                | tBodyAccJerk-std()-Y          
timeBodyAccelerometerJerk_StandardDeviation_Z                | tBodyAccJerk-std()-Z          
timeBodyGyroscope_Mean_X                                     | tBodyGyro-mean()-X            
timeBodyGyroscope_Mean_Y                                     | tBodyGyro-mean()-Y            
timeBodyGyroscope_Mean_Z                                     | tBodyGyro-mean()-Z            
timeBodyGyroscope_StandardDeviation_X                        | tBodyGyro-std()-X             
timeBodyGyroscope_StandardDeviation_Y                        | tBodyGyro-std()-Y             
timeBodyGyroscope_StandardDeviation_Z                        | tBodyGyro-std()-Z             
timeBodyGyroscopeJerk_Mean_X                                 | tBodyGyroJerk-mean()-X        
timeBodyGyroscopeJerk_Mean_Y                                 | tBodyGyroJerk-mean()-Y        
timeBodyGyroscopeJerk_Mean_Z                                 | tBodyGyroJerk-mean()-Z        
timeBodyGyroscopeJerk_StandardDeviation_X                    | tBodyGyroJerk-std()-X         
timeBodyGyroscopeJerk_StandardDeviation_Y                    | tBodyGyroJerk-std()-Y         
timeBodyGyroscopeJerk_StandardDeviation_Z                    | tBodyGyroJerk-std()-Z         
timeBodyAccelerometerMagnitude_Mean                          | tBodyAccMag-mean()            
timeBodyAccelerometerMagnitude_StandardDeviation             | tBodyAccMag-std()             
timeGravityAccelerometerMagnitude_Mean                       | tGravityAccMag-mean()         
timeGravityAccelerometerMagnitude_StandardDeviation          | tGravityAccMag-std()          
timeBodyAccelerometerJerkMagnitude_Mean                      | tBodyAccJerkMag-mean()        
timeBodyAccelerometerJerkMagnitude_StandardDeviation         | tBodyAccJerkMag-std()         
timeBodyGyroscopeMagnitude_Mean                              | tBodyGyroMag-mean()           
timeBodyGyroscopeMagnitude_StandardDeviation                 | tBodyGyroMag-std()            
timeBodyGyroscopeJerkMagnitude_Mean                          | tBodyGyroJerkMag-mean()       
timeBodyGyroscopeJerkMagnitude_StandardDeviation             | tBodyGyroJerkMag-std()        
frequencyBodyAccelerometer_Mean_X                            | fBodyAcc-mean()-X             
frequencyBodyAccelerometer_Mean_Y                            | fBodyAcc-mean()-Y             
frequencyBodyAccelerometer_Mean_Z                            | fBodyAcc-mean()-Z             
frequencyBodyAccelerometer_StandardDeviation_X               | fBodyAcc-std()-X              
frequencyBodyAccelerometer_StandardDeviation_Y               | fBodyAcc-std()-Y              
frequencyBodyAccelerometer_StandardDeviation_Z               | fBodyAcc-std()-Z              
frequencyBodyAccelerometerJerk_Mean_X                        | fBodyAccJerk-mean()-X         
frequencyBodyAccelerometerJerk_Mean_Y                        | fBodyAccJerk-mean()-Y         
frequencyBodyAccelerometerJerk_Mean_Z                        | fBodyAccJerk-mean()-Z         
frequencyBodyAccelerometerJerk_StandardDeviation_X           | fBodyAccJerk-std()-X          
frequencyBodyAccelerometerJerk_StandardDeviation_Y           | fBodyAccJerk-std()-Y          
frequencyBodyAccelerometerJerk_StandardDeviation_Z           | fBodyAccJerk-std()-Z          
frequencyBodyGyroscope_Mean_X                                | fBodyGyro-mean()-X            
frequencyBodyGyroscope_Mean_Y                                | fBodyGyro-mean()-Y            
frequencyBodyGyroscope_Mean_Z                                | fBodyGyro-mean()-Z            
frequencyBodyGyroscope_StandardDeviation_X                   | fBodyGyro-std()-X             
frequencyBodyGyroscope_StandardDeviation_Y                   | fBodyGyro-std()-Y             
frequencyBodyGyroscope_StandardDeviation_Z                   | fBodyGyro-std()-Z             
frequencyBodyAccelerometerMagnitude_Mean                     | fBodyAccMag-mean()            
frequencyBodyAccelerometerMagnitude_StandardDeviation        | fBodyAccMag-std()             
frequencyBodyAccelerometerJerkMagnitude_Mean                 | fBodyBodyAccJerkMag-mean()    
frequencyBodyAccelerometerJerkMagnitude_StandardDeviation    | fBodyBodyAccJerkMag-std()     
frequencyBodyGyroscopeMagnitude_Mean                         | fBodyBodyGyroMag-mean()       
frequencyBodyGyroscopeMagnitude_StandardDeviation            | fBodyBodyGyroMag-std()        
frequencyBodyGyroscopeJerkMagnitude_Mean                     | fBodyBodyGyroJerkMag-mean()   
frequencyBodyGyroscopeJerkMagnitude_StandardDeviation        | fBodyBodyGyroJerkMag-std()    


time : time domain
frequency : frequency domain

Body :
Gravity :

Gyroscope
Accelerometer

Magnitude
JerkMagnitude

