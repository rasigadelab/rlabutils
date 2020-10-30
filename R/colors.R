# Color-related utilities

#' @title Standard colors in red, blue, orange
#' @export
stdcols <- list(
  dark = c(
    rgb(0.6, 0, 0),
    rgb(0, 0, 0.6),
    rgb(0.8, 0.6, 0),
    rgb(0,0.6,0)
  ),
  light = c(
    rgb(0.9, 0.6, 0.6),
    rgb(0.6,0.6,0.9),
    rgb(1,0.8,0.4),
    rgb(0.6,0.9,0.6)
  ),
  transp = c(
    rgb(0.6, 0, 0, 0.3),
    rgb(0, 0, 0.6, 0.3),
    rgb(0.8, 0.6, 0, 0.3),
    rgb(0,0.6,0,0.3)
  )
)

n <- length(stdcols$dark)
plot(1:n, rep(1,n), pch = 19, cex = 3, col = stdcols$dark, xaxt = "n", yaxt = "n",
     xlim = c(0, n+1), ylim = c(4,0))
points(1:n, rep(2,n), pch = 19, cex = 3, col = stdcols$light)
points(1:n, rep(3,n), pch = 19, cex = 3, col = stdcols$transp)
