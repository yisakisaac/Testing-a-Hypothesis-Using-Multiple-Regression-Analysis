library(poliscidata)

#determing dependent variable
mean(states$ba_or_more)

#describing the dependent variable
describe(states$ba_or_more)
freq(states$ba_or_more)

#multiple regression model
summary(lm(states$ba_or_more~states$unemploy+states$prcapinc))

#multiple regression graphic
plot(x=states$ba_or_more,
     y=states$unemploy)

plot(x=states$ba_or_more,
     y=states$unemploy,
     xlab="percent of population with a college degree or higher",
     ylab="unemployment rate",
     main="effect of unemployment rate on having a college degree")

abline(lm(unemploy~ba_or_more+scale(prcapinc),data=states))

symbols(x=states$ba_or_more,y=states$unemploy,add=T,inches=.25,fg="black",bg=416,circles=states$prcapinc)

text(states$ba_or_more,states$unemploy,states$prcapinc,cex=.6,offset=-1,pos=2)
