1==1
1<1
1<=1
1>1
1>= 1
toCheck <- 1
if(toCheck==1)
{
  print("Hello")
}

check.bool <- function(x)
{
  if(x==1)
  {
    print("Hello")
  } else if(x==0)
  {
    print("Goodbye")
  } else
  { print("confused")}
  
}

check.bool(1)
check.bool("k")
check.bool(TRUE)
check.bool(0)


use.switch <- function(x)
{
  switch(x,
         "a"="first",
         "b"="second",
         "z"="last",
         "c"="third",
         "other")
}
use.switch("d")
use.switch(1)
use.switch(2)
use.switch(3)
#allows you to use the positional settings


#& and
#| or
#&& and, cancel if first untrue.
#|| or, cancel if first true. 

for(i in 1:10)
{print(i)}

print(1:10)

fruit <- c("apple","banana","pomegranate")
fruitLength <- rep(NA,length(fruit))
fruitLength
names(fruitLength) <- fruit
fruitLength

for (a in fruit)
{
  fruitLength[a] <- nchar(a)
}
fruitLength
a

fruitLength2 <- nchar(fruit)

fruitLength2

names(fruitLength2) <- fruit
fruitLength2

identical(fruitLength, fruitLength2)

