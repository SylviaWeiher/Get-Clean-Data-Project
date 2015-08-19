# Code Book

## Original Data

### Overall/Input
- Experiments with a group of 30 volunteers.
- Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
- Using the embedded accelerometer and gyroscope of the smartphone
- captured 3-axial linear acceleration and 3-axial angular velocity

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

### Variables/Output
####dataset
> the data is combined out og training and test data

> only the measurements on the mean and standard deviation for each measurement have been extracted

> data was grouped by activity and subject

> the variables show the average of each variable for each activity and each subject

####variables
> labels -> Identifier of the performed activity

> subject -> subject who performed the activity

> status -> shows if the observation is out of training or out of test data

> activities -> shows the name of the activity that was performed

> all other -> time and frequency domain variables from accelerometer and the estimated body acceleration as average of each variable for each activity and each subject in gravity units.
