##Data Dictionary -- Human Activity Recognition Using Smartphones Dataset

subject: subject ID

activity: activity subject was performing while wearing the smartphone
Note: in original dataset, activities corresponded to numbers (found in activity_labels.txt) -- original number labels are in parentheses after activity name
	- laying (6)
		- subject was laying while measurements were taken
	- sitting (4)
		- subject was sitting while measurements were taken
	- standing (5)
		- subject was standing while measurements were taken
	- walking (1)
		- subject was walking while measurements were taken
	- walkingup (2)
		- subject was walking upstairs while measurements were taken
	- walkingdown (3)
		- subject was walking downstairs while measurements were taken

Features:		
time: time domain signals (captured at a constant rate of 50 Hz)
freq: frequency domain signals
Body: body signal
Gravity: gravitational signal
Acc: signal from accelerometer
Gyro: signal from gyroscope
Jerk: body linear acceleration and angular velocity derived in time
Mag: magnitude of the three-dimensional signals (calculated using the Euclidean norm)
mean: mean value
std: standard deviation value
X: axial signal in the X direction
Y: axial signal in the Y direction
Z: axial signal in the Z direction

Note: in the tidy data set, all measurements are means
Note: all features are normalized and bounded within [-1,1], as in original dataset

e.g.: 
"timeBodyAcc.mean.X" represents the mean of the mean of time domain body signal from the accelerometer in the X direction
"freqBodyGyroMag.std" represents the mean of the standard deviation of magnitude of the frequency domain body signals from the gyroscope

List of all features:
Note: feature names were changed from original dataset by removing parentheses, substituting dashes (-) with periods (.), and expanding "t" and "f" to "time" and "frequency"
timeBodyAcc.mean.X
timeBodyAcc.mean.Y
timeBodyAcc.mean.Z
timeBodyAcc.std.X
timeBodyAcc.std.Y
timeBodyAcc.std.Z
timeGravityAcc.mean.X
timeGravityAcc.mean.Y
timeGravityAcc.mean.Z
timeGravityAcc.std.X
timeGravityAcc.std.Y
timeGravityAcc.std.Z
timeBodyAccJerk.mean.X
timeBodyAccJerk.mean.Y
timeBodyAccJerk.mean.Z
timeBodyAccJerk.std.X
timeBodyAccJerk.std.Y
timeBodyAccJerk.std.Z
timeBodyGyro.mean.X
timeBodyGyro.mean.Y
timeBodyGyro.mean.Z
timeBodyGyro.std.X
timeBodyGyro.std.Y
timeBodyGyro.std.Z
timeBodyGyroJerk.mean.X
timeBodyGyroJerk.mean.Y
timeBodyGyroJerk.mean.Z
timeBodyGyroJerk.std.X
timeBodyGyroJerk.std.Y
timeBodyGyroJerk.std.Z
timeBodyAccMag.mean
timeBodyAccMag.std
timeGravityAccMag.mean
timeGravityAccMag.std
timeBodyAccJerkMag.mean
timeBodyAccJerkMag.std
timeBodyGyroMag.mean
timeBodyGyroMag.std
timeBodyGyroJerkMag.mean
timeBodyGyroJerkMag.std
freqBodyAcc.mean.X
freqBodyAcc.mean.Y
freqBodyAcc.mean.Z
freqBodyAcc.std.X
freqBodyAcc.std.Y
freqBodyAcc.std.Z
freqBodyAccJerk.mean.X
freqBodyAccJerk.mean.Y
freqBodyAccJerk.mean.Z
freqBodyAccJerk.std.X
freqBodyAccJerk.std.Y
freqBodyAccJerk.std.Z
freqBodyGyro.mean.X
freqBodyGyro.mean.Y
freqBodyGyro.mean.Z
freqBodyGyro.std.X
freqBodyGyro.std.Y
freqBodyGyro.std.Z
freqBodyAccMag.mean
freqBodyAccMag.std
freqBodyAccJerkMag.mean
freqBodyAccJerkMag.std
freqBodyBodyGyroMag.mean
freqBodyGyroMag.std
freqBodyGyroJerkMag.mean
freqBodyGyroJerkMag.std