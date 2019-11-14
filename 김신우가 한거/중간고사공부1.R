a <- 70
b <- 120

res1 <- a >= 100 & b <=100
print(res1)

res2 <- a <= 100 | b < 100
print(res2)

res3 <- a <= 80 & a>= 60 & b >= 80 & b <= 90
print(res)

########
cost <- 120000
tax <- cost * 0.1
vol <- cost *0.15
total <- cost + tax + vol
print(total)

k <- 200
c <- k - 273
f <- 1.8*c + 32
print(c)
print(f)

#########

a <- seq(1,100)
a1 <- sum(a)
print(a1)

a2 <- seq(2,100,2)
print(a2)

a3 <- c(55:100)
print(a3[23])

a4 <- c(33:103)
print(a4[-c(3,17,29)])

a5 <- a[1:9] + 300
a[1:9] <- a5
print(a)

############

temp <- c(31,29,30,32,35,36,34)
avg <- mean(temp)
hightemp <- max(temp)
len <- length(temp[temp>= 35])
cat('최고 기온의 평균은 ',avg,'이다',sep='')
cat('가장 더운 날의 온도는 ',hightemp,'도이다',sep='')
cat('최고 기온이 35도 이상인 날은 ',len,'일이다',sep='')

#########

hight <- c(185,166,172,180,163,170,177)
weight <- c(80,73,72,100,72,67,75)
BMI <- weight*10000/hight**2
print(BMI)
print(weight[BMI > 26])  

###########

stu1 <- c('A','B','C')
stu2 <- c('B','B','B')
stu3 <- c('A+','C','A')

scr <- cbind(stu1,stu2,stu3)
rownames(scr) <- c('sci','math','eng')
print(scr)
