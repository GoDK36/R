name = c('최지은', '김승규')
age = c(28, 36)
blood = c('A', 'B')
df = data.frame(이름=name, 나이=age, 혈액형=blood, stringsAsFactors=F)

for(i in 1:nrow(df)){
  res = sprintf('이름은 %s, 나이는 %d, 혈액형은 %s입니다.',
                df$이름[i], df$나이[i], df$혈액형[i])
  print(res)
}
