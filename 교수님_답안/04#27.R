for(num1 in 2:9){
  if(num1==2){
    nl <- ''
  }else{
    nl <- '\n'
  }
  print(sprintf('%s<%d´Ü>', nl, num1))
  for(num2 in 1:9){
    print(
      sprintf('%d X %d = %d',
            num1, num2, num1*num2)
    )
  }
}