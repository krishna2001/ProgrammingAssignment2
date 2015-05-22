## Creating two functions, one to set the value of a matrix.
## The second will cache the value of the inverse of the matrix.

## makeCacheMatrix will create a matrix object 
## The first routine sets the matrix.
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) 
  x <<- y
  i <<- NULL

}
## Then we get the matrix.
get <- function() {
  x
}
##  Then we set the inverse.
setinverse <- function(inverse) {
  i <<- inverse
}
## Then we get the inverse.
getinverse <- function() {
  i
}
## Then we return a list of our output.
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}

## This will calculate the inverse of the matrix produced by 
## make cache Matrix.
## If the matrix is unchanged and the inverse has already been 
## calculated, it will use the cached inverse.

cacheSolve <- function(x, ...) {
  m <- x$inverse()
## test to see if inverse has been calculated.
## if so, return cached data.
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
## if inverse has not been calculated, compute using
## R's solve function.
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
}

