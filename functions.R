#loops should be avoided.
say.hello <- function(first,second)
{
  print(sprintf("Hello, %s %s", first, second))
}
say.hello
#prints the entire function.
say.hello()
#does what it must.

sprintf("hello %s, today is %s","Jared","Sunday")

say.hello("Tom","Jerry")
say.hello(second="Tom",first="Jerry")
say.hello(second="Tom","Jerry")
#r can figure it out because there are only two

hello.person <- function(first,last="Doe")
{
  print(sprintf("hello %s %s", first, last))
}

hello.person("Tom")

hello.person("Jerry","Tom")

hello.person("Jerry","Tom","Butch")
#error as there are only two
hello.person("Jerry",ogre="Tom")
#error as there is no ogre

hello.person <- function(first,last,...)
{
  print(sprintf("hello %s %s", first, last))
  
    #additional arguments will be ignored
}

 double.num <- function(x)
 {
   x*2
 }
 #last line also return, if no return statement
 double.num(5)
 
 double.num <- function(x)
 {
   return(x*2)
 }
 #same
 do.call("hello.person", args=list(first="Tom", second="Jerry"))
 #calls a function.
  
 run.this <- function(x,func=mean)
 {
   do.call(func, args=list(x))
 }
 
 run.this(1:10)
 #same as run(1:10, mean)
 run.this(1:10,mean)
 run.this(1:10,sum)
 run.this(1:10,sd)
 