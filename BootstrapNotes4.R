takeThe <- function(what, to) {
  what(to)
}

x <- rnorm(25)
takeThe(mean, x)
takeThe(sd, x)
