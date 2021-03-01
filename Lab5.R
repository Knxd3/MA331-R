alt_plot <- function(x,y) {
  plot(x-y, x+y)
}
v1 <- rnorm(150)
v2 <- rnorm(150)
            
alt_plot(v1,v2)

comp_ss_n <- function(n) {
  nums <- 1:n
  return (sum(nums**2))
}

comp_ss_n(12)

ss_n <- vector(mode = 'numeric', length = 35)
  
  for (i in 1:35) {
    ss_n[i] <- comp_ss_n(i)
  }

ss_n

ss_n <- sapply(1:35, comp_ss_n)

ss_n

even_or_odd <- ifelse(1:35 %% 2 == 0, 'Even', 'Odd')

tapply(ss_n, INDEX= even_or_odd, mean)