## Matirx construct that has setters and getters for the matrix itself and
## the inverse of the matrix

## The code is copied from makeVector example with certain changes to the names
## of the variables to fit this task better

makeCacheMatrix <- function(x = matrix()) {
    ## the cached inverse value
    inverse <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    ## set and get inverse value
    setinverse <- function(solved) inverse <<- solved
    getinverse <- function() inverse
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
