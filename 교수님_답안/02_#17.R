temp <- c(31, 29, 30, 32, 35, 36, 34)

cat('최고 기온의 평균은 ', mean(temp), '이다.\n', sep='')
cat('가장 더운 날의 온도는', max(temp), '도이다.\n')
cat('최고 기온이 35도 이상인 날은', length(temp[temp>=35]), '일이다.\n')