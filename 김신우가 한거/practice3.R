the <- c(30,20,15)
print(the)
of <- c(25,15,10)
print(of)
theOf <- c('the','of')
print(theOf)
sum(the)
thek <- c(30,'20',15)
print(thek) 
#숫자형과 문자형이 혼재되있으면 전체를 다 문자형으로 바꾼다다다

ofk <- c(25,T,FALSE)
print(ofk)
#숫자형과 논리형이 섞여있으면 모두 숫자형으로 변환해줌
#True 는 1이고 False는 0이다

x <- 1:5
print(x)
y <- 10:5
print(y)
#앞 자리 숫자 부터 뒷자리 숫자까지의 수

z = seq(from=1, to=20, by=2)
#1부터 20까지 2씩 증가하는 수열 벡터
#매개변수인 from,to 생략 가능
print(z)
seq(1,5,0.5)
seq(1,7,length.out = 4)
#1부터 7까지 4개의 자료 생성. length.out는 생략 불가

score <- c(80,60,90,70)
score[2:4] #2~4번째 원소 접근
score[c(1,2,4)] #1,2,4번째 원소 접근
score[-3]#3번째 원소를 제외한 나머지
score[-c(1,2,4)] # 1,2,4번째 원소 제외한 나머지
# -표시가 그 해당되는 번째의 원소를 제외한다는 뜻
res <- score[1] + score[3]
print(res)

score[2] <- 65
#기존의 벡터 값 수정
score[2:4] <- 10
#해당되는 위치의 값이 10으로 바뀜뀜
score [2:4] <- c(20,30,40)
print(score)
#같은 벡터 값으로 넣어주면 바뀜
score[c(1,2,4)] <- c(20,30,40)
#해당되는 값만 바뀜
score[-2] <- 100
#해당되는 값 제외하고 모두 바뀜

a1 <- c(2,3,4,5)
a2 <- c(4,5,6,7)
a3 <- c(7,8,9)
a4 <- c(2,3)
a1 + a2
#동일한 위치의 원소끼리 계산
a1 + a4
#recycling rule에 따라서 부족한 값을 채워서 계산
#2+2 3+3 4+2 5+3
a1 +10
#모든 원소에 단일값을 각각 연산

score1 <- c(80,60,90,70)
sum(score1)
max(score1)
min(score1)
mean(score1)

q1 = sum(seq(1,100))
print(q1)
q2 = seq(2,100,2)
print(q2)
q3 <- seq(55,100,1)
print(q3[23])
q4 <- seq(33,103,1)
print(q4[-c(3,17,29)])
a <- seq(1,100)
a[1:9] <- a[1:9] + 300 #a[1:9]가 교체됨
print(a)

