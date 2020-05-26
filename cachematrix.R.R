## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# I simply set the input "x" as a martix and then 
# set olved value as "k" as a NULL. I also changed each reference to "mean" to solve
makeCacheMatrix <- function(x = matrix(sample(1:100, 10))) {
  k <- NULL
  setfun <- function(y) {
    k <<- y
    k <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) k <<- solve
  getinverse <- function() s
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

# Here I do the same as above. I also set mean to solve
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  k <- x$getsolve()
  if(!is.null(k)) {
    message("getting inversed matrix")
    return(k)
  }
  data <- x$get()
  k <- solve(data, ...)
  x$setsolve(k)
  k
}

