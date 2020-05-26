## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# I simply set the input "x" as a martix and then 
# set value as "k" as a NULL using "<<-" operator. 
#I also changed each reference mean to "inverse"
# I also tried to test the fucntion at end of this assignement
makeCacheMatrix <- function(x = matrix()) {
  k <- NULL
  setfun <- function(y) {
    x <<- y
    k <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) k <<- inverse 
  getinverse <- function() k
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

# Here I do the same as above. I also set mean to solve
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  k <- x$getinverse()
  if(!is.null(k)) {
    message("getting inversed matrix")
    return(k)
  }
  data <- x$get()
  k <- solve(data, ...)
  x$setinverse(k)
  k
}

#testing this function.
# I just want to create a matrix called 'Z'

Z <- matrix(c(1:10), 3, 3)
#I believe that this will be difficult to happened. but I then 
# decided to cache the matrix and change it to 'Z1'
Z1 <- makeCacheMatrix(Z)
cacheSolve(Z1)

# from here i would get my cached data.
