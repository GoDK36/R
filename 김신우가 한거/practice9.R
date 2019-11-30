###함수
####Exercise

myAbs <- function(a) {
  if (a < 0){
    return(-a)
  }
  if(a>0){
    return(a)
  }
  if(a==0){
    return(0)
  }
}

print(myAbs(-13))

###다시 꼭 해보기
tringle <- function(n) {
  for (end in 1:n){
      print(1:end)
  }
}
tringle(3)

############################
############################

##텍스트 다루기

#dataframe 생성할때 row이름 지정하기
df <- data.frame(tpye=c('A','B'),
                 the=c(10,20),
                 of=c(22,44),
                 row.names = 1) #1이 첫 번째 칼럼을 뜻함
df

dim(df) #dataframe의 (행/열) 개수 vector 형식으로 반환환

df2 <- data.frame(a=101:200,b=201:200)
dim(df2)
head(df2,5) #head(dataframe이름, n) dataframe의 첫부분부터 n까지의 부분 반환 
tail(df2,5) #dataframe의 뒤에서부터 n줄 반환

##정렬하기

#벡터 정렬
x <- c(5,2,6,4)
sort(x) #오름차순 정렬
sort(x,decreasing = T) #내림차순 정렬
order(x) #오름차순의 인덱스 값 반환
order(-x) #내림차순의 인덱스값 반환

#데이터프레임 정렬
df3 <- data.frame(a=c(1,3,1,2),b=c('F','C','A','G'))

order(df3$a)
df3[order(df3$a),] 
#df3[x,y] x,y에 행과 열의 오름차순으로 정렬된 인덱스 값이 들어가야 그 순서대로 다시 정렬됨.
df3[order(df3$b),] #b열기준으로 오름차순 정렬
df3[order(-df3$a),] #a열 기준 내림차순 정렬
df3[order(df3$a,df3$b),] #첫번째로 a열 기준, 같을시 b열 기준으로 정렬렬

#값 추가하기
y <- 1:5
append(y, 7) #끝에다가 7 추가 (문자열도 가능)
append(y, 6, after=3) #3번쨰 원소 다음에 6 추가

z <- vector() #빈 벡터 생성
z <- append(z,4)
z <- append(z,7)
z

p <- list() # 빈 리스트 생성성
p <- append(p,34)
p <- append(p,5)
p

#벡터, matrix 이름 붙이기

names(x) <- c('A','B','C','D') #벡터 이름 지정
x
x['C']

mt <- matrix(1:6,nrow=2)
rownames(mt) <- c('A','B') #row 이름 부여여
colnames(mt) <- c('A','B','C') #col 이름 부여

q<-c(1,2,1,3)
unique(q) #중복 원소 제거(문자열도 가능)

lst <- list(name='Shin',age=24)
unlist(lst) #list를 이름이 부여된 벡터로 변환

age <- c(20,30,40,20)
blood <- c('A','B','B','AB')
table(age) #원소 개수의 빈도 구하기
table(blood)
table(age,blood) #age가 행이고 blood가 열이며 값은 blood의 수로 채워진 table 반환
df4 <- data.frame(age,blood)
df4
table(df4) #첫 열이 행으로 넘어감

s <- "I like you"
tolower(s) #대문자 모두 소문자로 변환
toupper(s) #소문자 모두 대문자 변환환

nchar(s) #문자열의 길이 반환
nchar(c(s,'aksks')) #각 벡터값의 길이 반환

substr(s,3,6) #문자열의 3번째부터 6번째 값까지 갖고오기기

paste("I",'hate','you',sep=',') #sep 기준으로 문자열들을 붙여준다다

x1 <- 1:5
paste(x1,'등') #벡터값이 들어갈 수 있음. 총 5개으ㅔ 벡터값
paste(x1,'등',collapse=',') #collapse를 통해 하나의 벡터값으로 반환

strsplit('Age/name','/') #/를 기준으로 나눠서 리스트로 변환

#################
####Exercise#####
#################

s1 <- "I like you I love you"
wrd <- strsplit(s1,'\\s+') #R에서 regex사용중 \사용시에는 \두 번 입력
wrd <- unlist(res)
wrd_freq <- table(wrd)
#내 방법
wrd_freq_v <- vector()
wrd_freq_v <- append(wrd_freq_v, wrd_freq[wrd])
paste(wrd, ':', wrd_freq_v )
#교수님 방법
paste(names(wrd_freq),':',wrd_freq)
#table()의 출력값은 숫자, 위의 스트링은 이름임.
paste(names(wrd_freq),':',wrd_freq,collapse = ', ')

################
################

##문자열 다루기
s2<- c('South Korea',"North Korea",'South Africa','남아프리카','123')

grep('South',s2) #문자열 안에 있는 해당 값의 인덱스 반환
grep('South',s2,value=T)#value=T로 해당되는 문자열의 문자 반환

s3 <- c("My name is Shin. What's your name?")

sub("name","first name",s3) #해당 문자열의 첫번째 바꿀값만 바꾸어줌
gsub("name","last name",s3) #해당 문자열의 모든 바꿀값을 바꾸어줌줌
gsub("My name is Shin. ","",s3) #해당 문자열을 모두(sub쓰면 첫번쨰만)삭제
s3 <- gsub('\\.',',',s3) #그냥 . 만 쓰면 regex로 들어가 모든 문자에 해당되어짐
s3 <- gsub('\\?','',s3)
gsub('$','?',s3) #$는 행의 끝을 뜻하는 regex


################
####Exercise####
################
s1_lst <- strsplit(s1,"\\s+") #문자열 리스트화
s1_vec <- unlist(s1_lst) #리스트 벡터화
o_l <- grep('[olOL]',s1_vec,value=T) #검색 후 추출하기
# o_l <- grep('[ol]',tolower(s1_vec),value = T) #다 소문자화 후 추출
o_l <- unique(o_l) #중복 제거하기
o_l

gsub('you','you.',s1)
