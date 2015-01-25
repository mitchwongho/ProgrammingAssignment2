## Put comments here that give an overall description of what your
## functions do

##
## Returns a list of funtions that encapsulates
## the characteristics of a cached matrix
## 
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    
    list( set = set, get = get, 
            setinverse = setinverse,
            getinverse = getinverse)
}

##
## Returns the inverse of a cachable matrix 'x'. Calculates
## the inverse of the matrix and caches the result if neccassary
##
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    if ( !is.null(i) ) {
        ## return cached inverse
        return(i)
    } 
    ## solve for inverse of matrix
    m <- x$get()
    i <- solve(, ...)
    x$setinverse(i)  ## cache the solved value
    i ## return the inverse of matrix
}
