####sprintf()####
sprintf("%d",23) #%d는 digit 숫자를 출력함
sprintf("%s","A") #%s는 string 문자열을 출력
sprintf("%.2f",123.42368) #%.xf는 소수점 x자리까지 반올림하여 나타냄
sprintf("%5d",25) #%xd는 x자리수를 나타냄. 모자랄경우 앞을 빈칸으로채움

################
####Exercise####
################

nme <- c("최지은", "김승규")
age <- c(28,36)
btype <- c("A","B")

df <- data.frame(이름=nme, 나이=age, 혈액형=btype)
df
sprintf("이름은 %s, 나이는 %d, 혈액형은 %s입니다.",df$이름[1],df$나이[1],df$혈액형[1])
sprintf("이름은 %s, 나이는 %d, 혈액형은 %s입니다.",df$이름,df$나이,df$혈액형)

################

v <- 11:15
for (n in 1:length(v)) { #1:length(v) 1부터 벡터 v에 들어있는 원소의 개수만큼
  v[n]
}

lst <- list(2,'a',4)
for (i in 1:length(lst)){
  print(lst[i])
}

#행을 출력하는 방법

for (i in 1:nrow(df)) {
  print(df[i,])
}

#열을 출력하는 방법

for (i in 1:ncol(df)){
  print(df[,i])
}

df2 <- data.frame(a=1:3,b=4:6,c=7:9)

for (i in 1:ncol(df2)){
  print(mean(df2[,i]))
}

################
####Exercise####
################

v <-c(3,5,2,6,5)
for(i in 1:length(v)-1){
  sum <- v[i] + v[i+1]
  print(sprintf("%d + %d = %d",v[i],v[i+1],sum)) #sum에 따로 원소 위치값을 지정할 필요엑스
}

df
for (i in 1:nrow(df)){
  print(sprintf("이름은 %s, 나이는 %d, 혈액형은 %s입니다.",df$이름[i],df$나이[i],df$혈액형[i]))
}

i<-1
while (i <= nrow(df)) {
  print(sprintf("이름은 %s, 나이는 %d, 혈액형은 %s입니다.",df$이름[i],df$나이[i],df$혈액형[i]))
  i <- i + 1
}

################

#중첩 반복문

nums <- c(1,2,3,4)
alphas <- c('a','b','c','d')
for (n in nums){
  print(n)
  for (a in alphas){
    print(a)
  }
}

#################
####Exercise#####
#################

x <- c(1:9)
y <- c(1:9)

for (a in x) {
  # print(sprintf("<%d단>",a))
  cat("\n<",a,"단>\n",sep="")
  # if (a == 2){
  #   n <- ''
  # }else{
  #   n <- '\n'
  # }
  # print(sprintf("%s<%d단>",n,a))
  for (b in y){
    print(sprintf("%d x %d = %d",a,b,a*b))
  }
}


#######################################
#######################################

#사용자 정의 함수 작성법
# 함수명 <-  function(x,y,z,...){
#   함수본문
#   return(반환값)
# }
#함수 안에서 쓰인 인자(매개변수)는 함수 안에서만 적용.

mySum <- function(x,y,z){
  tot <- x + y + z
  return(tot)
}
print(mySum(1,4,6))

myCal <- function(a,b,c){
  tot <- a*b-c
  return(tot)
}
print(myCal(2,3,5))

#return은 생략가능,print로도 대체 가능, 매개변수도 생략가능

################
####Exercise####
################

triSpace <- function(low, height){
  space <- low * height / 2
  return(space)
}

greet<- function(nme) {
  res <- sprintf("%s님, 환영합니다!",nme)
  return(res)
}

print(greet('신우'))

vectorRange <- function(v){
  range <- max(v) - min(v)
  return(range)
}

evenSum <- function(){
  tot <- 0
  for (i in 1:10){
    if (i%%2==0){
      tot <- tot + i
    }
  }
  return(tot)
}

print(evenSum())

evenSum <- function(a,b) {
  tot <- 0
  for (i in a:b){
    if (i%%2==0){
      tot <- tot + i
    }
  }
  return(tot)
}

print(evenSum(30,56))

square <- function(){
  for (n in 1:10){
    print(n**2)
  }
}

print(square())

square <- function(a){
  for (n in 1:a){
    k<- n**2
    print(k)
  }
}

print(square(5))

mySumDiff <- function(a,b,c) {
  if (c == T){
    return(a+b)
  }
  if(c == F){
    return(a-b)
  }
}
mySumDiff(3,6,TRUE)
mySumDiff(6,85,F)
mySumDiff(46,5,5)
