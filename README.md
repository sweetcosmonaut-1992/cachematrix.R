# cachematrix.R
Programming Assignment 2: Lexical Scoping

##This code defines a function called "makeVector" in R. Within the function, 
the value of "m" is assigned to itself, then "x" is updated with the value of "y" and "m" is updated with the result of the assignment of "x" to "y"

makeVector <
  m <- 
    m
  
  x <<- y
  m <<- 
    x <<- y

##the script to be an anonymous function in R that takes a variable "x" as an argument and returns another anonymous function.
The second anonymous function is defined within the first and has an argument "y".
The variable "m" is initialized to "NULL" and then the second anonymous function is defined to assign the value of "y" to "x" and return "m".
  
  - function(x = numeric()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<
        m - NULL
    }

##This is a function called "cachemean" that calculates the mean of the input data.
The function first checks if the mean has already been cached using the "$getmean" method
If the mean is not null, the function returns the cached mean and prints a message "getting cached data

  cachemean <- function(x, ...) {
    m <- x$getmean()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- mean(data, ...)
    x$setmean(m)
    m
  }
  
 ##The function makeCacheMatrix creates an object to store a matrix and its inverse. The object contains four methods:
 set: This method updates the stored matrix with a new value.
 get: This method returns the stored matrix.
 setInverse: This method updates the stored inverse matrix with a new value.
 getInverse: This method returns the stored inverse matrix.
  
    makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
      x <<- y
      inv <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) inv <<- inverse
    getInverse <- function() inv
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  }
  
  ##The cacheSolve function is a function that takes an argument x, and an optional argument ..., and returns the inverse of the matrix.
  The function first checks if the inverse is already stored in the cache, and if so, returns the cached inverse with a message "getting cached data".
  If the inverse is not stored in the cache, the function computes the inverse of the matrix by calling the solve function and stores the result in the cache using x$setInverse.
  This allows for faster computation in the future if the same inverse is needed again.
  
    cacheSolve <- function(x, ...) {
    inv <- x$getInverse()
    if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setInverse(inv)
    inv
  }
  
  
