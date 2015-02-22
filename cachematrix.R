## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix
## function to find the inverse of a square invertible matrix and then
## cache the result. The matrix is assumed to be invertible, no checking is done.
## returns 4 element list
##   1. set value of matrix
##   2. get value of matrix
##   3. set value of inverse matrix
##   4. get value of inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setInverse <- function(solve) s <<- solve
        getInverse <- function() s
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)

}


## cacheSolve
##   function solves for the matrix inverse of the special matrix created with 
##   makeCacheMatrix
##   First checks to see if inverse already calculated
##   If yes, then returns the cached solution
##   If no, then calculates AND caches the solution

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                s <- x$getInverse()
	        if(!is.null(s)) {
	                message("getting cached data for matrix inverse")
	                return(s)
	        }
	        data <- x$get()
	        s <- solve(data, ...)
	        x$setInverse(s)
        m
}
