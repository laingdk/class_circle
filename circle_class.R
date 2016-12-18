#' An S3 class to represent a circle
#' Circle
#' @param radius, a number
#' @return A circle object with a certain radius
#' @export
#' @examples
#' circle(5)
circle <- function(radius){
        #set check
        if (radius <= 0) stop('radius not in range')
        if (is.na(radius)) stop('no input')
        if (radius == Inf) stop('no infinite radii')
        if (is.character(radius)) stop('no strings allowed')
        if (is.list(radius)) stop('no lists allowed')
        if (length(radius) != 1) stop('only one number please')
        value <- list(radius=radius)
        
        #set class
        attr(value, "class") <- "circle"
        value
}

#' circle area() function
#' 
#' @return The area of a circle with radius \code{radius}
#' @examples
#' area()
area.circle <- function(obj){
        print(pi*obj$radius**2)
}


#' circle circumference() function
#' 
#' @return The circumference of a circle with radius \code{radius}
#' @examples
#' circumference()
circumference.circle <- function(obj){
        print(2*pi*obj$radius)
}
