myBoot <- function(vector) {
 sample(vector, length(vector), replace = TRUE)
}

### For Simple Vectors ###
grades <- c(92, 80, 85, 95, 97, 78, 90, 86, 88, 66, 70, 82)

sapply(1:10, function(i){
  myBoot(grades)
})

### For Lists ###
myBootSample_ls <- lapply(1:10, function(i){
  myBoot(grades)
})

lapply(myBootSample_ls, mean)

lapply(myBootSample_ls, myBoot)

##apply(list/vector, function)##

#Create a summary function#
mySummary <- function(x){
 sixNumSummary <- summary(x)
 stdDev <- sd(x)
 out <- c(sixNumSummary, StdDev = stdDev)
 return(out)
}

#Test#
mySummary(grades)


summary_mat <- sapply(myBootSample_ls, mySummary)
rowMeans(summary_mat)
