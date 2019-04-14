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
t.test(nutrient$Calcium,
       alternative = c("two.sided"),
       mu = 1000, paired = FALSE,conf.level = 0.95)

t.test(nutrient$Iron,
       alternative = c("two.sided"),
       mu = 15, paired = FALSE,conf.level = 0.95)

t.test(nutrient$Protein,
       alternative = c("two.sided"),
       mu = 60, paired = FALSE,conf.level = 0.95)

t.test(nutrient$"Vitamin A",
       alternative = c("two.sided"),
       mu = 800, paired = FALSE,conf.level = 0.95)

t.test(nutrient$"Vitamin C",
       alternative = c("two.sided"),
       mu = 75, paired = FALSE,conf.level = 0.95)

#Q3:?????


##Problem2
##Multiple data
multiple = read.table("Downloads/multiple.txt");
head(multiple);

require(multtest);
teststat = multtest.teststat(multiple, multiple);
