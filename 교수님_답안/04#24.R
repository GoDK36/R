v = c(3,5,2,6,5)
for(i in 1:(length(v)-1)){
  s = sprintf('%d + %d = %d', v[i], v[i+1], v[i]+v[i+1])
  print(s)
}

