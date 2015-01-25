## Matirx construct that has setters and getters for the matrix itself and
## the inverse of the matrix

## The code is copied from makeVector example with certain changes to the names
## of the variables to fit this task better

makeCacheMatrix <- function(x = matrix()) {
    ## Returns a list of possible functions
    
    ## the cached inverse value
    inverse <- NULL
    set <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    get <- function() x
    ## set and get inverse value
    setinverse <- function(solved) inverse <<- solved
    getinverse <- function() inverse
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Cached inverse matrix calculator

## Code is again taken from the example with some variables changed

cacheSolve <- function(x, ...) {
    ## Returns a matrix that is the inverse of 'x'
    ## takes a CacheMatrix construct as an argument
    
    inverse <- x$getinverse()
    ## check if there is a cached value
    if(!is.null(inverse)) {
        ## This only prints when there is a cached value
        ## it allows to confirm that the fucntion works as intended
        message("getting cached data")
        return(inverse)
    }
    data <- x$get()
    ## Actual calculation of the inverse
    inverse <- solve(data, ...)
    ## Store the newly calculated inverse
    x$setinverse(inverse)
    inverse
}
