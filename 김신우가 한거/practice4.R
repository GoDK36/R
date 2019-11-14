#logical indexing은 TRUE값만 가져옴
num <- c(10,20,50)
lv <- c(F,T,F)
print(num[lv])

x<- c(10,-20,4,20)
lv2 <- x > 0
print(x[lv2])

print(x[x>0])

print(x[x<0])

#cat() 함수
#Con'cat'enate and Print
#print와 달리 줄바꿈이 되지 않음
#sep를 사용해 separator를 지정
#지정하지않으면 아래와 같이 쭉 붙어서 출력됨
cat(1,'더하기',2,'는',3,'입니다')
cat('하지만',3)
cat(1,'더하기',2,'는',3,'입니다',sep='')
cat(1,'더하기',2,'는',3,'입니다','\n')
cat('but',45)
#cat함수는 print함수와 비슷한 것이기 때문에
#특정값안에 넣을 수 없음
#s <- cat(1,"입니다") 불가
print(1)
print(2)

#Exercise1

temp <- c(31,29,30,32,35,36,34)
avgtemp <- mean(temp)
hightemp <- max(temp)
lenhightemp <- length(temp[temp >= 35])

cat('최고 기온의 평균은 ',avgtemp,'이다.\n',sep='')
cat('가장 더운 날의 온도는 ',hightemp,sep='','이다.\n')
cat('최고 기온이 35도 이상인 날은 ',lenhightemp,sep='','일이다.\n')
#sep는 어느 위치에 있어도 무관하다.

#Exercise2

heigh <- c(185,166,172,180,163,170,177)
weight <- c(80,73,72,100,72,67,75)
BMI <- weight * 10000 / heigh^2
print(BMI[BMI>26])

# matrix(data,     벡터 자료
#        nrow =1,   행의 개수(항상 첫 번째값이 행)
#        ncol = 1,  열의 개수
#        byrow = F) data를 행 우선으로 채울지의 여부

data <- 1:8
matrix(data, nrow=4) #byrow값을 안쓰면 FALSE로 들어감
matrix(data, nrow=4,byrow=T)
matrix(data,ncol=4)
#matrix(data, nrow=2,ncol=3) #자료값 개수가 표현되어야할 개수보다 많으면 생성안됨
matrix(data, nrow=4,ncol=4) #자료값 개수가 표현될 개수보다 적으면 recycling rule이 적용된다.

#Exercise

data2 <- 5:10
matrix(data2, nrow=3)
matrix(data2, nrow=2)
data3 <- 2:9
matrix(data3,ncol=4,byrow=T)
data4 <- seq(12,50,2)
matrix(data4,nrow=4,ncol=5,byrow=T)

score <- matrix(c(100,40,85,77,98,84),2)
colnames(score) <- c('국어', '영어','수학')
rownames(score) <- c('김신우', '이성현')
print(score)

the <- c(30,20,15)
of <- c(25,15,10)
and <- c(15,10,5)
cbind(the,of,and)
cbind(the,of,and,to=c(10,12,14))
rbind(the,of,and)
rbind(the,of,and,to=c(10,20,45))

#Exercise

#방법1
scr <- c('A',"B",'A+','B',"B",'C','C','B','A')
res <- matrix(scr,3,3,T)
colnames(res)<-c('stu1','stu2','stu3')
rownames(res) <-c('sci','math','eng')
print(res)

#방법2
stu1 <- c('A',"B",'C')
stu2<- c('B',"B",'B')
stu3<-c("A+",'C','A')

res2<-cbind(stu1,stu2,stu3)
rownames(res2)<-c('sci','math','eng')
print(res2)

#방법3
sci<- c('A',"B","A+")
math <- c("B",'B','C')
eng<- c('C','B','A')

res3<- rbind(sci,math,eng)
colnames(res3) <-c('stu1','stu2','stu3')
print(res3)
