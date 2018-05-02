x <- 10:1
y <- -4:5
q <- c("sword","club","spear","falcion","bow","crossbow","composite bow","musket","axe","bastard sword")
theDF <- data.frame(x,y,q)
theDF
theDF = data.frame(First=x,Second=y,Weapon=q)
theDF


vectorMap <- c(purple="Tinky Winky",red <- 'poe', yellow="laa laa")
vectorMap <- c(purple="Tinky Winky",pink=red <- 'poe', yellow="laa laa")

class(theDF$Weapon)
#data frames automatically convert char
#data into factors.
rownames(theDF)<-c("One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten")
theDF
rownames(theDF)
rownames(theDF)<-NULL
rownames(theDF)
theDF

head(theDF,n = 8)
tail(theDF,n = 8)
class(theDF)
theDF$Weapon
theDF[3,2]
#third row, second column
theDF[3:1,2:3]

theDF[c(2,6),3:1]

#to just get the columns
theDF[,2:3]
theDF[,3]

class(theDF[, 3])

class(theDF[,3,drop=FALSE])
#drop=FALSE means do not turn into a vector

theDF[2,]

#doesnt drop into a vector due to difference in type
#vector must be of the same type

#dictionary specification by key
theDF[,c("First","Weapon")]

list1 <- list(1,2,3)
list1
list2 <- list(c(1,2,3))
#first element holds a three element vector
list3 <- list(c(1,2,3),3:7)
list3

theDF <- data.frame(First=1:5,
                    Second=5:1,
                    Sport=c("Hockey","Lacrosse","Tennis","Curling","Football"),
                    stringsAsFactors=FALSE)
theDF

list4 <- list(theDF,1:10)
list4

#lists can be recursive

list5 <- list(theDF,1:10,list3)

names(list5)
names(list5) <- c("data.frame","vector","list")
list5

list6<- list(theDataFrame=theDF,theVector=1:10,TheList=list3)
list6
names(list6)

emptylist<-vector(mode="list",length = 4)
emptylist
emptylist[[1]]

list5[["data.frame"]]
list5[[1]]$Sport

length(list5)
NROW(list5)

list5
list[[4]] <- 2
list5
#a name which doesnt exist yet
list5[["NewElement"]]<-3:6
length(list5)
names(list5)
list5