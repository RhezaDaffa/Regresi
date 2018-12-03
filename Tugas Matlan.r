
data1 <- read.csv(file.choose(),header=TRUE)

data1

#Linear Regression

model<-lm(Bulan ~ mobilterjual,data=data1)

summary(model)



plot(Bulan ~ mobilterjual,data=data1)
abline(model,col = "blue",lwd=2)

#predict New Value
predict(model,data.frame(mobilterjual=20))

#polinominal Regression

poly_model<-lm(Bulan~poly(mobilterjual,degree=2),data=data1)
poly_model

x<-with(data1,
       seq(min(mobilterjual),
          max(mobilterjual),
          length.out=2000))
y<-predict(poly_model,newdata=data.frame(
            mobilterjual=x))
plot(Bulan ~ mobilterjual,data=data1)
lines(x,y,col = "blue")
