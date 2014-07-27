# Course Project1 - Getting and Tidying Data
Analysis on UCI Human Activity Recognition Using Smartphones data set
----
## Introduction
This assignment uses data from the UC Irvine Machine Learning Repository. The "Human Activity
Recognition using Smartphones Data Set" is used for the the assignment:

* _Dataset_ [UCI Human Activity Recognition Using Smartphons](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

* _Description_ Measurements of six activities performed by 30 volunteers within the age bracket of 19-48
		years. The voluteers wore a smartphone(Samsung Galazy S II) on the waist. Using embedded
		accelerometer and gyroscope they captured 3-axial linear acceleration and 3-axial angular
		velocity at a constant rate of 50Hz. The experiments were video-recorded to label the activity
		in the data manually. The dataset was randomly partioned into 70% training data and 30% test
		data.[1]
		
		The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters
		and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).
		The sensor acceleration signal, which has gravitational and body motion components, was separated 
		using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is
		assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was 
		used. From each window, a vector of features was obtained by calculating variables from the time 
		and frequency domain. [1]

* _Variables_  For each record in the dataset it is provided:
		- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
		- Triaxial Angular velocity from the gyroscope. 
		- A 561-feature vector with time and frequency domain variables. 
		- Its activity label. 
		- An identifier of the subject who carried out the experiment.[1]

### Loading Data into R
	* The script assumes the data set is in the working directory and unzipped
	* Six text files will be loaded seperately:
		1. Subject_training
		2. X_training
		3. Y_training
		4. Subject_test
		5. X_test
		6. Y_test
	* Read.table() will be used to load the data

### Processing the Data
	* The values in "activity" variable will be renamed: Walking, Walking_Upstairs, Walking_Downstairs,
		Sitting, Standing, Laying
	* The measurement variables will be named by their measurement
	* The training and test data sets will each be merged by created "id" number which will be deleted after
	* The merged training and test data sets will be merged together using rbind()
	* The merged data set will be trimmed to include only variables the exact mean and standard deviation
		measures
	* A second tidy data set will be created to get the average of each variable for each activity and each
		subject
	* The two tidy data sets will be export as a tab delimited text file and uploaded onto Course Project1
		submit box using write.table()


[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

