# Control Flow in R
# Kristin Gmunder
# 2018-10-22


# t-test on 0-variance data
x <- rep(0, 30)

xTtest <- t.test(x, mu = 2)
failToReject <- xTtest$conf.int[1] < 0 && 0 < xTtest$conf.int[2]


#if failToReject is TRUE, then mu is in the confidence interval
#if failToReject is FALSE, then mu is not in the confidence interval
#if failToReject is NA, then mu is not in the confidence interval, because the CI does not exist


### Write an if() Statement ###
if(is.na(failToReject)){
  failToReject <- FALSE
}
