# DECRIPTION: Acer / Sony Brand Preference
# NAME: Else Frijling
# SCRIPT FUNCTION: Make predictions on incomplete survey set
# VERSION: 2

#import dataset SurveyIncomplete
SurveyIncomplete <- read_csv("SurveyIncomplete.csv")

#change attributes into same kind of value as CompleteRespone data:
#import dataset CompleteRespones
#preprocess brand into factor
SurveyIncomplete$brand <- as.factor(SurveyIncomplete$brand)

#preprocess car and zipcode into integers
SurveyIncomplete$car <- as.integer(SurveyIncomplete$car)
SurveyIncomplete$zipcode <- as.integer(SurveyIncomplete$zipcode)

#change attribute elevel into ordinal data
SurveyIncomplete$elevel <- as.ordered(SurveyIncomplete$elevel)

#make predictions with model
predict(rfFit, newdata = SurveyIncomplete)

#make a new column with predicted values
SurveyIncomplete$PredictedBrand <- predict(rfFit, newdata = SurveyIncomplete)

#if necessary replace brand column with predicted brand colum
SurveyIncomplete$brand <- SurveyIncomplete$PredictedBrand  

#remove Predicted Brand column
SurveyIncomplete$PredictedBrand <- NULL

#merge CompleteResponses and SurveyIncomplete by row
MergedData <- rbind(CompleteResponses,SurveyIncomplete)
                         
#write csv file so we can make 1 merged file
write.csv(MergedData, "Merged_CompleteResponses_and_Pre.csv")
