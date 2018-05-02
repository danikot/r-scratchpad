#r is dynamically typed
#same object can be all
x<-2
x
class(x)
is.numeric(x)
i<-5L
#L means its an integer
class(i)
#integer
is.numeric(i)
#yes. int is subset of num
4L*2.8
5L/2L

x <- "data"
x
class(x)
y <- factor("data")
y

nchar(x)
#number of characters
nchar("hello")
nchar(3)
nchar(452)
nchar(y)
#nchar doesnt work on factors

date1 <- as.Date("2018-04-13")
class(date1)
as.numeric(date1)
#unix epoch day

date2 <- as.POSIXct("2018-04-28 08:56")

as.numeric(date2)

TRUE
FALSE
#must be allcaps
#check for logical is
is.logical(TRUE)

2==3
2!=3
2 <3

#true an false
"data" == "stats"
"date" < "stats"

#vectors
x <- c(1,2,3,4,5,6,7,8,9,10)
x/4
x^2

sqrt(x)
#being able to deal with each element of a vector at once makes r easier to work with
y <- -3:6

x+y
x*y
x/y
#element by element

length(x)
length(y)
length(x+y)

#if length different there is a warning message and calculation anyways


x <- 10:1
y <- -4:5

x < y

#helper function any tells if any are true

any(x < y)
all(x < y)

q <- c("laa","dido",
       "daram")

nchar(q)

#every variable is a vector

f <- 7
f

#here just the first element present

c(One="a",Two="y",Last="r")
#no arrows, notice
#now its a map

w <- 1:3
w
names(w) <- c("a","b","c")
w

a = c("a","a","c")
factor(a)
#levels returns unique values
#is that a set? a sorted set?

z <- c(1,2,NA,8,3,NA,3)
is.na(zChar)
#missing data is important to statistics
#na isnt null
z <- c()

VectorMap <- c(purple="Tinky Winky",red<-"Po",yellow="laalaa")
VectorMap

x <- 1: 10
x
mean(x)
sum(x)
nchar(x)
#mean(x,TAB list available options
mean(x,na.rm = TRUE,trim = 0.1)
x[c(2,6)]<-NA
x
mean(x,na.rm = FALSE)
#even one NA in a vector returns NA
