# Code Book for `tidy_run_data.txt`

## Data

The data set in `tidy_run_data.txt` was derived after running the R script `run_analysis.R` on the original source data. 
Refer to `README.md` for background information.

The script cleans up the source data including the following transformations:
- Select only variables of mean and standard deviation of measurements taken during the experiments.
- Tidy up variable names, i.e. the variable names listed below vary from the origninal feature names of the source data.
- Summarise data with calculated average values of each measured variable per subject and activity.


## Variables

The variables for the data set `tidy_run_data.txt` are listed and explained below.

Note: The measured variables 3 to 68 (features) are all normalised and have numeric values between -1 and 1.

1. `subject` - ID of volunteer subject - integer number between 1 and 30
2. `activity` - activity description from six possible character strings (walking, walking_upstairs, walking_downstairs, sitting, standing, laying)
3. `tBodyAccmeanX` - mean of time domain body acceleration signal in X direction
4. `tBodyAccmeanY` - mean of time domain body acceleration signal in Y direction
5. `tBodyAccmeanZ` - mean of time domain body acceleration signal in Z direction
6. `tBodyAccstdX` - standard deviation of time domain body acceleration signal in X direction
7. `tBodyAccstdY` - standard deviation of time domain body acceleration signal in Y direction
8. `tBodyAccstdZ` - standard deviation of time domain body acceleration signal in Z direction
9. `tGravityAccmeanX` - mean of time domain gravity acceleration signal in X direction
10. `tGravityAccmeanY` - mean of time domain gravity acceleration signal in Y direction
11. `tGravityAccmeanZ` - mean of time domain gravity acceleration signal in Z direction
12. `tGravityAccstdX` - standard deviation of time domain gravity acceleration signal in X direction
13. `tGravityAccstdY` - standard deviation of time domain gravity acceleration signal in Y direction
14. `tGravityAccstdZ` - standard deviation of time domain gravity acceleration signal in Z direction
15. `tBodyAccJerkmeanX` - mean of time domain body acceleration Jerk signal in X direction
16. `tBodyAccJerkmeanY` - mean of time domain body acceleration Jerk signal in Y direction
17. `tBodyAccJerkmeanZ` - mean of time domain body acceleration Jerk signal in Z direction
18. `tBodyAccJerkstdX` - standard deviation of time domain body acceleration Jerk signal in X direction
19. `tBodyAccJerkstdY` - standard deviation of time domain body acceleration Jerk signal in Y direction
20. `tBodyAccJerkstdZ` - standard deviation of time domain body acceleration Jerk signal in Z direction
21. `tBodyGyromeanX` - mean of time domain body gyroscope signal in X direction
22. `tBodyGyromeanY` - mean of time domain body gyroscope signal in Y direction
23. `tBodyGyromeanZ` - mean of time domain body gyroscope signal in Z direction
24. `tBodyGyrostdX` - standard deviation of time domain body gyroscope signal in X direction
25. `tBodyGyrostdY` - standard deviation of time domain body gyroscope signal in Y direction
26. `tBodyGyrostdZ` - standard deviation of time domain body gyroscope signal in Z direction
27. `tBodyGyroJerkmeanX` - mean of time domain body gyroscope Jerk signal in X direction
28. `tBodyGyroJerkmeanY` - mean of time domain body gyroscope Jerk signal in Y direction
29. `tBodyGyroJerkmeanZ` - mean of time domain body gyroscope Jerk signal in Z direction
30. `tBodyGyroJerkstdX` - standard deviation of time domain body gyroscope Jerk signal in X direction 
31. `tBodyGyroJerkstdY` - standard deviation of time domain body gyroscope Jerk signal in Y direction
32. `tBodyGyroJerkstdZ` - standard deviation of time domain body gyroscope Jerk signal in Z direction
33. `tBodyAccMagmean` - mean of magnitude of time domain body acceleration signals
34. `tBodyAccMagstd` - standard deviation of magnitude of time domain body acceleration signals
35. `tGravityAccMagmean` - mean of magnitude of time domain gravity acceleration signals
36. `tGravityAccMagstd` - standard deviation of magnitude of time domain gravity acceleration signals
37. `tBodyAccJerkMagmean` - mean of magnitude of time domain body acceleration Jerk signals 
38. `tBodyAccJerkMagstd` - standard deviation of magnitude of time domain body acceleration Jerk signals
39. `tBodyGyroMagmean` - mean of magnitude of time domain body gyroscope signals 
40. `tBodyGyroMagstd` - standard deviation of magnitude of time domain body gyroscope signals
41. `tBodyGyroJerkMagmean` - mean of magnitude of time domain body gyroscope Jerk signals
42. `tBodyGyroJerkMagstd`  - standard deviation of magnitude of time domain body gyroscope Jerk signals
43. `fBodyAccmeanX` - mean of frequency domain body acceleration signal in X direction
44. `fBodyAccmeanY` - mean of frequency domain body acceleration signal in Y direction
45. `fBodyAccmeanZ` - mean of frequency domain body acceleration signal in Z direction
46. `fBodyAccstdX` - standard deviation of frequency domain body acceleration signal in X direction
47. `fBodyAccstdY` - standard deviation of frequency domain body acceleration signal in Y direction
48. `fBodyAccstdZ` - standard deviation of frequency domain body acceleration signal in Z direction
49. `fBodyAccJerkmeanX` - mean of frequency domain body acceleration Jerk signal in X direction
50. `fBodyAccJerkmeanY` - mean of frequency domain body acceleration Jerk signal in Y direction
51. `fBodyAccJerkmeanZ` - mean of frequency domain body acceleration Jerk signal in Z direction
52. `fBodyAccJerkstdX` - standard deviation of frequency domain body acceleration Jerk signal in X direction
53. `fBodyAccJerkstdY` - standard deviation of frequency domain body acceleration Jerk signal in Y direction
54. `fBodyAccJerkstdZ` - standard deviation of frequency domain body acceleration Jerk signal in Z direction
55. `fBodyGyromeanX` - mean of frequency domain body gyroscope signal in X direction
56. `fBodyGyromeanY` - mean of frequency domain body gyroscope signal in Y direction
57. `fBodyGyromeanZ` - mean of frequency domain body gyroscope signal in Z direction
58. `fBodyGyrostdX` - standard deviation of frequency domain body gyroscope signal in X direction
59. `fBodyGyrostdY` - standard deviation of frequency domain body gyroscope signal in Y direction
60. `fBodyGyrostdZ` - standard deviation of frequency domain body gyroscope signal in Z direction
61. `fBodyAccMagmean` - mean of magnitude of frequency domain body acceleration signals
62. `fBodyAccMagstd` - standard deviation of magnitude of frequency domain body acceleration signals
63. `fBodyBodyAccJerkMagmean` - mean of magnitude of frequency domain body acceleration Jerk signals
64. `fBodyBodyAccJerkMagstd` - standard deviation of magnitude of frequency domain body acceleration Jerk signals
65. `fBodyBodyGyroMagmean` - mean of magnitude of frequency domain body gyroscope signals
66. `fBodyBodyGyroMagstd` - standard deviation of magnitude of frequency domain body gyroscope signals
67. `fBodyBodyGyroJerkMagmean` - mean of magnitude of frequency domain body gyroscope Jerk signals
68. `fBodyBodyGyroJerkMagstd` - standard deviation of magnitude of frequency domain body gyroscope Jerk signals
