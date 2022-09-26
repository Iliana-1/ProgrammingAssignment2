## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function
makeCacheMatrix <- function(a = matrix()) {
        i <- NULL
        set <- function(b) {
                a <<- b
                i <<- NULL
        }
        get <- function() a
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

cacheSolve <- function(a, ...) {
        i <- a$getinverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- a$get()
        i <- solve(data, ...)
        a$setinverse(i)
        i
}

B <- matrix(c(1,2,3,4),2,2)
B1 <- makeCacheMatrix(B)
cacheSolve(B1)
