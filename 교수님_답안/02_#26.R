grade <- c('A', 'B', 'C', 'B', 'B', 'B', 'A+', 'C', 'A')
mat1 <- matrix(grade, ncol=3)

cns <- c('stu1', 'stu2', 'stu3')
rns <- c('sci', 'math', 'eng')

colnames(mat1) <- cns
rownames(mat1) <- rns

mat1

#####
stu1 <- c('A', 'B', 'C')
stu2 <- c('B', 'B', 'B')
stu3 <- c('A+', 'C', 'A')

mat2 <- cbind(stu1, stu2, stu3)

rownames(mat2) <- rns
mat2

####
sci <- c('A', 'B', 'A+')
math <- c('B', 'B', 'C')
eng <- c('C', 'B', 'A')

mat3 <- rbind(sci, math, eng)
colnames(mat3) <- cns
mat3

