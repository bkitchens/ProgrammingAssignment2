## Implementing a function that is able to cache result
## from the time-consuming calculation of inversing of matrix.

## This function create a special "matrix", which is actually a 
## list containing a function to get and set the value of the matrix
## and get and set the cache of inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        ## used to store calculated result
        setinverse <- function(invmat) m <<- invmat
        ## used to get calculated result, return null if not set
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}
