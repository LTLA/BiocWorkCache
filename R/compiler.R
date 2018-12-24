#' @importFrom rmarkdown render
.compiler <- function(target) {
    if (!file.exists(paste0(target, "_cache"))) {
        system(sprintf("R --no-save --slave -e 'rmarkdown::render(\"%s\")'", paste0(target, ".Rmd")))
    }
    invisible(NULL)
}
