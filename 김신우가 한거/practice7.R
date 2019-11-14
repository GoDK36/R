################
####Exercise####
################

name <- readline("Enter your name: ")
age <- as.numeric(readline("Enter your age: "))
if (age < 18) {
  cat(name, "you can't vote.")
}else {
  cat(name, "you can vote.")
}

scr <- readline("What is your score?")
if (as.numeric(scr) >= 60){
  print("pass")
} else {
  print("fail")
}

num <- as.numeric(readline("Enter number: "))
if (num / 2 == 0) {
  cat(num, "is even number.")
} else {
  cat(num,"is odd number.")
}

grdscr <- as.numeric(readline("Enter your score: "))
if (grdscr >= 90){
  print("A")
}else{
  if(grdscr >= 80){ #굳이 90점 미만 적을 필요 엑스
    print("B")
  }else{
    print("C")
  }
}

################
#파이썬의 elif가 R에서는 else if이다
################
####Exercise####
################

inpscr <- as.numeric(readline("성적을 입력하세요: "))
if (inpscr >= 90){
  print("A")
} else if (inpscr >= 80) {
  print("B")
} else {
  print("C")
}

number <- as.numeric(readline("숫자를 입력하세요: "))
if (number > 0){
  print("양수")
} else if (number == 0){
  print(0)
} else {
  print("음수")
}

################
#for (변수 in vector){
# <반복해서 수행할 코드>
# }
tot<-0
for (n in seq(1,10)){
  tot <- tot + n
}
print(tot)

################
####Exercise####
################
total <- 0
for (n in seq(1,10)){
  if (n%%2==0){
    print("짝수")
  }else{
    print("odd")
  }
}

for (n in seq(1,100)){
  if (n%%2==0){
    total <- total + n
  }
}
print(total)

####개수 세기
v<-c('a','b','c')
cnt<-0
for (char in v){
  print(char)
  cnt <- cnt + 1
}
print(cnt)

cnteven<-0
cntodd<-0
for (n in seq(1,55)){
  if (n%%2==0){
    cnteven <- cnteven +1
  }else{
    cntodd<- cntodd +1
  }
}
cat(cnteven,cntodd)

for (n in seq(1,9,2)){
  print(n**2)
}

##################
#while은 for과 다르게 조건값이 true일때 계속 수행됨
x <- 1
while (x<6){
  print(x)
  x <- x+1
}

################
####Exercise####
################

while(x<=9){
  print(x**2)
  x <- x+2
}

################
#repeat()는 해당되는 조건식(if)가 해당되기 전까진 반복.
x <- 1
repeat{
  print(x)
  if(x>10) break
  x <- x+1
}

y<-0
while(y<10){
  y<- y+1
  if (y%%2==0){
    next
  }
  print(y)
}

z<-0
repeat{
  if(z>10) break
  z <- z+1
  if(z%%2==0) next
  print(z)
}

################
####Exercise####
################

while (1){
  nme <- readline("Enter name: ")
  if (nme == 'quit') {
    print("Bye bye")
    break
  }else if (nme == ''){
    print("아무것도 입력하지 않았습니다.")
    next  
    }
  cat(nme,'님, 반갑습니다.\n',sep="")
  # if (nme == 'quit') break 여기에 들어가면 "quit님 반갑습니다"도 출력되고 종료됨.
}

############################
#과제는 1)while문으로 1~100까지 짝수 합 구하기
#       2)while 문으로 1~10까지 각각 홀수와 짝수인지 출력하기
#       3)while 문으로 1~55까지 숫자 중 홀수의 개수 짝수의 개수 구하기

#과제 1
res1 <- 0
x<-1
while (x<=100) {
  if (x%%2==0){
    res1 <- res1 + x
  }
  x <- x+1
}

#과제2
x1 <- 1
while(x1<=10){
  if (x1%%2==0){
    cat(x1,"짝수\n")
  } else {
    cat(x1,"홀수\n")
  }
  x1 <- x1+1
}

#과제3
cnteven<-0
cntodd<-0
x2<-1
while (x2<=55){
  if(x2%%2==0){
    cnteven <- cnteven+1
  } else {
    cntodd <- cntodd+1
  }
  x2 <- x2 +1
}
cat(cnteven,cntodd)
