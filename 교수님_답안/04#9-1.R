score <- as.numeric(readline('score: '))
if (score >= 90){
  print('A')
}else{
  if (score >= 80){
    print('B')
  }else{
    print('C')
  }
}