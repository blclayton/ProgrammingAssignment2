## Put comments here that give an overall description of what your
## functions do

## `makeCacheMatrix`: This function creates a special "matrix" object
##  that can cache its inverse.
##  `cacheSolve`: This function computes the inverse of the special
##  "matrix" returned by `makeCacheMatrix` above. If the inverse has
##  already been calculated (and the matrix has not changed), then
##  `cacheSolve` should retrieve the inverse from the cache.
##
##  Computing the inverse of a square matrix can be done with the `solve`
##  function in R. For example, if `X` is a square invertible matrix, then
##  `solve(X)` returns its inverse.
##
##  For this assignment, assume that the matrix supplied is always
##  invertible.


## This function creates a special "matrix" object
##  that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setmatrix <- function(INVERSE) m <<- INVERSE
    getmatrix <- function() m
    matrix(set = set, get = get,
    setmatrix = setmatrix,
    getmatrix = getmatrix)

}


##  This function uses the 'solve' function in R to return the inverse of the special
##  "matrix" returned by `makeCacheMatrix` above. For this function we assume that the
##  matrix supplied is always invertible.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        m <- x$getmatrix()
        if(!is.null(m)) {
            message("getting cached data")
            return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmatrix(m)
        m







}











