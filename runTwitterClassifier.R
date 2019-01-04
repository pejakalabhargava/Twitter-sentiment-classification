# Set the working directory to the directory that contains the submission files
setwd("/Users/bkakran/Twitter-sentiment-classification-using-R")

# Source the below files
source("setUp.R")
source("twitterUtility.R")
source("preProcess.R")
source("model.R")
source("twitterSentimentalClassifier.R")

#---------------------------------------------------------------------------------------
#Install and load required Libraries
install.requiredPackages()
load.requiredLibraries()
#---------------------------------------------------------------------------------------

# Enter your consumer key and secret
consumer_api_key = "YOUR  API KEY"
consumer_api_secret = "YOUR  API SECRET"
access_token = "YOUR ACESS TOKEN"
access_token_secret = "YOUR ACCESS TOKEN SECRET"

# Call the below function with the above parameters, as shown
classifyTweets(numberOfTweetsForTest=200,NumberOfTweetsForTrain=1000,numberOfIterations = 5,splitConfidence="0.7",
               consumer_api_key,consumer_api_secret,access_token,access_token_secret)