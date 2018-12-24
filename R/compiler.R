#' @importFrom rmarkdown render
.compiler <- function(target) {
    if (!file.exists(paste0(target, ".html"))) {
        env <- new.env()
        render(paste0(target, ".Rmd"), envir=env)
        rm(env)
        gc()
    }
    invisible(NULL)
}
