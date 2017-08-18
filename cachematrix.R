## Put comments here that give an overall description of what your
## functions do

# I am writing an R function which is able to cache potentially time-consuming computations. 
# Matrix inversion can be a costly computation and therefore beneficial to cache the 
# inverse of a matrix rather than compute it repeatedly. 
# The funtions, namely, "makeCacheMatrix" and "cacheSolve" will be used to cache the inverse of a matrix

## Write a short comment describing this function

# makeCacheMatrix is a function which creates a special "matrix" object that can 
# cache its inverse for the input (which is an invertible square matrix). 
#It contains the following functions
# set           set the value of a matrix
# get           get the value of a matrix
# setinv        set the cahced value (inverse of the matrix)
# getInv        get the cahced value (inverse of the matrix)

makeCacheMatrix <- function(x = matrix()) {
  
  ini_Cache <-NULL
  
  Set = function(new_Value)
  
      x <<- new_Value
    
  ini_Cache <<- NULL
  
}

get <- function() x

setinv <- function(inverse) ini_Cache <<- inverse

getinv <- function() ini_Cache


list (set=set, get=get, setinv=setinv, getinv=getinv)

}

## Write a short comment describing this function
# The cacheSolve function computes the inverse of the special "matrix" 
# created by makeCacheMatrix. When the inverse has been computed 
# and the matrix remain unchanged, then the cachesolve should return the 
# inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  ini_Cache <- x$getinv()
  if(!is.null(ini_Cache)) {
    message("getting cached result")
    return(ini_Cache)
  }
  
  # else get the matrix, compute the inverse and store it in
  # the cache
  data <- x$get()
  ini_Cache <- solve(data, ...)
  x$setinv(ini_Cache)
  
  # return the inverse
  inverse

