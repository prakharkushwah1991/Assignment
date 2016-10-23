#ASSIGNMENT 1 15/10/2016
#1.	Write a function that takes three arguments - the first two should be numbers and the third should be a string.
#a.	If the string "add", output should be addition of two numbers
my.function<-function(a,b,name)
{
  if(name=='pk')
  {
    c=sum(a,b)
    return(c)
  }
}
out<-my.function(3,4,'pk')
print(out)

#b.	If the string is "subtract", output should be subtraction of two numbers
my1.function<-function(a,b,name)
{
  if(name=='pk')
  {
    d=a-b
    return(d)
  }
}
out1<-my1.function(20,10,'pk')
print(out1)

#c.	If the string is "divide", output should be division of two numbers
my2.function<-function(a,b,name)
{
  if(name=='R IS FUN')
  {
    e=a/b
    return(e)
  }
}
out2<-my2.function(625,25,'R IS FUN')
print(out2)

#d. If the string is "multiply", output should be multuplication of two numbers
my3.function<-function(a,b,name)
{
  if(name=='R IS SMART')
  {
    f=a*b
    return(f)
  }
}
out3<-my3.function(25,24,'R IS SMART')
print(out3)

#e.	If the string is "log", output should be log of the first number with second number as base
my4.function<-function(a,b,name)
{
  if(name=='data science')
  {
    g=log(a,base=b)
    return(g)
  }
}
out4<-my4.function(4,10,'data science')
print(out4)

#f.	If the string is "power", 
#   output should be the first number raised to the power of the second number
my5.function<-function(a,b,name)
{
  if(name=='R with a Data Scientist')
  {
    f=exp(a^b)
    return(f)
  }
}
out5<-my5.function(2,3,'R with a Data Scientist')
print(out5)

#g.	If the string in anything else, return -1
my6.function<-function(a,b,name)
{
  if(name=='anything')
  {
    c=-1
    return(c)
  }
}
out6<-my6.function(1,1,'anything')
print(out6)

#2.	Write a function that takes a number as input and outputs a sequence of odd numbers starting from 1 to that number
a<-c[1:100]
my.function<-function(a)
  count=1
for(i in a)
{
  if(i%%2=1)
  {
    count=count+2
    return(a)
  }
}  

#3.	Write a program that iterates through all LETTERS and prints only the vowel
b<-LETTERS
if(LETTERS=="A"|| LETTERS=='E'|| LETTERS=='I'|| LETTERS=='O'|| LETTERS=='U')
{
  print('vowel')
}
else{
  print('no vowel')
  return(b)
}

#4.	Write a function that returns the class of the supplied input
x<-"what is r?"
if(class(x)=="character")
{
  print("r is here")
}
else{
  print("r is not here")
}
print(class(x))

#5.	Write a program that checks whether a number is prime and return TRUE for prime and FALSE for not prime

new.function<-function(a)
  flag=0
if(a>1)
{
  flag=1
  for(i in 2:(a-1))
  {
    if(a%%i==0)
    {
      flag=0
      break
    }
  }
}
if(a==2) flag=1
if(flag==1)
{
  print(a,"is a prime number")
}
else{
  print(a,"is not a prime number")
}
out<-new.function(23)
print(out)
