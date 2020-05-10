#Q1
hist(airquality$Temp,main= "Maximum daily temperature at La Guardia Airport",
     xlab= "Temprature in degrees Fahrenheit",xlim = c(50,100), col = blues9)
View(airquality$Temp)

#Q2
TempConversion <- function(TempInFehr)
{
  TempInCel<- (TempInFehr-32)*5/9
  return (TempInCel)
}
ConvertedTemp <- TempConversion(airquality$Temp)
hist(ConvertedTemp,main= "Maximum daily temperature at La Guardia Airport",
     xlab= "Temprature in degrees Celsuis", col = "#99D8C9")
View(ConvertedTemp)

#Q3
plot(airquality[-c(2,4,5,6)], xlab="ozone Concentration", ylab="No of Instances",
     main= "Ozone levels in NY city", col="Purple")

#Q4 
boxplot(airquality$Ozone, main="zone in parts per billion",
        xlab="Parts Per Billion", ylab = "Ozone", col="#990099", outcol="red")


#Q5
x<-table(airquality$Ozone)
barplot(x, col = "red", main="Representing Ozone")


#Q6
plot(density(airquality$Month), main = "Month")

plot(density(airquality$Day),main = "Day")


#Q7 question 
dotchart(airquality$Wind, groups=airquality$Month, xlab = "Wind speed per month",
         color = "blue")


#Q8
temp<-airquality$Temp
slices <- c(mean(temp), median(temp), min(temp), max(temp))
#percentage<- slices/sum(slices)*100
mylabels<- c("Mean", "Median", "Min", "Max")
mylabels<- paste(mylabels,slices)
#mylabels<- paste(mylabels,"%")
pie(slices,labels=mylabels,col=rainbow(length(mylabels)),main = "Pie Chart")


#Q9 pairwise
pairs(airquality[1:4])


# Q9 part 2
pairs(airquality[,1:4], pch = 19,  cex = 0.5,
      col= rainbow(airquality$Month))
par(xpd=TRUE)
col= rainbow(airquality$Month)
legend(x=0, y=1.04, horiz = TRUE, pch=5, cex=0.8, 
       as.vector(unique(airquality$Month)), fill = col)



#Q10 ######################
par(mfrow= c(3,3))
#Q1
hist(airquality$Temp,main= "Maximum daily temperature at La Guardia Airport",
     xlab= "Temprature in degrees Fahrenheit",xlim = c(50,100), col = blues9)
#Q2
TempConversion <- function(TempInFehr)
{
  TempInCel<- (TempInFehr-32)*5/9
  return (TempInCel)
}
ConvertedTemp <- TempConversion(airquality$Temp)
hist(ConvertedTemp,main= "Maximum daily temperature at La Guardia Airport",
     xlab= "Temprature in degrees Celsuis", col = "#99D8C9")

#Q3
plot(airquality[-c(2,4,5,6)], xlab="ozone Concentration", ylab="No of Instances",
     main= "Ozone levels in NY city", col="Purple")

#Q4 
boxplot(airquality$Ozone, main="zone in parts per billion",
        xlab="Parts Per Billion", ylab = "Ozone", col="#990099", outcol="red")

#Q5
x<-table(airquality$Ozone)
barplot(x, col = "red", main="Representing Ozone")

#Q6
plot(density(airquality$Month), main = "Month")

plot(density(airquality$Day),main = "Day")


#Q7 question 
dotchart(airquality$Wind, groups=airquality$Month, xlab = "Wind speed per month",
         color = "blue")

#Q8
temp<-airquality$Temp
slices <- c(mean(temp), median(temp), min(temp), max(temp))
mylabels<- c("Mean", "Median", "Min", "Max")
mylabels<- paste(mylabels,slices)
pie(slices,labels=mylabels,col=rainbow(length(mylabels)),main = "Pie Chart")