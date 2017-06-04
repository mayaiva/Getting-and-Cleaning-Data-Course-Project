---
title: "Getting and Cleaning Data"
author: "Maya Ivanova"
date: "June 2, 2017"
output: md_document
---



## R Markdown

### Overview

This project serves to demonstrate the collection and cleaning of a tidy data set that can be used for subsequent analysis. A full description of the data used in this project 
can be found at The UCI Machine Learning Repository


#### Project Summary

The following is a summary description of the project instructions

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive activity names.
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#### Data 

The tidy_data.txt data file is a text file, containing space-separated values.

The first row contains the names of the variables, which are listed and described in the Variables section, and the following rows contain the values of these variables.

#### Variables

Each row contains, for a given subject and activity, averaged signal measurements.

Identifiers

subject

Subject identifier, integer, ranges from 1 to 30.

activity

Activity identifier, string with 6 possible values:

WALKING: subject was walking<br>
WALKING_UPSTAIRS: subject was walking upstairs<br>
WALKING_DOWNSTAIRS: subject was walking downstairs<br>
SITTING: subject was sitting<br>
STANDING: subject was standing<br>
LAYING: subject was laying



