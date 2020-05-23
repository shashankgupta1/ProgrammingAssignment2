## functions to cache the inverse of a matrix


## function below creates a matrix object that can cache the inverse of matrix
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  
}


## Below function computes the inverse of matrix returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Inverse of X matrix is returned 
  inv <- x$getInverse()
  if(!is.null(inv)){
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv 
}
