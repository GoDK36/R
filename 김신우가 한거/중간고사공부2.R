a <- 70
b <-120
#Q1.
a1 <- a >= 100 & b < 100
a2 <- a <= 100 | b < 100
a3 <- a < 80 & a > 60 & b < 90 & b > 80

#####

cost <- 120000
tax <- cost * 0.1
vol <- cost * 0.15
totcst <- cost + tax + vol
print(totcst)

#######

k<- 200
c <- k-273
f <- 1.8 * c +32
print(f)

########

q1 <- seq(1,100)
q1sum<- sum(q1)
print(q1sum)
q2 <- seq(2,100,2)
print(q2)
q3 <- seq(55,100)
print(q3[23])
q4<- seq(33,103)
print(q4[-c(3,17,29)])
q5 <- q1[1:9] + 300
q1[1:9] <- q5
print(q1)

########

temp <- c(31,29,30,32,35,36,34)
high<- max(temp)
avg <- mean(temp)
lentemp <- length(temp[temp>=35])
cat("최고 기온의 평균은 ",avg,'도이다.\n',sep="")
cat("가장 더운 날의 온도는 ",high,"도이다\n",sep="")
cat("최고 기온이 35도 이상인 날은 ",lentemp,'일이다.\n',sep="")

height <- c(185,166,172,180,163,170,177)
weight <- c(80,73,72,100,72,67,75)
BMI<- weight * 10000 / height^2
print(weight[BMI>26])

########

matrix(5:10,3,2)
matrix(5:10,2,3)
matrix(2:9,2,4,T)
matrix(seq(12,50,2),4,5,T)

rns <- c('sci','math','eng')
cns <- c('stu1','stu2','stu3')
grd <- c('A', "B",'C',"B","B","B",'A+','C','A')
grdmat<- matrix(grd,3,3)
rownames(grdmat) <- rns
colnames(grdmat) <- cns
print(grdmat)

stu1 <- c('A', "B",'C')
stu2 <- c("B","B","B")
stu3 <- c('A+','C','A')
grdmat2<-cbind(stu1,stu2,stu3)
rownames(grdmat2) <- rns
print(grdmat2)

sci <- c('A','B','A+')
math <- c('B','B','B')
eng <- c('C','B','A')
grdmat3<-rbind(sci,math,eng)
colnames(grdmat3)<-cns
print(grdmat3)

grdmat[2,2] <- "F"
grdmat[3,1] <- "A+"
grdmat[1,] <- c('B','B','A')
print(grdmat)

#########

scr <- list(eng=80,math=70,total='B+')
print(scr)
scr[3] <- "A+"
scr$sci <- 90
print(scr)

info <- list(mat=matrix(seq(1,91,10),2,5))
print(info)
info$mat[2,4]
info$mat[,3] <- info$mat[,3]*2
print(info)

info <- list(A=list(Text='A',the=30,of=25,and=15,Genre='fiction'),
             B=list(Text='B',the=20,of=15,and=10,Genre='spoken'),
             C=list(Text='C',the=15,of=10,and=5,Genre='newspaper'))
print(info)
info$A$of
names(info) <- c('Kim','Shin','Woo')
print(info)
info$Kim$Genre
names(info$Shin)[2] <- 'also'
info$Shin

###########

age <- c(32,45,22,44)
gender<- c('M',"F",'F','M')
a1 <- c(5,3,3,2)
a2<-c(4,3,2,5)
tbl <- data.frame(나이=age,성별=gender,답1=a1,답2=a2)
rownames(tbl) <- c('A','B','C','D')
print(tbl)
