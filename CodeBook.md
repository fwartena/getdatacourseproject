Code Book
=========

This Code Book consists of a description of the variable names and observations in the final tidy data set.  

The original raw data is from the experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  

This work was carried out by and presented at:  

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

More information about the data set can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Variables and observations in the tidy data set
-----------------------------------------------

Each row is an observation, there are 180 rows each with a subject (1-30) and activity (1-6) combination. The activities are:  
 -  Walking  
 -  WalkingUpstairs  
 -  WalkingDownstairs  
 -  Sitting  
 -  Standing  
 -  Laying  
 
For each of these subject-activity combinations the average was calculated for each feature based on all the samples that were available for each combination. Each feature was already normalized in the raw data set to be between -1 and 1. Which means that after taking the average every feature still is in the range -1 to 1. Because of the normalization to the range -1 to 1 these features do not have specific units.  

The tidy data set contains the following 68 columns:  

1. TimeDomainBodyAccelerationMeanX                              
2. TimeDomainBodyAccelerationMeanY                              
3. TimeDomainBodyAccelerationMeanZ                              
4. TimeDomainBodyAccelerationStandardDeviationX                 
5. TimeDomainBodyAccelerationStandardDeviationY                 
6. TimeDomainBodyAccelerationStandardDeviationZ                 
7. TimeDomainGravityAccelerationMeanX                           
8. TimeDomainGravityAccelerationMeanY                           
9. TimeDomainGravityAccelerationMeanZ                           
10. TimeDomainGravityAccelerationStandardDeviationX              
11. TimeDomainGravityAccelerationStandardDeviationY              
12. TimeDomainGravityAccelerationStandardDeviationZ              
13. TimeDomainBodyAccelerationJerkMeanX                          
14. TimeDomainBodyAccelerationJerkMeanY                          
15. TimeDomainBodyAccelerationJerkMeanZ                          
16. TimeDomainBodyAccelerationJerkStandardDeviationX             
17. TimeDomainBodyAccelerationJerkStandardDeviationY             
18. TimeDomainBodyAccelerationJerkStandardDeviationZ             
19. TimeDomainBodyGyroMeanX                                      
20. TimeDomainBodyGyroMeanY                                      
21. TimeDomainBodyGyroMeanZ                                      
22. TimeDomainBodyGyroStandardDeviationX                         
23. TimeDomainBodyGyroStandardDeviationY                         
24. TimeDomainBodyGyroStandardDeviationZ                         
25. TimeDomainBodyGyroJerkMeanX                                  
26. TimeDomainBodyGyroJerkMeanY                                  
27. TimeDomainBodyGyroJerkMeanZ                                  
28. TimeDomainBodyGyroJerkStandardDeviationX                     
29. TimeDomainBodyGyroJerkStandardDeviationY                     
30. TimeDomainBodyGyroJerkStandardDeviationZ                     
31. TimeDomainBodyAccelerationMagnitudeMean                      
32. TimeDomainBodyAccelerationMagnitudeStandardDeviation         
33. TimeDomainGravityAccelerationMagnitudeMean                   
34. TimeDomainGravityAccelerationMagnitudeStandardDeviation      
35. TimeDomainBodyAccelerationJerkMagnitudeMean                  
36. TimeDomainBodyAccelerationJerkMagnitudeStandardDeviation     
37. TimeDomainBodyGyroMagnitudeMean                              
38. TimeDomainBodyGyroMagnitudeStandardDeviation                 
39. TimeDomainBodyGyroJerkMagnitudeMean                          
40. TimeDomainBodyGyroJerkMagnitudeStandardDeviation             
41. FrequencyDomainBodyAccelerationMeanX                         
42. FrequencyDomainBodyAccelerationMeanY                         
43. FrequencyDomainBodyAccelerationMeanZ                         
44. FrequencyDomainBodyAccelerationStandardDeviationX            
45. FrequencyDomainBodyAccelerationStandardDeviationY            
46. FrequencyDomainBodyAccelerationStandardDeviationZ            
47. FrequencyDomainBodyAccelerationJerkMeanX                     
48. FrequencyDomainBodyAccelerationJerkMeanY                     
49. FrequencyDomainBodyAccelerationJerkMeanZ                     
50. FrequencyDomainBodyAccelerationJerkStandardDeviationX        
51. FrequencyDomainBodyAccelerationJerkStandardDeviationY        
52. FrequencyDomainBodyAccelerationJerkStandardDeviationZ        
53. FrequencyDomainBodyGyroMeanX                                 
54. FrequencyDomainBodyGyroMeanY                                 
55. FrequencyDomainBodyGyroMeanZ                                 
56. FrequencyDomainBodyGyroStandardDeviationX                    
57. FrequencyDomainBodyGyroStandardDeviationY                    
58. FrequencyDomainBodyGyroStandardDeviationZ                    
59. FrequencyDomainBodyAccelerationMagnitudeMean                 
60. FrequencyDomainBodyAccelerationMagnitudeStandardDeviation    
61. FrequencyDomainBodyAccelerationJerkMagnitudeMean             
62. FrequencyDomainBodyAccelerationJerkMagnitudeStandardDeviation
63. FrequencyDomainBodyGyroMagnitudeMean                         
64. FrequencyDomainBodyGyroMagnitudeStandardDeviation            
65. FrequencyDomainBodyGyroJerkMagnitudeMean                     
66. FrequencyDomainBodyGyroJerkMagnitudeStandardDeviation
67. Subject
68. Activity

More details about the features can be found in the file "/UCI HAR Dataset/features_info.txt" in the raw data set.  
