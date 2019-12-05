################
####Exercise####
################

s1 <- "I like you I love you"
s1_lst <- strsplit(s1, "\\s+")
s1_vec <- unlist(s1_lst)
s1_freq <- table(s1_vec)
paste(names(s1_freq), ":", s1_freq, collapse = ", ") #names 함수는 이름만 갖고옴. 벡터 형식 또한 마찬가지.

################

getwd() #현재 내 작업 디렉토리
setwd('E:/Programming/R/강의자료')
#새로 설정할 작업 디렉토리(백슬래쉬 두번 써야 함, 그냥 슬래쉬 한 개도 가능)

lv <- readLines("news.txt", n=5)
#사용자의 입력을 받는 readlines와 구별 필요!!
#'n='은 앞에서부터 몇줄까지 반환할지!
lv
writeLines(lv,"news1-5.txt")

################
####Exercise####
################

mov <- readLines("movies.txt", n=3)
mov
mov <- append(mov,"나를 찾아줘",after=2) #변수의 저장 꼭 필요! 덮어써지는 것이 아님
writeLines(mov,"movies2.txt")
readLines("movies2.txt")

#파일 불러오기
news <- readLines("news.txt")
#단어 벡터 생성
news_wrd <- unlist(strsplit(news,'\\s+'))
#불필요한 기호 제거
news_wrd <- gsub("[[:punct:]]","",news_wrd)
#소문자로 변환
tolower(news_wrd)
news_wrd
#단어빈도추출
sort(table(news_wrd),decreasing = T)[1:10]
nchar(news_wrd)[1:10]
news_wrd[1:10]
#한 글자로 된 단어 제외
nchar(news_wrd) >= 2
wrd_2 <- news_wrd[nchar(news_wrd)>=2]
#단어 빈도 내림차순추출
wrd_freq <- sort(table(wrd_2), decreasing = T)
res <- paste(names(wrd_freq), ":",wrd_freq, collapse = '\n')
#굳이 collapse를 해줄 필요가 없다.
#wirteLines하면 어차피 나눠서 저장되기 떄문.
#새로운 파일에 저장하기
writeLines(res, "news_wrd_freq.txt")

###############
#폴더 내 파일 보기
dir() #안에 경로도 직접 설정 가능
dir(pattern = 'a') #파일명 중 a가 들어있는 파일 보여주라

fv <- dir(pattern = '.txt')

sv <- vector()
for (file in fv){
  lv <- readLines(file, n=3)
  sv <- append(sv, file) #파일명 넣기
  sv <- append(sv, lv) 
}
sv
writeLines(sv, 'merged.txt')

###############

df <- read.table('wordFreq.txt', header = T, row.names=1)
#orw.names=x는 x열의 값을 row로 삼아라
#header=T는 첫 줄을 값이 아닌 header로 인식
df$Flag <- c(1,0,1)
df
write.table(df,'wordFreq+.txt',sep='\t')
#sep는 필드 사이를 구분할 기호를 지정
#append는 T이면 기존 파일 마지막에 문자열 추가

install.packages("openxlsx")
.libPaths()
#학년 평균
mean(df$학년)
#15학번 학생 정보
sn <- substr(df$학번,3,4)
df[sn=="15",c('성명',학번)]
#성이 '김'인 학생 정보
df[substr(df$성명,1,1)=='김',]
#학번이 가장 높은 학생의 정보
sort(df$학번,decreasing=T)[1] #가장 높은 학번만 가져옴
df[order(-df$학번)[1:5],]
#학과별 벡터
table(df$학과)
#그래프 생성
barplot(table(df$학과))
barplot(talbe(sn))
#중앙값 구하기
median(as.numeric(sn))
#학번 평균 구하기
avg <- mean(as.numeric(sn))
#새로운 고학번이라는 열 만들기
df$구분[as.numeric(sn)<avg] <- '고학번'
df$구분[as.numeric(sn)>avg] <- '저학번'

###############
###Exercise####
###############

lv <- readLines('debate.txt')
#발화 분리하기
trump <- grep('^Trump:',lv,value=T)
clinton <- grep('^Clinton:',lv,value=T)
#발화 전처리
trump <- gsub("^Trump:",'',trump)
clinton <- gsub("^Clinton:",'',clinton)
#단어 벡터화 하기
t_wrd<- unlist(strsplit(trump,"\\s+"))
c_wrd<- unlist(strsplit(clinton,"\\s+"))
#불필요한 기호제거
t_wrd <- gsub("[[:punct:]]",'',t_wrd)
c_wrd <- gsub('[[:punct:]]','',c_wrd)
#소문자 전환
t_wrd <- tolower(t_wrd)
c_wrd <- tolower(c_wrd)

#빈도수 산출
t_freq <- sort(table(t_wrd), decreasing = T)
s_freq <- sort(table(c_wrd), decreasing = T)

#데이터프레임화
df_t <- as.data.frame(t_freq)
df_c <- as.data.frame(s_freq)
colnames(df_t) <- c('단어','빈도')
colnames(df_c) <- c('단어','빈도')
df_t
df_c
write.xlsx(df_t,'trp.xlsx')
write.xlsx(df_c,'cli.xlsx')