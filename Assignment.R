
#first load the data
theFile <- "c:\\MachineLearn\\pml-training.csv"
load(theFile)

#load our required libraries
library(caret)
library(ggplot2)
library(lattice)
#library(kernlab)
#library(randomForest)


#seet seed so reproducible
set.seed(271828)


#first load the data
mydata = read.csv("c:\\MachineLearn\\pml-training.csv")  # read csv file 
head(mydata)


#partition the data
trainSet <- createDataPartition(mydata$classe, p = 0.75, list = FALSE)
train <- train[trainset, ]
test <- train[-trainset, ]

