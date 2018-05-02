theMatrix <- matrix(1:9,nrow=3)
theMatrix

apply(theMatrix, MARGIN=2, sum)

apply(theMatrix, MARGIN=1, sum)
#margin - 1 for row, 2 for column

colSums(theMatrix)
rowSums(theMatrix)

theMatrix[2,1] <- NA
theMatrix

apply(theMatrix,1,sum)
#if one data is NA it cant skip over it.
apply(theMatrix,1,sum,na.rm=TRUE)
rowSums(theMatrix,na.rm=TRUE)

#apply on a matrix can help avoid using a loop
#and speed up the function

theList <- list(A=matrix(1:9,nrow=3), B=1:5, C=matrix(1:4,2),D=2)
theList

lapply(theList,sum)
#sums each element of the list.

sapply(theList,sum)
#attempts to return a vector.

theNames <- c("Jared","Deb","Paul")
lapply(theNames,nchar)

firstList <- list(A=matrix(1:16,4), B=matrix(1:16,2),C=1:5)
secondList <- list(A=matrix(1:16,4), B=matrix(1:16,8),C=15:1)

firstList
secondList

mapply(identical,firstList,secondList)
#first argument is function
simplefunc <- function(x,y)
{
  NROW(x) + NROW(y)
}

mapply(simplefunc,firstList,secondList)

##now the aggregate function!!


require(ggplot2)
data(diamonds)
head(diamonds)
mean(diamonds$price)
aggregate(price ~ cut,diamonds,mean)
aggregate(price ~ cut,diamonds,mean,na.rm=TRUE)

aggregate(price ~ cut + color, diamonds, mean)

aggregate(cbind(price, carat) ~ cut, diamonds, mean)
aggregate(cbind(price, catat) ~ cut + color, diamonds, mean)

#splitting up data into discrete sets.

require(plyr)
head(baseball)
#setting nA values to 0
baseball$sf[baseball$year < 1954] <- 0
any(is.na(baseball$sf))

baseball$hbp[is.na(baseball$hbp)] <- 0
any(is.na(baseball$hbp))

baseball <- baseball[baseball$ab >= 50, ]
#only players with a lot of data.
baseball$OBP <- with(baseball, (h+bb+hbp) / (ab + bb+ hbp+ sf))
#On Base Percentage popular formula
tail(baseball)

obp <- function(data)
{
  #a weighted average
  c(OBP = with(data, sum(h+bb+hbp) / sum(ab+bb+hbp+sf)))
#equal sign for a proper name.
}


careerOBP <- ddply(baseball, .variables = "id"
                   #playerid, by which we are splitting
                   ,obp
                   #the function we are applying
                   )

head(careerOBP)

careerOBP <- careerOBP[order(careerOBP$OBP, decreasing=TRUE), ]


#pliers pair is what youre ought to think of


#ddply most popular
#next most popular is llply
#it goes from list to a list

theList <- list(A=matrix(1:9,3),B=1:5,C=matrix(1:4,2),D=2)
theList
lapply(theList,sum)
llply(theList,sum)
identical(lapply(theList,sum),llply(theList,sum))

sapply(theList,sum)
laply(theList,sum)
#notice laply didnt give back vector names

head(diamonds)
#we want to find both the mean and median
aggregate(price~cut,diamonds,each(mean,median))

colwise
numcolwise(sum,na.rm=TRUE)(diamonds)
#only for numeric columns
sapply(diamonds[,sapply(diamonds,is.numeric)],sum)
#dplier, available on github, a much faster version
#dlply from data frame to a list.
#ldply from list to data frame.


sport <- c("hockey","baseball","football")
league <- c("NHL","MLB","NFL")
trophy <- c("Stanley Cup","Comissioner's Trophy","Vince Lombardi Trophy")

#order does matter

sports1 <- cbind(sport,league,trophy)


sports2 <- data.frame(sport=c("basketball","golf"),
                      league=c("NBA","PGA"),
                      trophy=c("Larry O'Brien Championship Trophy","Wanamaker Trophy"))
sports2

sports <- rbind(sports1,sports2)
sports

codes <- read.table("https://www.jaredlander.com/data/countryCodes.csv", header=TRUE, sep=",", stringsAsFactors=FALSE)
countries <- read.table("https://www.jaredlander.com/data/GovType.csv", header=TRUE,sep=",",stringsAsFactors=FALSE)
head(codes)
head(countries)
View(countries)

#there are multiple ways to do a join in R.

countryMerged <- merge(x=codes, y=countries, by.x="Country.name", by.y="Country")
View(countryMerged)

#join out of the plyer faster

codes <- rename(codes, c(Country.name="Country"))
countryJoined <- join(x=codes, y=countries,by="Country")
View(countryJoined)

require(reshape2)
head(airquality)

#meltfunction
airMelt <- melt(airquality, id=c("Month","Day"), 
                value.name="Value",variable.name="metric")
head(airMelt)
#less useful to human, but moreso to a computer
head(airquality)

airCast <- dcast(airMelt, Month + Day ~ metric, value.var="Value")
head(airCast)
airCast <- airCast[,c("Ozone","Solar.R","Wind","Temp","Month","Day")]
head(airCast)
