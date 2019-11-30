evenSum <- function(){
  tot <- 0
  for(n in 1:10){
    if(n%%2==0){
      tot = tot + n
    }
  }
  return(tot)
}
print(evenSum())


###
evenSum <- function(a, b){
  tot <- 0
  for(n in a:b){
    if(n%%2==0){
      tot = tot + n
    }
  }
  return(tot)
}
print(evenSum(1,5))

#####
square <- function(){
  for(n in 1:10){
    print(n**2)
  }
}
square()

#####
square <- function(a){
  for(n in 1:a){
    print(n**2)
  }
}
square(5)

#####
mySumDiff(1,2,TRUE) ==> c에 해당되는 값이 T이니까, 1+2 ==> 반환 값=3
mySumDiff(3,5,FALSE) ==> c가 F니까, 3-5 ==> 반환 값=-2


