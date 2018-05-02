require(ggplot2)
data(diamonds)
head(diamonds)

data("tips",package="reshape2")
head(tips)

data()
#what data is available in what packages

hist(diamonds$carat)
hist(diamonds$carat, main="Carat Histogram", xlab = "Carat")
#xlab ist Abzissenbezeichnung.


plot(diamonds$carat, diamonds$price)
#second ist ordinate.
plot(price ~ carat, data = diamonds)
#plot looks identical

plot(price ~ carat, data = diamonds, main="price vs carats")

boxplot(diamonds$carat)
#box black line shows median 50% of the data
#whiskers on 1.5 interquartile range
#dots are outliers beyond 1.5 interquartile range
#the other 50% of the data are missed out

#facilitates beautiful creation of graphics.
ggplot(data=diamonds) + geom_histogram(aes(x=carat))
#stat_bin() using bins=xx is size of bars
#main argument is the data
#geom_point
#geom_histogram
#geom_line
#aes(x,y)
#a ggplot(data) graphic is created layer by layer

#layers are separated by + signs

ggplot(data=diamonds) + geom_histogram(aes(x=carat), binwidth=.5)

ggplot(data=diamonds) + geom_histogram(aes(x=carat), binwidth=.1)

#binwidth important in a histogram.

ggplot(data = diamonds) + geom_density(aes(x=carat))

ggplot(data = diamonds) + geom_density(aes(x=carat),fill="grey50")

ggplot(diamonds, aes(x=carat, y=price)) + geom_point()

g <- ggplot(diamonds, aes(x=carat, y=price))
g

g + geom_point()
#why don't we color code the plot?
g + geom_point(aes(color=color))
#a fantastic way to visualize a graph.
g + geom_point(aes(color=color, shape=clarity))
#only six shapes
g + geom_point(aes(color=color, shape=cut))
#mapping aesthetics are a very powerful tool.

ggplot(diamonds, aes(y=carat,x=1)) + geom_boxplot()
ggplot(diamonds, aes(y=carat,x=cut)) + geom_boxplot()
ggplot(diamonds, aes(y=carat,x=cut)) + geom_violin()
#similar idea to boxplot but now with contours.
g <- ggplot(diamonds, aes(y=carat, x=cut))
#so we dont have to type it repeatedly
g+geom_point() +geom_violin()
g+geom_violin()+geom_point()
g+geom_jitter()+geom_violin()
#using this to your advantage can allow you to make some really amazing looking graphics.

head(economics)
#lets look at pop over time
ggplot(economics, aes(x=date, y=pop))+geom_line()
#it shows a trend over time.

install.packages("lubridate")
require(lubridate)
#we can add month and year var
economics$year <- year(economics$date)
economics$month <- month(economics$date)

head(economics)

econ2000 <- economics[which(economics$year >= 2000), ]
#second argument is blank because we want to keep all the columns
nrow(economics)
#number of rows
nrow(econ2000)

head(econ2000)

econ2000$month<- month(econ2000$date,label=TRUE)
head(econ2000)

require(scales)
g <- ggplot(econ2000,aes(x=month,y=pop))
g <- g + geom_line(aes(color=factor(year), group=year))
g
g <- g + scale_color_discrete(name="Year")
g <- g + scale_y_continuous(labels=comma)
g <- g + labs(title="Population Growth", x="Month", y="Population")
g
#that doesnt work at all
g <- g + theme(axis.text.x=element_text(angle=90,hjust=1))
g

g <- ggplot(diamonds, aes(x=carat, y=price))

g+geom_point(aes(color=color)) + facet_wrap(~color)

g+geom_point(aes(color=color)) + facet_grid(cut~clarity)
#fascinating it took only one line of code in ggplot

ggplot(diamonds,aes(x=carat))+geom_histogram() + facet_wrap(~color)

ggplot(diamonds, aes(x=carat,y=price,color=color,shape=cut,siz=depth)) + geom_point()


install.packages("ggthemes")
require(ggthemes)
g<-ggplot(diamonds, aes(x=carat, y=price, color=color)) + geom_point()
g
g+theme_wsj()
#wall street journal
g+theme_economist()
g+theme_economist() + scale_colour_economist()
g+theme_tufte()
g+theme_excel() + scale_colour_excel()
#select from many different themes
#or make one of your own.