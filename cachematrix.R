## This code are two functions which will cache the inverse of a matrix.
## 

## This function creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    mat <- NULL
    set <- function(y) {
        x <<- y
        mat <<- NULL
    }
    get <- function() x
    setmatrix <- function(solve) mat <<- solve
    getmatrix <- function() mat
    list (set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
}


## This function returns the inverse of the matrix returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
    mat <- x$getmatrix()
    if (!is.null(mat)) {
        message ("Getting cached matrix")
        return (mat)
    }
    data <- x$get()
    mat <- solve(data,...)
    x$setmatrix(mat)
    mat
        ## Return a matrix that is the inverse of 'x'
}
cacheSolve (z)
