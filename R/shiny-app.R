
#' launch_shiny_app
#'
#' Run the shiny app from this package.
#'
#' @param ... params for shiny::runApp
#'
#' @return none
#' @export
#'
#' @examples
launch_shiny_app <- function(...)
{
  app_pkg <- getPackageName()
  # load this package, which is not loaded in global.R (this would be not compatible with packrat)
  require(app_pkg, character.only = TRUE)    # TODO: substitute with 'library'
  # run the app
  shiny::runApp(appDir = system.file("app", package = app_pkg), ...)
}

#' launch_shiny_app
#'
#' @param packrat_dir packrat folder
#' @param ... params for shiny::runApp
#'
#' @return
#' @export
#'
#' @examples
launch_shiny_app_packrat <- function(packrat_dir = ".",
                                     ...)
{
  # setwd(packrat_dir)
  # setwd("..")
  # source("packrat/init.R", local = TRUE)
  # shiny::runApp(appDir = system.file("shiny-app", package = getPackageName()), ...)
}
