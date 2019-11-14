age <- c(32,45,22,44)
sex <- c('M','F','F','M')
ans1 <- c(5,3,3,2)
ans2 <- c(4,3,2,5)
df <- data.frame(나이=age, 성별=sex, 답1=ans1, 답2=ans2)
rownames(df) <- c('A','B','C','D')
df
