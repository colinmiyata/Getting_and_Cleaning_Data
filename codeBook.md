# Code Book

The following code book identifies the variables listed in the tidy dataset and their units. The tidy data set combines the training and test data sets and averages the standard deviations and means of the features across each activity for each subject. 

The preprocessing of the data (in regards to feature calculation) can be found in the documentation of the original data set.

## Variables

### Subjects

Subject identification number

### Activities

The activity performed. The activity can be any of the following:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

### Body_Acc_time_domain-X-mean() 

The mean body acceleration measurements in the x-direction in the time domain averaged across each activity for each subject. Body_Acc_time_domain—Y-mean() and Body_Acc_time_domain-Z-mean() are the same in the Y and Z direction, respectively.

Units: Normalized between [-1 1]

### Body_Acc_time_domain-X-std()

The standard deviation of body acceleration measurements in the x-direction in the time domain averaged across each activity for each subject. Body_Acc_time_domain—Y-std() and Body_Acc_time_domain-Z-std() are the same in the Y and Z direction, respectively.

Units: Normalized between [-1 1]

### Gravity_Acc_time_domain-X-mean() 

The mean gravity acceleration measurements in the x-direction in the time domain averaged across each activity for each subject. Gravity_Acc_time_domain-Y-mean() and Gravity_Acc_time_domain-Z-mean() are the same in the Y and Z direction, respectively.

Units: Normalized between [-1 1]

### Gravity_Acc_time_domain-X-std()

The standard deviation of gravity acceleration measurements in the x-direction in the time domain averaged across each activity for each subject. Gravity_Acc_time_domain-Y-std() and Gravity_Acc_time_domain-X-std() are the same in the Y and Z direction, respectively.

Units: Normalized between [-1 1]

### Body_Acc_Derivative_time_domain-X-mean() 

The mean of the derivative of body acceleration measurements in the x-direction in the time domain averaged across each activity for each subject. Body_Acc_Derivative_time_domain-Y-mean() and Body_Acc_Derivative_time_domain-Z-mean() are the same in the Y and Z direction, respectively.

Units: Normalized between [-1 1]

### Body_Acc_Derivative_time_domain-X-std()

The standard deviation of the derivative of the body acceleration measurements in the x-direction in the time domain averaged across each activity for each subject. Body_Acc_Derivative_time_domain-Y-std() and Body_Acc_Derivative_time_domain-Z-std() are the same in the Y and Z direction, respectively.

Units: Normalized between [-1 1]

### Body_Gyro_time_domain-X-mean() 

The mean body gyroscope measurements in the x-direction in the time domain averaged across each activity for each subject. Body_Acc_time_domain—Y-mean() and Body_Acc_time_domain-Z-mean() are the same in the Y and Z direction, respectively.

Units: Normalized between [-1 1]

### Body_Gyro_time_domain-X-std()

The standard deviation of body gyroscope measurements in the x-direction in the time domain averaged across each activity for each subject. Body_Gyro_time_domain—Y-std() and Body_Gyro_time_domain-Z-std() are the same in the Y and Z direction, respectively.

Units: Normalized between [-1 1]

### Body_Gyro_Derivative_time_domain-X-mean() 

The mean of the derivative of body gyroscope measurements in the x-direction in the time domain averaged across each activity for each subject. Body_Gyro_Derivative_time_domain-Y-mean() and Body_Gyro_Derivative_time_domain-Z-mean() are the same in the Y and Z direction, respectively.

Units: Normalized between [-1 1]

### Body_Gyro_Derivative_time_domain-X-std()

The standard deviation of the derivative of the body gyroscope measurements in the x-direction in the time domain averaged across each activity for each subject. Body_Gyro_Derivative_time_domain-Y-std() and Body_Gyro_Derivative_time_domain-Z-std() are the same in the Y and Z direction, respectively.

Units: Normalized between [-1 1]

### Body_Acc_Magnitude_time_domain-mean()

The mean of the magnitude of body acceleration measurements in the time domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]

### Body_Acc_Magnitude_time_domain-std()

The standard of the magnitude of body acceleration measurements in the time domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]

### Gravity_Acc_Magnitude_time_domain-mean()

The mean of the magnitude of gravity acceleration measurements in the time domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]

### Gravity_Acc_Magnitude_time_domain-std()

The standard of the magnitude of gravity acceleration measurements in the time domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]

### Body_Acc_Derivative_Magnitude_time_domain-mean()

The mean of the magnitude of derivative of the body acceleration measurements in the time domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]

### Body_Acc_Derivative_Magnitude_time_domain-std()

The standard of the magnitude of derivative of the body acceleration measurements in the time domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]

### Body_Gyro_Magnitude_time_domain-mean()

The mean of the magnitude of body gyroscope measurements in the time domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]

### Body_Gyro_Magnitude_time_domain-std()

The standard of the magnitude of body gyroscope measurements in the time domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]

### Body_Gyro_Derivative_Magnitude_time_domain-mean()

The mean of the magnitude of derivative of the body gyroscope measurements in the time domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]

### Body_Gyro_Derivative_Magnitude_time_domain-std()

The standard of the magnitude of derivative of the body gyroscope measurements in the time domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]

### Body_Acc_frequency_domain-X-mean() 

The mean body acceleration measurements in the x-direction in the frequency domain averaged across each activity for each subject. Body_Acc_frequency_domain—Y-mean() and Body_Acc_frequency_domain-Z-mean() are the same in the Y and Z direction, respectively.

Units: Normalized between [-1 1]

### Body_Acc_frequency_domain-X-std()

The standard deviation of body acceleration measurements in the x-direction in the frequency domain averaged across each activity for each subject. Body_Acc_frequency_domain—Y-std() and Body_Acc_frequency_domain-Z-std() are the same in the Y and Z direction, respectively.

Units: Normalized between [-1 1]

### Body_Acc_Derivative_frequency_domain-X-mean() 

The mean of the derivative of body acceleration measurements in the x-direction in the frequency domain averaged across each activity for each subject. Body_Acc_Derivative_frequency_domain-Y-mean() and Body_Acc_Derivative_frequency_domain-Z-mean() are the same in the Y and Z direction, respectively.

Units: Normalized between [-1 1]

### Body_Acc_Derivative_frequency_domain-X-std()

The standard deviation of the derivative of the body acceleration measurements in the x-direction in the frequency domain averaged across each activity for each subject. Body_Acc_Derivative_frequency_domain-Y-std() and Body_Acc_Derivative_frequency_domain-Z-std() are the same in the Y and Z direction, respectively.

Units: Normalized between [-1 1]

### Body_Gyro_frequency_domain-X-mean() 

The mean of the derivative of body gyroscope measurements in the x-direction in the frequency domain averaged across each activity for each subject. Body_Acc_Derivative_frequency_domain-Y-mean() and Body_Acc_Derivative_frequency_domain-Z-mean() are the same in the Y and Z direction, respectively.

Units: Normalized between [-1 1]

### Body_Gyro_frequency_domain-X-std()

The standard deviation of the derivative of the body gyroscope measurements in the x-direction in the frequency domain averaged across each activity for each subject. Body_Gyro_Derivative_frequency_domain-Y-std() and Body_Gyro_Derivative_frequency_domain-Z-std() are the same in the Y and Z direction, respectively.

Units: Normalized between [-1 1]

### Body_Acc_Magnitude_frequency_domain-mean()

The mean of the magnitude of body acceleration measurements in the frequency domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]

### Body_Acc_Magnitude_frequency_domain-std()

The standard of the magnitude of body acceleration measurements in the frequency domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]

### Body_Acc_Derivative_Magnitude_frequency_domain-mean()

The mean of the magnitude of derivative of the body acceleration measurements in the frequency domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]

### Body_Acc_Derivative_Magnitude_frequency_domain-std()

The standard of the magnitude of derivative of the body acceleration measurements in the frequency domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]

### Body_Gyro_Magnitude_frequency_domain-mean()

The mean of the magnitude of body gyroscope measurements in the frequency domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]

### Body_Gyro_Magnitude_frequency_domain-std()

The standard of the magnitude of body gyroscope measurements in the frequency domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]

### Body_Gyro_Derivative_Magnitude_frequency_domain-mean()

The mean of the magnitude of derivative of the body gyroscope measurements in the frequency domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]

### Body_Gyro_Derivative_Magnitude_frequency_domain-std()

The standard of the magnitude of derivative of the body gyroscope measurements in the frequency domain averaged across each activity for each subject. 

Units: Normalized between [-1 1]
