# R code

df=read.table('LskyetalPLOSONE.csv',
              header=TRUE,sep=',')
head(df)

max_age=120
min_age=18

#stopifnot(max(df$age)<max_age)
#stopifnot(min(df$age)>min_age)

df=subset(df,age>min_age&age<max_age)

lm.result=lm(conspiracist_avg~age,data=df)
summary(lm.result)

plot(df$age, df$conspiracist_avg)