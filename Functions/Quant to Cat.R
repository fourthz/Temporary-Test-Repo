
# This function will change quantitative matched pairs to a single categorical
# variable.

# Function call

# quant_to_cat(x, y = TRUE)

# Arguments

# x is a required argument that is a data frame with two quantitative columns
# that are the matched responses.

# y is an optional argument that is a logical (default is TRUE) indicating
# whether the first or second column of x being higher corresponds to a
# return value of 1. When y is TRUE, a return of 1 means that the first column
# value is higher than the second column value. When y is FALSE, the reverse
# is true so that 1 means the second column value is higher. When there is a
# tie, the return value will be -1.

# The function will return a numeric vector of 1s, 0s, and -1s to indicate
# the status of each matched pair, as described above.

quant_to_cat <- function(x, y = TRUE) {
  
  if (y)
    z <- x[ , 1] > x[ , 2]
  else
    z <- x[ , 2] > x[ , 1]
  
  z <- as.numeric(z)
  
  w <- (x[ , 1] == x[ , 2])

  z[w] <- -1
    
  return(z)
}
