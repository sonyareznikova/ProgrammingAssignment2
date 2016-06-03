## Put comments here that give an overall description of what your
## functions do

## It creates a matrix, gets the value of the matrix, sets and gets the value of its inverse

makeCacheMatrix <- function(x = matrix()) {
      i <- NULL
      set <- function(y) {
          x <<- y
          i <<- NULL
       }
      get <- function() x
      setinv <- function(inv) i <<- inv
      getinv <- function() i
      list(set = set, get = get, setinv = setinv, getinv = getinv)
 }


## Gets the inverse if there is one, calculates it if there's none and stores it in cache

 cacheSolve <- function(x, ...) {
      i <- x$getinv()
      if(!is.null(i)) {
            message("getting cached data")
            return(i)
      }
      data <- x$get()
      i <- solve(data)
      x$setinv(i)
}
