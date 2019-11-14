grade <- 'B'
print(grade)

numb<-13
num <- '13'
print(num)
class(num)
class(numb)

res <- TRUE
class(res)
reso <- F
class(reso)

kor <- 95

above90 <- kor >= 90
below90 <- kor < 90
print(above90)
print(below90)

today1 <- Sys.Date()
today2 <- Sys.time()
class(today1)
class(today2)

2**4
3^4
7%%2
10%/%3

num1 <- 10
num2 <- 20

num1 == 10 & num2 < 30
num1 == 10 & num2 > 50
num1 == 9 & num2 < 30
num1 == 8 & num2 > 50

num1 == 10 | num2 < 30
num1 == 10 | num2 > 50
num1== 9 | num2 < 30
num1 == 9 | num2 > 50

!(num2<30)
!(num1 == 9)

a <- 70
b <- 120

a >= 100 & b < 100
a <= 100 | b < 100
(a < 80 & a > 60) & (b < 90 & b > 80)
a < 80 & a > 60 & b < 90 & b > 80
(a < 80 & a > 60) | (b < 90 & b > 80)
a < 80 & a > 60 | b < 90 & b > 80
TRUE & TRUE | FALSE & TRUE
#|연산자나 &연산자 어느것이 먼저 연산되나

Hotel <- 120000
tax <- Hotel * 0.1
bong <- Hotel * 0.15
cost <- Hotel + tax + bong
print(cost)

k <- 200
c <- k - 273
f <- 1.8 * c + 32
print(f)
