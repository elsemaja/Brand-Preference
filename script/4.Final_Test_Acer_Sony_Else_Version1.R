# DECRIPTION: Acer / Sony Brand Preference
# NAME: Else Frijling
# SCRIPT FUNCTION: Test RF on testset
# VERSION: 2

#make sure the same set.seed is used as in the training script
set.seed(123)

#Make prediction with this model on test data
predictiontest <- predict(rfFit, newdata = testing)

#creates a new column with predicted data
testing$Prediction <- predictiontest

#Calculate Performance Across Resamples
#resample had less accuracy than Ground Truth (= metrics on training)
postResample(predictiontest, testing$brand)

#make a confusion matrix between the column with predicted values
#and actual values from that dataset:
confusionMatrix(testing$Prediction, testing$brand)

# transform to integer and check results
testing$brand <- as.integer(testing$brand)
testing$Prediction <- as.integer(testing$Prediction)
testing$errors <- testing$brand - testing$Prediction


#make scatterpot to look at the errors of prediction on test data
ggplot(testing) + geom_point(aes(x = age, 
                                 y = salary, 
                                 color = (errors != 0)))


#see variable importance
varImp(rfFit)


#plot importance of variables
rfmtry4 <- randomForest(brand~., 
                        data = training,
                        mtry=4,
                        importance=TRUE,
                        proximity=TRUE)

varImpPlot(rfmtry4,
           main = "Random Forest mtry=4")
