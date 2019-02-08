# DECRIPTION: Acer / Sony Brand Preference 
# NAME: Else Frijling
# SCRIPT FUNCTION: Libraries, dataframe and engineering
# VERSION: 2

# Set working directory
setwd("/Users/else/Google Drive/BSSA - data analytics/Module 2/Task 2 - classification brand preference")

#install packages and libraries
library(caret)
library(readr)
library(C50)
library(ggplot2)

#import dataset CompleteRespones.csv
CompleteResponses <- read_csv("data/CompleteResponses.csv")

#preprocess brand into factor
CompleteResponses$brand <- as.factor(CompleteResponses$brand)

#preprocess car and zipcode into integers or factors
CompleteResponses$car <- as.integer(CompleteResponses$car)
CompleteResponses$zipcode <- as.integer(CompleteResponses$zipcode)

#change attribute elevel into ordinal data
CompleteResponses$elevel <- as.ordered(CompleteResponses$elevel)

