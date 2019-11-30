name <- c('최지은', '김승규')
age <- c(28, 36)
blood <- c('A', 'B')
df <- data.frame(이름=name, 나이=age, 혈액형=blood, stringsAsFactors=F)
res <- sprintf('이름은 %s, 나이는 %d, 혈액형은 %s입니다.',
               df$이름[1], df$나이[1], df$혈액형[1])

print(res)

res <- sprintf('이름은 %s, 나이는 %d, 혈액형은 %s입니다.',
               df$이름[2], df$나이[2], df$혈액형[2])

print(res)
