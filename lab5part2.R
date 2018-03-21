#Task 6
AirPassengers
p<-AirPassengers
#AirPassengers['1950']
#colSums(p)
a<-matrix(data = AirPassengers, nrow = 12, ncol = 12, byrow = FALSE,
       dimnames = NULL)
print(a)
m<-rowSums(a)
print(m)
print("Most profitable month in 12 years is July")
max(m)
#x-axis is years and y axis is months
m2<-colSums(a)
print(m2)
print("Most profitable year in 12 years is 1960")
max(m2)

plot(p, ylab="Passengers (1000s)", type="o", pch =20)
#TASK 7
price=8000
k=12
n=12
for(j in 1:k){
  for(i in 1:n){
    a[i,j]=a[i,j]*price
    i=i+1
  }
  
  price=price+(price*0.1)
  j=j+1
}
print(a)
t2<-rowSums(a)
print(t2)
print("Most profitable month in 12 years is July")
max(t2)
#x-axis is years and y axis is months
t3<-colSums(a)
print(t3)
print("Most profitable year in 12 years is 1960")
max(t3)
#Task 8
r=12
c=12
max=0
for(j in 1:c){
  for(i in 1:r){
    val=a[i,j]
    if(val>max)
    {
    max=val}
  }
  print(max)
  j=j+1
}

