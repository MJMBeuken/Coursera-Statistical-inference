## Store content matrix and inverse
## y is argument and assigns it to matrix x

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(z) {
                x <<- z
                inv <<- NULL
        }
        get <- function() {
                x
        }
        setinv <- function(solveMatrix) {
                inv <<- solveMatrix
        }
        getinv <- function() {
                inv
        }
        list(set = set,
             get = get,
             setinv = setinv,
             getinv = getinv)
}



## computes inverse matrix above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getinv()
        if(!is.null(inv)) {
                message("Getting cacheddata")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinv(inv)
        inv
}        




 



