#these functions create an invertible matrix that stores its reverse cache
makeCacheMatrix <- function(x = matrix()){
  inv <- NULL
  set <- function(y){
         x <<- NULL
         inv <- NULL
  }
  get <- function(){x}
  setinverse <- function(inverse) {inv <<- inverse}
  getinverse <- function() {inv}
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
} 
# this function takes the matrix created by the previous function and calculates its inverse
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
}solved the matrix, the inverse of the cache will be taken
