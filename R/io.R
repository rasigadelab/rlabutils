#' I/O helper function
#'

#' @title Automatic file name extension for SVG file
#' @export
svgf <- function(file, width, height)   eval( {
  svg(sprintf("%s.svg", file), width, height)
}, envir = .GlobalEnv)

#' @title Automatic file name extension for PDF file
#' @export
pdff <- function(file, width, height)   eval( {
  cairo_pdf(sprintf("%s.pdf", file), width, height)
}, envir = .GlobalEnv)

#' Export to Excel via the clipboard
#' @export
xlclipboard <- function(x, dec = ".") {
  if(is.matrix(x)) {
    x <- data.table(row = rownames(x), x)
  }
  write.table(x, file = "clipboard", sep = "\t", na = "", row.names = FALSE, dec = dec)
}
