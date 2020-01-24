# DataCleaningProgrammingAssignment1
Programming assignment for Coursera R data cleaning course

The data set in this submission contains a single data file, produced by run_analysis.R:
- 'Average_by_subject_activity.txt'

This data table summarises the average, for each volunteer and each activity, of the mean and standard deviation of the linear acceleration and angular velocity measurements, mentioned in README.

====================================
Each row in the data table corresponds to a unique combination of subject and activity.

Each column (except for the first two) represents either the mean or standard deviation of a measurement/feature.

A list of measurements included are set out below:
- tBodyAcc-X
- tBodyAcc-Y
- tBodyAcc-Z
- tGravityAcc-X
- tGravityAcc-Y
- tGravityAcc-Z
- tBodyAccJerk-X
- tBodyAccJerk-Y
- tBodyAccJerk-Z
- tBodyGyro-X
- tBodyGyro-Y
- tBodyGyro-Z
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-X
- fBodyAcc-Y
- fBodyAcc-Z
- fGravityAcc-X
- fGravityAcc-Y
- fGravityAcc-Z
- fBodyAccJerk-X
- fBodyAccJerk-Y
- fBodyAccJerk-Z
- fBodyGyro-X
- fBodyGyro-Y
- fBodyGyro-Z
- fBodyAccMag
- fGravityAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

=============================================
Notes:
- Features are normalized and bounded within [-1,1].
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.