df <- data.frame(나이=c(32,45,22,44),성별=c('M','F','F','M'),답1=c(5,3,3,2),답2=c(4,3,2,5))
df
textinfo <- data.frame(Text=c('A','B','C'),the=c(30,20,15),of=c(25,15,10),and=c(15,10,5),Genre=c('fiction','spoken','newspaper'))
textinfo
str(textinfo) #struxture이다!!string 과 헷갈리지 않기!
#Factor는 범주형 데이터를 표현하기 위한 데이터 타입
blood <- factor(c('A','O','B','AB','O','X'), level=c('A','B','O','AB'))
blood
class(blood)
#이 강의에서 굳이 알필요없음
#factor로 사용하지 않을꺼면
textinfo <- data.frame(Text=c('A','B','C'),the=c(30,20,15),of=c(25,15,10),and=c(15,10,5),Genre=c('fiction','spoken','newspaper'),stringsAsFactors = FALSE)
str(textinfo) #factor였던게 chr로 표시됨

#특정 원소 가져오기
textinfo[2,2]
textinfo$the[2]
textinfo[,c(2:4)]
textinfo[c(1,3),]
textinfo[1,]
textinfo[,2]
#원소 변경
textinfo[3,3]<-33

#행과 열 추가
be빈도 <- c(24,34,44)
textD = list('D',37,27,17,'magazine')
cbind(textinfo,be)
cbind(textinfo[,c(1:3)],be,textinfo[,c(4:5)])
rbind(textinfo,textD)
textinfo

#행과 열 삭제
textinfo[,-1] #1열 삭제
textinfo[-c(1,3),]#1,3열 삭제제

#subset() 함수
#전체 조건에서 만족하는 객체만 가져옴
#subset(데이터,조건,원하는 리스트)
textinfo <- data.frame(Text=c('A','B','C'),the=c(30,20,15),of=c(25,15,10),and=c(15,10,5),Genre=c('fiction','spoken','newspaper'))
textinfo
subset(textinfo,Text=='B')
subset(textinfo,of>=13)
subset(textinfo,the>20,Text)
subset(textinfo,and<10,c(Text,Genre))
subset(textinfo,and<10,1:2)

#########
#Exercise
tempinfo <- data.frame(날짜=c('5/1','5/2','5/3','5/4'),
                         평균기온=c(20.1,20.7,17.2,19.3),
                         최저기온=c(12.8,15.2,14.5,14.8),
                         최고기온=c(28.3,28,19,27))
tempinfo

tempavg<-mean(tempinfo[,2])
tempavg
lowtemp<-min(tempinfo$최저기온) #한글이어서 warning이 뜸. 돌가는데 상관은 없음
lowtemp
hightemp<-max(tempinfo[,4])
hightemp

subset(tempinfo, 평균기온<20,날짜)

subset(tempinfo, 최저기온>=15, c(날짜,평균기온,최고기온))

########

#apply()함수
#대상에 대해 특정함수 적용
#apply(대상,대상의 방향(1이면 행,2이면 열),적용할함수)

m <- matrix(1:12,3)
m
apply(m,1,mean) #각 행에 적용
apply(m,2,sum) #각 열에 적용

#########
#Exercise
apply(tempinfo[,-1],2,mean)

#데이터 타입 변환
a<-'3'
as.numeric(a) #숫자타입으로 변환
c<-5
as.character(c) #문자타입으로변환
as.logical(c) #논리 타입으로 변환
b <- 1:3
as.matrix(b) # 행렬타입으로 변환
d<- c('안녕',23,5)
as.data.frame(d) # 데이터프레임 타입으로 변환

#############################

#조건문

tmp <- 90

if (tmp > 86) {
  print('It is hot!')
  print('Be sure to drink liquids.')
}
print('Good Bye')

#############
#Exericise
hits <- 12
shield <- 0
if (hits>10 & shield ==0){
  print("You're dead....")
}

#######
#else가 사용되는 조건문
if (tmp>100){
  cat("It's too hot!",'Be sure to drink liquids.',sep="\n")
}else{
  cat("It is not hot.",'Bring a Jacket',sep="\n")
}
print('goodbye')

###########
#readline()함수
#python에서 input 과 같은 함수
#입력된 값은 문자열로 저장됨
val <- readline("아무거나 입려해봐: ")
cat("val의 값은 ",val,"입니다.",sep="")

##########
#Exercise

name <- readline("이름을 입력하시오: ")
age <- readline("나이를 입력하시오: ")
if (as.numeric(age)<19){
  cat(name,',',"you can't vote.")
}else{
  cat(name,',',"you can vote.")
}
