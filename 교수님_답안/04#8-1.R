name <- readline('name: ')
age <- readline('age: ')
age <- as.numeric(age)

if(age>=19){
  cat(name, "님, 투표 가능합니다.", sep="")
}else{
  cat(name, "님, 투표 불가능합니다.", sep="")
}