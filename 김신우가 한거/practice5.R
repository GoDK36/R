stu1 <- c('A','B','C')
stu2 <- c('B','B','B')
stu3 <- c('A+','C','A')

rns <- c('sci','math','eng')

scr <- cbind(stu1,stu2,stu3)
rownames(scr) <- rns
print(scr)

##############

mat <- matrix(c(80,60,90,70,30,20),2)
mat
mat[2,2]
mat[2,c(2,3)]
mat[,3]
mat[2,]
mat[4] #벡터처럼 해당위치 수 나타냄
mat[2,3] <- 50
mat[1,c(1,2)] = 55
mat
mat[2,] = c(100,100,100)

##################

scr[2,2] <- 'F'
scr[3,1] <- 'A+'
scr[1,] <- c('B','B','A')
print(scr)

################

#Matrix의 연산
#무조건 크기가 같아야한다
# 안되면 연산불가.

a1<-matrix(c(1:6),3)
a2<-matrix(c(-6:-1),3)
a3<-matrix(c(-2:1),2)
print(a1)
print(a2)
print(a3)
a1 + a2
# a1 + a3 #행렬크기가 다르므로 불가
a3 + 10 #단일 숫자 연산은 가능능

matrix(1:6,3,3) #생성시에는 recycling rule 적용용

#############
#List

#List 안에는 모든 자료구조를 넣을 수 있음
#예를 들어 matrix, dataframe, vector 등등 다 가능
textA <- list("A",30,100,c('Hi','Bye'),1:20)
print(textA)
# [[]] 는 원소의 인덱스번호 []는 위치값

textB <- list(Text='A',숫자=25,of=1000,Vex=c('Good','Bad'),number=1:30)
print(textB)
#인덱스 번호에 이름을 부여
#matrix와 마찬가지로 접근 및 수정가능
textB[1] <- 'B'
textB[c(2,5)]
textB[1:3]
#리스트명과 태그명으로도 접근가능
textB$Vex
textB$숫자 <- 77
textB
textB$of <- NULL #NULL 값을 입력하면 원소 삭제(무조건 대문자여야함)
print(textB)

lst <- list(a='a',b='b')
names(lst) <- c('c','d') #리스트 태그값의 이름 바꾸기
names(lst)[2]<- 'g' #해당 인덱스 위치의 태그 이름 바꾸기
lst

#########

#Ex.1

scrlst <- list(eng = 80, mat = 70, grd = 'B+')
print(scrlst)
scrlst$grd <- 'A+'
scrlst$sci <- 90
print(scrlst)
scrlst[1] <- 70 #인덱스 번호로도 수정가능
scrlst[5] <-100 #인덱스 번호로도 추가 가능
print(scrlst)

#Ex.2

info <- list(mat=matrix(seq(1,91,10),2,5))
info
info$mat[,3] <- c(82,102)
#info$mat[,3] <- info$mat[,3]*2 이것도 가능
print(info)

########

#Ex.3


ninfo <- list(A=list(Text='A',the=20,of=25,and=15,Genre='fiction'),
              B=list(Text='B',the=20,of=15,and=10,Genre='spoken'),
              C=list(Text='C',the=15,of=10,and=5,Genre='newspaper')) 
print(ninfo) #이름값이 같다고 헷갈리지 말기!
ninfo$A$of

#########
#Dataframe

text <- c('A','B','C')
the <- c(30,20,15)
of <- c(25,15,10)
and <- c(15,10,5)
genre <- c('fiction','spoken','newspaper')
textinfo <- data.frame(text,the,of,and,genre)
textinfo
textinfo <- data.frame(텍스트명=text,the빈도=the,
                           of빈도=of,
                           and빈도=and,장르명=genre)
                              #이름바꾸기
textinfo

#######
# Ex.1

나이 <- c(32,45,22,44)
성별 <- c('M','F','F','M')
답1 <- c(5,3,3,2)
답2 <- c(4,3,2,5)

res <- data.frame(나이,성별,답1,답2)
print(res)
