tot <- 0
for(n in 1:100){
  if(n %% 2 == 0){
    #짝수인 경우
    tot <- tot + n
  }
}
print(tot)

#################

for(n in 1:10){
  if(n %% 2 == 0){
    res <- '짝수'
  }else{
    res <- '홀수'
  }
  cat(n,'은 ', res,'입니다.\n', sep='')
}
###################
even_n <- 0
odd_n <- 0

for(n in 1:55){
  if(n %% 2 == 0){
    even_n <- even_n + 1
  }else{
    odd_n <- odd_n + 1
  }
}
cat(even_n, odd_n)
###################
for(n in seq(1,9,2)){
  print(n ** 2)
}