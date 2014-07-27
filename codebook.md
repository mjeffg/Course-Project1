# CODEBOOK - for analysis ran on Samsung data set
	Course Poject for Getting and Tidying Data class on Coursera Platform

## Data - UCI Human Activity Recognition using Smartphone Data Set from the UCI Machine Learning Repository
	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
* Six text files from UCI HAR Data set were read into R - Subject_training, X_train, Y_train, Subject_test,
	X_test and Y_test
* The six datasets were merged together
* The values in variable "activity were named
* The variables were named
* The merged data set was trimmed to contain only the "subject" and "activity" variables along with measurement
	variables that pertained to mean and standard deviation
* A second tidy data set was created with and average of each variable for each activity and each subject

## Processing


## Variable Dictionary


### subject	30
	Group of 30 volunteer subjects with an age bracket of 19-48 years old. Listed by number

### activity	6 
	Six activities performed by subjects wearing a smartphone(Samsung Galaxy S II) on the waist
		Walking
		Walking Upstairs
		Walking Downstairs
		Sitting
		Standing
		Laying

### TimeSignalsBodyAccelerationMeanValueYaxis		10299
	Mean value of time domain signals from an accelerometer separated into body acceletation on the X-axis

### TimeSignalsBodyAccelerationMeanValueZaxis		10299
	Mean value of time domain signals from an accelerometer separated into body acceletation on the Y-axis

### TimeSignalsBodyAccelerationStdDevValueXaxis		10299
	Mean value of time domain signals from an accelerometer separated into body acceletation on the Z-axis

### TimeSignalsBodyAccelerationStdDevValueYaxis		10299
	Standard deviation value of time domain signals from an accelerometer separated into body acceletation 
	on the X-axis

### TimeSignalsBodyAccelerationStdDevValueZaxis		10299
	Standard deviation value of time domain signals from an accelerometer separated into body acceletation 
	on the y-axis

### TimeSignalsGravityAccelerationMeanValueXaxis	10299
	Standard deviation value of time domain signals from an accelerometer separated into body acceletation 
	on the Z-axis

### TimeSignalsGravityAccelerationMeanValueYaxis	10299
	Mean value of time domain signals from an accelerometer separated into gravity acceletation on the X-axis

### TimeSignalsGravityAccelerationMeanValueZaxis	10299
	Mean value of time domain signals from an accelerometer separated into gravity acceletation on the Y-axis

### TimeSignalsGravityAccelerationStdDevValueXaxis	10299
	Mean value of time domain signals from an accelerometer separated into gravity acceletation on the Z-axis

### TimeSignalsGravityAccelerationStdDevValueYaxis	10299
	Standard deviation value of time domain signals from an accelerometer separated into gravity acceletation 
	on the X-axis

### TimeSignalsGravityAccelerationStdDevValueZaxis	10299
	Standard deviation value of time domain signals from an accelerometer separated into gravity acceletation 
	on the Y-axis

### TimeSignalsBodyAccelerationJerkMeanValueXaxis	10299
	Standard deviation value of time domain signals from an accelerometer separated into gravity acceletation 
	on the Z-axis

### TimeSignalsBodyAccelerationJerkMeanValueYaxis	10299
	Mean value of Jerk signals derived in time from the body linear acceleration on the X-axis

### TimeSignalsBodyAccelerationJerkMeanValueZaxis	10299
	Mean value of Jerk signals derived in time from the body linear acceleration on the Y-axis

### TimeSignalsBodyAccelerationJerkStdDevValueXaxis	10299
	Mean value of Jerk signals derived in time from the body linear acceleration on the Z-axis

### TimeSignalsBodyAccelerationJerkStdDevValueYaxis	10299
	Standard deviation value of Jerk signals derived in time from the body linear acceleration
	on the X-axis

### TimeSignalsBodyAccelerationJerkStdDevValueZaxis	10299
	Standard deviation value of Jerk signals derived in time from the body linear acceleration 
	on the Y-axis

### TimeSignalsBodyAccelerationJerkStdDevValueZaxis	10299
	Standard deviation value of Jerk signals derived in time from body linear acceleration 
	on the Z-axis

### TimeSignalsBodyGyroscopeMeanValueXaxis		10299
	Mean value of time signals derived from the body gyroscope on the X-axis

### TimeSignalsBodyGyroscopeMeanValueYaxis		10299
	Mean value of time signals derived from the body gyroscope on the Y-axis

### TimeSignalsBodyGyroscopeMeanValueZaxis		10299
	Mean value of time signals derived from the body gyroscope on the Z-axis

### TimeSignalsBodyGyroscopeStdDevValueXaxis		10299
	Standard deviation value of time signals derived from the body gyroscope on the X-axis

### TimeSignalsBodyGyroscopeStdDevValueYaxis		10299
	Standard deviation value of time signals derived from the body gyroscope on the Y-axis

### TimeSignalsBodyGyroscopeStdDevValueZaxis		10299
	Standard deviation value of time signals derived from the body gyroscope on the Z-axis

### TimeSignalsBodyGyroscopeJerkMeanValueXaxis		10299
	Mean value of Jerk signals derived in time from the body gyroscope on the X-axis

### TimeSignalsBodyGyroscopeJerkMeanValueYaxis		10299
	Mean value of Jerk signals derived in time from the body gyroscope on the Y-axis

### TimeSignalsBodyGyroscopeJerkMeanValueZaxis		10299
	Mean value of Jerk signals derived in time from the body gyroscope on the Z-axis

### TimeSignalsBodyGyroscopeJerkStdDevValueXaxis	10299
	Standard deviation value of Jerk signals derived in time from the body gyroscope on the X-axis

### TimeSignalsBodyGyroscopeJerkStdDevValueYaxis	10299
	Standard deviation value of Jerk signals derived in time from the body gyroscope on the Y-axis

### TimeSignalsBodyGyroscopeJerkStdDevValueZaxis	10299
	Standard deviation value of Jerk signals derived in time from the body gyroscope on the Z-axis

### TimeSignalsBodyAccelerationMagnitudeMeanValue	10299
	Mean value of the magnitude of the three-dimensional signals derived in time from body acceleration

### TimeSignalsBodyAccelerationMagnitudeStdDevValue	10299
	Standard deviation value of the magnitude of the three-dimensional signals derived in time from body acceleration

### TimeSignalsGravityAccelerationMagnitudeMeanValue		10299
	Mean value of the magnitude of the three-dimensional signals derived in time from gravity acceleration

### TimeSignalsBodyAccelerationMagnitudeStdDevValue		10299
	Standard deviation value of the magnitude of the three-dimensional signals derived in time from body gravity


### TimeSignalsBodyAccelerationJerkMagnitudeMeanValue	10299
	Mean value of the magnitude of the three-dimensional Jerk signals derived in time from the body
	acceleration

### TimeSignalsBodyAccelerationJerkMagnitudeStdDevValue	10299
	Standard deviation value of the magnitude of the three-dimensional Jerk signals derived in time 
	from the body acceleration

### TimeSignalsBodyGyroscopeMagnitudeMeanValue		10299
	Mean value of the magnitude three-dimensional signals derived in time from the body gyroscope

### TimeSignalsBodyGyroscopeMagnitudeStdDevValue	10299
	Standard deviation value of the magnitude of three-dimensional signals derived in time from 
	the body gyroscope


### TimeSignalsBodyGyroscopeJerkMagnitudeMeanValue	10299
	Mean value of the magnitude of the three-dimensional Jerk signals derived in time from the 
	body gyroscope

### TimeSignalsBodyGyroscopeJerkMagnitudeStdDevValue	10299
	Standard deviation value of the magnitude of the three-dimensional Jerk signals derived in time 
	from the body gyroscope

### FrequencySignalsBodyAccelerationMeanValueXaxis	10299
	Mean value of frequency domain signals from body acceleration on the X-axis

### FrequencySignalsBodyAccelerationMeanValueYaxis	10299
	Mean value of frequency domain signals from body acceleration on the Y-axis

### FrequencySignalsBodyAccelerationMeanValueZaxis	10299
	Mean value of frequency domain signals from body acceleration on the Z-axis

### FrequencySignalsBodyAccelerationStdDevValueXaxis	10299
	Standard deviation value of frequency domain signals from body acceleration on the X-axis

### FrequencySignalsBodyAccelerationStdDevValueYaxis	10299
	Standard deviation value of frequency domain signals from body acceleration on the Y-axis

### FrequencySignalsBodyAccelerationStdDevValueZaxis	10299
	Standard deviation value of frequency domain signals from body acceleration on the Z-axis

### FrequencySignalsBodyAccelerationJerkMeanValueXaxis	10299
	Mean value of Jerk signals of frequency domain signals from body acceleration on the X-axis

### FrequencySignalsBodyAccelerationJerkMeanValueYaxis	10299
	Mean value of Jerk signals of frequency domain signals from body acceleration on the Y-axis

### FrequencySignalsBodyAccelerationJerkMeanValueZaxis	10299
	Mean value of Jerk signals of frequency domain signals from body acceleration on the Z-axis

### FrequencySignalsBodyAccelerationJerkStdDevValueXaxis	10299
	Standard deviation value of Jerk signals of frequency domain signals from body acceleration on the X-axis

### FrequencySignalsBodyAccelerationJerkStdDevValueYaxis	10299
	Standard deviation value of Jerk signals of frequency domain signals from body acceleration on the Y-axis

### FrequencySignalsBodyAccelerationJerkStdDevValueZaxis	10299
	Standard deviation value of Jerk signals of frequency domain signals from body acceleration on the Z-axis

### FrequencySignalsBodyGyroscopeMeanValueXaxis		10299
	Mean value of frequency domain signals from body gyroscope on the X-axis

### FrequencySignalsBodyGyroscopeMeanValueYaxis		10299
	Mean value of frequency domain signals from body gyroscope on the Y-axis

### FrequencySignalsBodyGyroscopeMeanValueZaxis		10299
	Mean value of frequency domain signals from body gyroscope on the Z-axis

### FrequencySignalsBodyGyroscopeStdDevValueXaxis	10299
	Standard deviation value of frequency domain signals from body gyroscope on the X-axis

### FrequencySignalsBodyGyroscopeStdDevValueYaxis	10299
	Standard deviation value of frequency domain signals from body gyroscope on the Y-axis

### FrequencySignalsBodyGyroscopeStdDevValueZaxis	10299
	Standard deviation value of frequency domain signals from body gyroscope on the Z-axis

### FrequencySignalsBodyAccelerationXYZMagnitudeMeanValue	10299
	Mean value of the magnitude of the three-dimensional signals derived in frequency domain from body acceleration

### FrequencySignalsBodyAccelerationXYZMagnitudeStdDevValue	10299
	Standard deviation value of the magnitude of the three-dimensional signals derived in frequency domain from 
	body acceleration

### FrequencySignalsBodyAccelerationJerkXYZMagnitudeMeanValue	10299
	Mean value of the magnitude of the three-dimensional signals of Jerk signals derived in frequency domain 
	from body acceleration

### FrequencySignalsBodyAccelerationJerkXYZMagnitudeStdDevValue	10299
	Standard deviation value of the magnitude of the three-dimensional signals of Jerk signals derived in frequency 
	domain from body acceleration

### FrequencySignalsBodyGyroscopeXYZMagnitudeMeanValue		10299
	Mean value of the magnitude of the three-dimensional signals derived in frequency domain from body gyroscope

### FrequencySignalsBodyGyroscopeXYZMagnitudeStdDevValue	10299
	Standard deviation value of the magnitude of the three-dimensional signals derived in frequency domain from 
	body gyroscope

### FrequencySignalsBodyGyroscopeJerkXYZMagnitudeMeanValue	10299
	Mean value of the magnitude of the three-dimensional signals of Jerk signals derived in frequency domain 
	from body gyroscope

### FrequencySignalsBodyAccelerationJerkXYZMagnitudeStdDevValue	10299
	Standard deviation value of the magnitude of the three-dimensional signals of Jerk signals derived in frequency 
	domain from body acceleration
 
 
 
 






















































		  