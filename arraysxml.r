#an array can take an arbitrary amount of dimensions.

theArray <- array(1:12,dim=c(2,3,2))
theArray
theArray[1,,]
theArray[,1,]
theArray[1,,1]
theArray[,,1]

tomato <- read.table(file="http://www.jaredlander.com/data/Tomato%20First.csv", header=TRUE, sep=",")
head(tomato)
class(tomato$Tomato)
tomato <- read.table(file="http://www.jaredlander.com/data/Tomato%20First.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)

#read.csv2 just better.
save(tomato, file="tomato.rdata")

#special bin file
rm(tomato)
load("tomato.rdata")

n <- 20
r <- 1:10
w <- data.frame(n.r)
w
save(n,r,w,file="multiple.rdata")
rm(n,r,w)
n
r
w
load("multiple.rdata")

