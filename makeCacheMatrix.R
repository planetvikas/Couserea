## This function sets a matrix, gets a matrix, set matrix inverse and get matrix
## inverse.  

##If user input is not a matrix or matrix is not square, it produces 
## an error message.

makeCacheMatrix <- function(x = matrix()) {
  if(is.matrix(x)==FALSE ){
    message("Error! Input must be a matrix")}
  else if(ncol(x)!=nrow(x)) {
    message("Error! Input must be a square matrix")
  }
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}
