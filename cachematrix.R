## Inverting a matrix function

## Write a short comment describing this function

makeCacheMatrix <- function(sample = matrix()) {
        inv_samp <- NULL
        set <- function(x) {
                Sample <<- x
                inv_samp <<- NULL
        }
        get <- function() sample
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv_samp
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## This function invert a matrix

cacheSolve <- function(sample, ...) {
        inv <- sample$getInverse()
        if (!is.null(inv)) {
                message("getting cached matrix ")
                return(invsample)
        }
        mat <- sample$get()
        invsample <- solve(mat, ...)
        sample$setInverse(invsample)
        invsample
}
