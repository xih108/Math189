##Problem1
## Nutrient data
nutrient=read.table("https://www.math.ucsd.edu/~wez243/data/nutrient.txt")
nutrient$V1=NULL
colnames(nutrient)=c("Calcium", "Iron", "Protein", "Vitamin A", "Vitamin C")

#Q1:
means <- colMeans(nutrient, na.rm = TRUE)
print(means)
sd <- apply(nutrient, 2, function(x) sd(x, na.rm = TRUE))
print(sd)


#Q2:
intake = c(1000,15,60,800,75)
for (i in 1:ncol(nutrient)){
  t.test(nutrient[i],
             alternative = c("two.sided"),
             mu = intake[i], paired = FALSE,conf.level = 0.95)
  print(t)
}


#Q3:?????


##Problem2
##Multiple data
multiple = read.table("Downloads/multiple.txt");
head(multiple);

require(multtest);
teststat = multtest.teststat(multiple, multiple);
