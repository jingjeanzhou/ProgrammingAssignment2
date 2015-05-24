## the functions below creates a matrix and also returns its inverse 

## the following function creates a square matrix. 

makeCacheMatrix <- function(x = matrix()) { 
   inv <- NULL 
   set <- function(y) { 
   x <<- y 
   inv <<- NULL 
  } 
  get <- function() x 
  setinv <- function(inverse) inv <<- inverse 
  getinv <- function() inv 
  list(set = set, get = get, setinv = setinv,getinv = getinv) 
} 

## the following function returns a matrix that is the inverse of 'x', assuming x is invertable. 
cacheSolve <- function(x, ...) { 
  inv <- x$getinv() 
  if(!is.null(inv)) { 
          message("getting cached data") 
  return(inv) 
} 
data <- x$get() 
inv <- solve(data) 
27   x$setinv(inv) 
28   inv 
29 } 
