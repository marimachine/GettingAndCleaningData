Code Book tidy.txt dataset

This code provides an overview of the variables in the tidy.txt dataset. The variables below are mainly described by its name. For the meaning of Gyroscope, Accelerometer as well as for an overview of the experiment that was the basis for the data collected, please refer to:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The original dataset can be obtained here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The identifiers for this dataset are subjects (n=30), that took part in the experiments as well as the following activities: 

	•	WALKING (value 1): subject was walking during the test
	•	WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
	•	WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
	•	SITTING (value 4): subject was sitting during the test
	•	STANDING (value 5): subject was standing during the test
	•	LAYING (value 6): subject was laying down during the test


The following variables are part of the tidy.txt dataset. 
Variables
	•	 [1] “activity_label" 						- The activity performed during test (identifier)                                                
	•	 [2] "subject_id"  							- The id of the test person                                                  
	•	 [3] "timeDomainBodyAccelerometerMeanX" 		- measurement as well as below variables (self explanatory)                                
	•	 [4] "timeDomainBodyGyroscopeMeanX"                                  
	•	 [5] "timeDomainBodyGyroscopeMeanY"                                  
	•	 [6] "timeDomainBodyGyroscopeMeanZ"                                  
	•	 [7] "timeDomainBodyGyroscopeStandardDeviationX"                     
	•	 [8] "timeDomainBodyGyroscopeStandardDeviationY"                     
	•	 [9] "timeDomainBodyGyroscopeStandardDeviationZ"                     
	•	[10] "timeDomainBodyGyroscopeJerkMeanX"                              
	•	[11] "timeDomainBodyGyroscopeJerkMeanY"                              
	•	[12] "timeDomainBodyGyroscopeJerkMeanZ"                              
	•	[13] "timeDomainBodyGyroscopeJerkStandardDeviationX"                 
	•	[14] "timeDomainBodyGyroscopeJerkStandardDeviationY"                 
	•	[15] "timeDomainBodyGyroscopeJerkStandardDeviationZ"                 
	•	[16] "timeDomainBodyAccelerometerMeanY"                              
	•	[17] "timeDomainBodyAccelerometerMagnitudeMean"                      
	•	[18] "timeDomainBodyAccelerometerMagnitudeStandardDeviation"         
	•	[19] "timeDomainGravityAccelerometerMagnitudeMean"                   
	•	[20] "timeDomainGravityAccelerometerMagnitudeStandardDeviation"      
	•	[21] "timeDomainBodyAccelerometerJerkMagnitudeMean"                  
	•	[22] "timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation"     
	•	[23] "timeDomainBodyGyroscopeMagnitudeMean"                          
	•	[24] "timeDomainBodyGyroscopeMagnitudeStandardDeviation"             
	•	[25] "timeDomainBodyGyroscopeJerkMagnitudeMean"                      
	•	[26] "timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation"         
	•	[27] "frequencyDomainBodyAccelerometerMeanX"                         
	•	[28] "frequencyDomainBodyAccelerometerMeanY"                         
	•	[29] "frequencyDomainBodyAccelerometerMeanZ"                         
	•	[30] "frequencyDomainBodyAccelerometerStandardDeviationX"            
	•	[31] "frequencyDomainBodyAccelerometerStandardDeviationY"            
	•	[32] "frequencyDomainBodyAccelerometerStandardDeviationZ"            
	•	[33] "frequencyDomainBodyAccelerometerMeanFrequencyX"                
	•	[34] "frequencyDomainBodyAccelerometerMeanFrequencyY"                
	•	[35] "frequencyDomainBodyAccelerometerMeanFrequencyZ"                
	•	[36] "timeDomainBodyAccelerometerMeanZ"                              
	•	[37] "frequencyDomainBodyAccelerometerJerkMeanX"                     
	•	[38] "frequencyDomainBodyAccelerometerJerkMeanY"                     
	•	[39] "frequencyDomainBodyAccelerometerJerkMeanZ"                     
	•	[40] "frequencyDomainBodyAccelerometerJerkStandardDeviationX"        
	•	[41] "frequencyDomainBodyAccelerometerJerkStandardDeviationY"        
	•	[42] "frequencyDomainBodyAccelerometerJerkStandardDeviationZ"        
	•	[43] "frequencyDomainBodyAccelerometerJerkMeanFrequencyX"            
	•	[44] "frequencyDomainBodyAccelerometerJerkMeanFrequencyY"            
	•	[45] "frequencyDomainBodyAccelerometerJerkMeanFrequencyZ"            
	•	[46] "timeDomainBodyAccelerometerStandardDeviationX"                 
	•	[47] "timeDomainGravityAccelerometerMeanX"                           
	•	[48] "timeDomainGravityAccelerometerMeanY"                           
	•	[49] "frequencyDomainBodyGyroscopeMeanX"                             
	•	[50] "frequencyDomainBodyGyroscopeMeanY"                             
	•	[51] "frequencyDomainBodyGyroscopeMeanZ"                             
	•	[52] "frequencyDomainBodyGyroscopeStandardDeviationX"                
	•	[53] "frequencyDomainBodyGyroscopeStandardDeviationY"                
	•	[54] "frequencyDomainBodyGyroscopeStandardDeviationZ"                
	•	[55] "timeDomainGravityAccelerometerMeanZ"                           
	•	[56] "timeDomainGravityAccelerometerStandardDeviationX"              
	•	[57] "timeDomainGravityAccelerometerStandardDeviationY"              
	•	[58] "frequencyDomainBodyGyroscopeMeanFrequencyX"                    
	•	[59] "frequencyDomainBodyGyroscopeMeanFrequencyY"                    
	•	[60] "frequencyDomainBodyGyroscopeMeanFrequencyZ"                    
	•	[61] "timeDomainGravityAccelerometerStandardDeviationZ"              
	•	[62] "timeDomainBodyAccelerometerStandardDeviationY"                 
	•	[63] "frequencyDomainBodyAccelerometerMagnitudeMean"                 
	•	[64] "frequencyDomainBodyAccelerometerMagnitudeStandardDeviation"    
	•	[65] "frequencyDomainBodyAccelerometerMagnitudeMeanFrequency"        
	•	[66] "frequencyDomainBodyAccelerometerJerkMagnitudeMean"             
	•	[67] "frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation"
	•	[68] "frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency"    
	•	[69] "frequencyDomainBodyGyroscopeMagnitudeMean"                     
	•	[70] "frequencyDomainBodyGyroscopeMagnitudeStandardDeviation"        
	•	[71] "frequencyDomainBodyGyroscopeMagnitudeMeanFrequency"            
	•	[72] "frequencyDomainBodyGyroscopeJerkMagnitudeMean"                 
	•	[73] "frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation"    
	•	[74] "frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency"        
	•	[75] "timeDomainBodyAccelerometerStandardDeviationZ"                 
	•	[76] "timeDomainBodyAccelerometerJerkMeanX"                          
	•	[77] "timeDomainBodyAccelerometerJerkMeanY"                          
	•	[78] "timeDomainBodyAccelerometerJerkMeanZ"                          
	•	[79] "timeDomainBodyAccelerometerJerkStandardDeviationX"             
	•	[80] "timeDomainBodyAccelerometerJerkStandardDeviationY"             
	•	[81] "timeDomainBodyAccelerometerJerkStandardDeviationZ"             

