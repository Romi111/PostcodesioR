#' Postcode validation
#'
#' Convenience method to validate a postcode.
#'
#' @importFrom httr GET
#'
#' @param postcode A string. Valid UK postcode.
#'
#' @export
#'
#' @return A logical vector: True or False (meaning respectively valid or invalid postcode).
#'
#' @examples
#' postcode_validation("EC1Y 8LX") # returns TRUE
#' postcode_validation("XYZ") # returns FALSE
#'
postcode_validation <- function(postcode) {
  r <- GET(paste0("https://api.postcodes.io/postcodes/", postcode, "/validate"))
  extract_results(r)
}
