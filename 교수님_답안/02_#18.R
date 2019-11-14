height <- c(185, 166, 172,180,163,170,177)
weight <- c(80,73,72,100,72,67,75)
bmi <- weight*10000 / height^2
bmi
weight[bmi > 26]
