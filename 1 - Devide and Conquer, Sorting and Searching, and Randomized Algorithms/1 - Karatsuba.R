Karatsuba <- function(x, y) {
  strx <- as.character(x)
  stry <- as.character(y)
  digits <- max(nchar(strx), nchar(stry))
  half <- digits %/% 2
  
  a <- as.integer(substr(strx, 1, nchar(strx) - half))
  b <- as.integer(substr(strx, nchar(strx) - half + 1, nchar(strx)))
  c <- as.integer(substr(stry, 1, nchar(stry) - half))
  d <- as.integer(substr(stry, nchar(stry) - half + 1, nchar(stry)))
  
  result <- (a * c * (10 ^ digits)) + (((a * d) + (b * c)) * (10 ^ half)) + (b * d)
  return(result)
}

# Calculate the result
result <- Karatsuba(x, y)

# Print the result
cat("The result of", x, "*", y, "using Karatsuba is:", result, "\n")
