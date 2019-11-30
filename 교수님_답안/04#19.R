while(1){
  name <- readline('이름:')
  if (name=='quit'){
    print('thanks!')
    break
  }else if (name==''){
    print('다시 입력하세요!')
    next
  }
  cat(name,'님 반갑습니다.\n', sep='')
}


