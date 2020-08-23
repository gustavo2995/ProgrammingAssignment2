## Put comments here that give an overall description of what your
## functions do

## this function is in charge of taking the invertible matrix

makeCacheMatrix <- function(x = matrix()){
  inv <- NULL
  set <- function(y){
         x <<- NULL
         inv <- NULL
  }
  get <- function(){x}
  setinverse <- function(inverse) {inv <<- inverse}
  getinverse <- function() {inv}
  list(set = set, get = get, setinverse = setinverse, getinverse, = getinverse)
} 


## this function calculates the inverse of the matrix

cachesolve <- function(x, ...) {
  inv <- x$getinverse()
  if (¡is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat <- x$getinverse()
  inv <- solve(mat, ...)
  x$getinverse(inv)
  inv
}
