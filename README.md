gettingcleaningdata
===================

**"Getting and Cleaning Data" Course Project**
========================================================

## Data Source
data description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
data url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Original Data Description

Data Set Characteristics:  Multivariate, Time-Series

Number of Instances: 10299

Area: Computer

Attribute Characteristics: N/A

Number of Attributes: 561

Date Donated: 2012-12-10

Associated Tasks: Classification, Clustering

Missing Values?: N/A

Number of Web Hits: 95106

### Source:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

Smartlab - Non Linear Complex Systems Laboratory

DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy.

activityrecognition '@' smartlab.ws

www.smartlab.ws 


Process for running "run_analysis.R" script:
--------------------------------------------------------

1. Unzip the dataset to the R working directory. Unzipping the dataset create a directory named "UCI HAR Dataset" into the working directory. 
2. Install the following packages: "reshape2" and "plyr".
3. From the R environment and with the target directory present in the working directory, execute the command: source("run_analysis.R")
4. Output of the execution of code is generation of the tab-delimited text file "tidydata.txt" in the working directory. 

Additional information about the "run_analysis.R" script:
----------------------------------------------------------
### Variables in the script 
* activity - read and store info from file "activity_labels.txt". 
* testactivity and trainactivity - read and store info about activity codes from files in each train and test groups, namely "Y-train.txt" and "Y-test.txt"
respectively. 
* test and train - read and store info about the measurements that were collected for test and train groups.
* features - read and store info about the feature names which are labeled V1 through V561 in the test and train data files. Features are used to decode the measurement names.


### Tidy dataset
* The generated tidydata set is stored in a tab-delimited text file "tidydata.txt" in the working directory. 
* The file tidydata.txt has 180 rows (30 subjects * 6 activities).
* The file tidydata.txt has 68 columns. Column 1 is "subject", column 2 is "activity" and the remaining 66 columns are the selected variables (mean and std).