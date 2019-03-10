dataset <- read.csv("Satisfaction Survey.csv")
cleanedDataset <- dataset
View(cleanedDataset)
summary(cleanedDataset)
str(cleanedDataset)
which(is.na(dataset$Departure.Delay.in.Minutes))
#The Case of replacing with Highest number
cleanedDataset$Departure.Delay.in.Minutes <- ifelse(is.na(cleanedDataset$Departure.Delay.in.Minutes) & cleanedDataset$Flight.cancelled == "Yes", 9999, cleanedDataset$Departure.Delay.in.Minutes)
cleanedDataset$Arrival.Delay.in.Minutes <- ifelse(is.na(cleanedDataset$Arrival.Delay.in.Minutes) & cleanedDataset$Flight.cancelled == "Yes", 9999, cleanedDataset$Arrival.Delay.in.Minutes)
cleanedDataset$Flight.time.in.minutes <- ifelse(is.na(cleanedDataset$Flight.time.in.minutes) & cleanedDataset$Flight.cancelled == "Yes", 9999, cleanedDataset$Flight.time.in.minutes)
cleanedDataset <- na.omit(cleanedDataset)
summary(cleanedDataset)
str(cleanedDataset)
View(cleanedDataset)
which(is.na(cleanedDataset$Departure.Delay.in.Minutes))

happyCust <- clea[hotelSurvey$overallCustSat>7,]
View(happyCust)

#Find significant Columns
linearModel1 <- lm(formula = as.numeric(Satisfaction) ~ . , data = cleanedDataset)
summary(linearModel1)
linearModel1cleanedDataset$Satisfaction <- as.numeric(cleanedDataset$Satisfaction)


myfamilyN <- c("D","f","g")
myfamilyA <- c(2,3,5)
myfamily<-data.frame(myfamilyA,myfamilyN)
myfamily
myfamily$myfamilyN <- c(myfamilyN,"s")
myfamily$myfamilyA <- c(myfamilyA,"s")
myfamily
