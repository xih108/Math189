data <- read.csv("Downloads/mtcars.csv")

#Q1:
Mean = c()
Variance = c()
for (i in 2:ncol(data)){
  Mean <- c(Mean,mean(data[,i]))
  Variance <- c(Variance,var(data[,i]))
}
print(Mean)
print(Variance)
  
#Q2:
COVMtx <- cov(data[2:ncol(data)],data[2:ncol(data)])
print(COVMtx)
CORMtx <- cor(data[2:ncol(data)],data[2:ncol(data)])
print(CORMtx)
  
#Q3:
pdf('Desktop/Math189/Q3.pdf')
plot(data$wt,data$mpg, main="Scatterplot between wt and mpg", xlab="wt", ylab="mpg",pch = 20)
dev.off()

#Q4:
library(scatterplot3d)
pdf('Desktop/Math189/Q4.pdf')
scatterplot3d(data$wt,data$mpg,data$cyl,highlight.3d = TRUE, xlab="wt", ylab="mpg",zlab="cyl",main = "3D scatterplot",pch = 20)
dev.off()

#Q5:
pdf('Desktop/Math189/Q5.pdf')
pairs(data[2:ncol(data)],pch = 20,cex = 0.6,main = "pairwise")
dev.off()

#Q6:
