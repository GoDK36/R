getwd()
setwd("/home/s201500601123456/tutorial/tutorial7")

s_formants = read.csv("s_s*.csv")
s_formants

c_s <- subset(s_formants, consonant=='s')
c_ss <- subset(s_formants, consonant=='s*')
dur <- duration ~ consonant
cog <- log(cog) ~ consonant #transform to log because too many outliers
int <- intensity ~ consonant
dis <- dispersion ~ consonant


summary(c_s)
summary(c_ss)

##boxplots
boxplot(dur,data = s_formants)
boxplot(int,data = s_formants)
boxplot(cog,data=s_formants)
boxplot(dis,data = s_formants)

##T-tests
t.test(dur, data = s_formants)
t.test(int, data = s_formants)
t.test(cog, data = s_formants)
t.test(dis, data = s_formants)

exp(7.263900)   #change log to oridinary value    
exp(6.336916)
