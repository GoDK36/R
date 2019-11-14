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

df <- data.frame(이름=nme, 나이=age, 혈액형=btype, stringsAsfactors=F)
df
sprintf("이름은 %s, 나이는 %d, 혈액형은 %s입니다.",df$이름[1],df$나이[1],df$혈액형[1])
sprintf("이름은 %s, 나이는 %d, 혈액형은 %s입니다.",df$이름,df$나이,df$혈액형)

################

v <- 11:15
for (n in 1:length(v)) {
  v[n]
}
