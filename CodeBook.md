Tiny_Data.txt
=============

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

**ASSIGNMENT**

The following 68 variables correspond to extracted data of `mean()` and `std()` variables from data collected from the accelerometers from the Samsung Galaxy S smartphone:


1. Subjects   
   A number identifying each of the thirty subjects.

2. Activities   
   Description of the measured activity.

3. tBodyAcc-mean()-X   
   Time Signal Mean. Accelerometer signal X axis. Body acceleration signal.
   
4. tBodyAcc-mean()-Y   
   Time Signal Mean. Accelerometer signal Y axis. Body acceleration signal.
   
5. tBodyAcc-mean()-Z   
   Time Signal Mean. Accelerometer signal Z axis. Body acceleration signal.
   
6. tGravityAcc-mean()-X   
   Time Signal Mean. Accelerometer signal X axis. Gravity acceleration signal.
   
7. tGravityAcc-mean()-Y   
   Time Signal Mean. Accelerometer signal Y axis. Gravity acceleration signal.
   
8. tGravityAcc-mean()-Z   
   Time Signal Mean. Accelerometer signal Z axis. Gravity acceleration signal.
   
9. tBodyAccJerk-mean()-X   
   Time Signal Mean. Accelerometer signal X axis. Body acceleration Jerk signal.
   
10. tBodyAccJerk-mean()-Y   
   Time Signal Mean. Accelerometer signal Y axis. Body acceleration Jerk signal.
   
11. tBodyAccJerk-mean()-Z   
   Time Signal Mean. Accelerometer signal Z axis. Body acceleration Jerk signal.
   
12. tBodyGyro-mean()-X   
   Time Signal Mean. Gyroscope signal X axis. Body acceleration signal.
   
13. tBodyGyro-mean()-Y   
   Time Signal Mean. Gyroscope signal Y axis. Body acceleration signal.
   
14. tBodyGyro-mean()-Z   
   Time Signal Mean. Gyroscope signal Z axis. Body acceleration signal.
   
15. tBodyGyroJerk-mean()-X   
   Time Signal Mean. Gyroscope signal X axis. Body acceleration Jerk signal.
   
16. tBodyGyroJerk-mean()-Y   
   Time Signal Mean. Gyroscope signal Y axis. Body acceleration Jerk signal.
   
17. tBodyGyroJerk-mean()-Z   
   Time Signal Mean. Gyroscope signal Z axis. Body acceleration Jerk signal.
   
18. tBodyAccMag-mean()   
   Time Signal Mean. Accelerometer signal magnitude. Body acceleration signal.
   
19. tGravityAccMag-mean()   
   Time Signal Mean. Accelerometer signal magnitude. Gravity acceleration signal.
   
20. tBodyAccJerkMag-mean()   
   Time Signal Mean. Accelerometer signal magnitude. Gravity acceleration Jerk signal.
   
21. tBodyGyroMag-mean()   
   Time Signal Mean. Gyroscope signal magnitude. Body acceleration signal.
   
22. tBodyGyroJerkMag-mean()   
   Time Signal Mean. Gyroscope signal magnitude. Body acceleration Jerk signal.
   
23. fBodyAcc-mean()-X   
   Frequency Domain Signal Mean. Accelerometer signal X axis. Body acceleration signal.
   
24. fBodyAcc-mean()-Y   
   Frequency Domain Signal Mean. Accelerometer signal Y axis. Body acceleration signal.
   
25. fBodyAcc-mean()-Z   
   Frequency Domain Signal Mean. Accelerometer signal Z axis. Body acceleration signal.
   
26. fBodyAccJerk-mean()-X   
   Frequency Domain Signal Mean. Accelerometer signal X axis. Body acceleration Jerk signal.
   
27. fBodyAccJerk-mean()-Y   
   Frequency Domain Signal Mean. Accelerometer signal Y axis. Body acceleration Jerk signal.
   
28. fBodyAccJerk-mean()-Z   
   Frequency Domain Signal Mean. Accelerometer signal Z axis. Body acceleration Jerk signal.
   
29. fBodyGyro-mean()-X   
   Frequency Domain Signal Mean. Gyroscope signal X axis. Body acceleration signal.
   
30. fBodyGyro-mean()-Y   
   Frequency Domain Signal Mean. Gyroscope signal Y axis. Body acceleration signal.
   
31. fBodyGyro-mean()-Z   
   Frequency Domain Signal Mean. Gyroscope signal Z axis. Body acceleration signal.
   
32. fBodyAccMag-mean()   
   Frequency Domain Signal Mean. Accelerometer signal magnitude. Body acceleration signal.
   
33. fBodyBodyAccJerkMag-mean()   
   Frequency Domain Signal Mean. Accelerometer signal magnitude. Body acceleration Jerk signal.
   
34. fBodyBodyGyroMag-mean()   
   Frequency Domain Signal Mean. Gyroscope signal magnitude. Body acceleration signal.
   
35. fBodyBodyGyroJerkMag-mean()   
   Frequency Domain Signal Mean. Gyroscope signal magnitude. Body acceleration Jerk signal.
   
36. tBodyAcc-std()-X   
   Time Signal Standard Deviation. Accelerometer signal X axis. Body acceleration signal.
   
37. tBodyAcc-std()-Y   
   Time Signal Standard Deviation. Accelerometer signal Y axis. Body acceleration signal.
   
38. tBodyAcc-std()-Z   
   Time Signal Standard Deviation. Accelerometer signal Z axis. Body acceleration signal.
   
39. tGravityAcc-std()-X   
   Time Signal Standard Deviation. Accelerometer signal X axis. Gravity acceleration signal.
   
40. tGravityAcc-std()-Y   
   Time Signal Standard Deviation. Accelerometer signal Y axis. Gravity acceleration signal.
   
41. tGravityAcc-std()-Z   
   Time Signal Standard Deviation. Accelerometer signal Z axis. Gravity acceleration signal.
   
42. tBodyAccJerk-std()-X   
   Time Signal Standard Deviation. Accelerometer signal X axis. Body acceleration Jerk signal.
   
43. tBodyAccJerk-std()-Y   
   Time Signal Standard Deviation. Accelerometer signal Y axis. Body acceleration Jerk signal.
   
44. tBodyAccJerk-std()-Z   
   Time Signal Standard Deviation. Accelerometer signal Z axis. Body acceleration Jerk signal.
   
45. tBodyGyro-std()-X   
   Time Signal Standard Deviation. Gyroscope signal X axis. Body acceleration signal.
   
46. tBodyGyro-std()-Y   
   Time Signal Standard Deviation. Gyroscope signal Y axis. Body acceleration signal.
   
47. tBodyGyro-std()-Z   
   Time Signal Standard Deviation. Gyroscope signal Z axis. Body acceleration signal.
   
48. tBodyGyroJerk-std()-X   
   Time Signal Standard Deviation. Gyroscope signal X axis. Body acceleration Jerk signal.
   
49. tBodyGyroJerk-std()-Y   
   Time Signal Standard Deviation. Gyroscope signal Y axis. Body acceleration Jerk signal.
   
50. tBodyGyroJerk-std()-Z   
   Time Signal Standard Deviation. Gyroscope signal Z axis. Body acceleration Jerk signal.
   
51. tBodyAccMag-std()   
   Time Signal Standard Deviation. Accelerometer signal magnitude. Body acceleration signal.
   
52. tGravityAccMag-std()   
   Time Signal Standard Deviation. Accelerometer signal magnitude. Gravity acceleration signal.
   
53. tBodyAccJerkMag-std()   
   Time Signal Standard Deviation. Accelerometer signal magnitude. Gravity acceleration Jerk signal.
   
54. tBodyGyroMag-std()   
   Time Signal Standard Deviation. Gyroscope signal magnitude. Body acceleration signal.
   
55. tBodyGyroJerkMag-std()   
   Time Signal Standard Deviation. Gyroscope signal magnitude. Body acceleration Jerk signal.
   
56. fBodyAcc-std()-X   
   Frequency Domain Signal Standard Deviation. Accelerometer signal X axis. Body acceleration signal.
   
57. fBodyAcc-std()-Y   
   Frequency Domain Signal Standard Deviation. Accelerometer signal Y axis. Body acceleration signal.
   
58. fBodyAcc-std()-Z   
   Frequency Domain Signal Standard Deviation. Accelerometer signal Z axis. Body acceleration signal.
   
59. fBodyAccJerk-std()-X   
   Frequency Domain Signal Standard Deviation. Accelerometer signal X axis. Body acceleration Jerk signal.
   
60. fBodyAccJerk-std()-Y   
   Frequency Domain Signal Standard Deviation. Accelerometer signal Y axis. Body acceleration Jerk signal.
   
61. fBodyAccJerk-std()-Z   
   Frequency Domain Signal Standard Deviation. Accelerometer signal Z axis. Body acceleration Jerk signal.
   
62. fBodyGyro-std()-X   
   Frequency Domain Signal Standard Deviation. Gyroscope signal X axis. Body acceleration signal.
   
63. fBodyGyro-std()-Y   
   Frequency Domain Signal Standard Deviation. Gyroscope signal Y axis. Body acceleration signal.
   
64. fBodyGyro-std()-Z   
   Frequency Domain Signal Standard Deviation. Gyroscope signal Z axis. Body acceleration signal.
   
65. fBodyAccMag-std()   
   Frequency Domain Signal Standard Deviation. Accelerometer signal magnitude. Body acceleration signal.
   
66. fBodyBodyAccJerkMag-std()   
   Frequency Domain Signal Standard Deviation. Accelerometer signal magnitude. Body acceleration Jerk signal.
   
67. fBodyBodyGyroMag-std()   
   Frequency Domain Signal Standard Deviation. Gyroscope signal magnitude. Body acceleration signal.
   
68. fBodyBodyGyroJerkMag-std()   
   Frequency Domain Signal Standard Deviation. Gyroscope signal magnitude. Body acceleration Jerk signal.
   


