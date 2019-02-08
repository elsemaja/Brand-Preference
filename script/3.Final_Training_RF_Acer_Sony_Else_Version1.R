# DECRIPTION: Acer / Sony Brand Preference
# NAME: Else Frijling
# SCRIPT FUNCTION: Training RF 
# VERSION: 2

#Partitioning Data 
set.seed(123)
inTrain <- createDataPartition(y = CompleteResponses$brand,
                               p = .75,
                               list = FALSE)

#Set training and testing set
training <- CompleteResponses[ inTrain,]
testing <- CompleteResponses[-inTrain,]
nrow(training)
nrow(testing)

#set control parameters, in this case cross validation
#default search = "random" 
#change it to "grid" if searching with Manual Grid?

FitControl <- trainControl(method = "repeatedcv",
                           number = 10,
                           repeats = 1,
                           preProc = c("center", "scale"),
                           verboseIter = TRUE)
#tune mtry parameter
parameterGrid <- expand.grid(mtry=c(1:7))

#set the training parameters of the model
rfFit <- train(brand~.,
               data = training,
               method = "rf",
               metric = "Accuracy",
               tuneGrid = parameterGrid,
               trControl = FitControl)
rfFit
