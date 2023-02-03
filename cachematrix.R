makeVector <
  m <- 
    m
  
  x <<- y
  m <<- 
    x <<- y
  
  
  - function(x = numeric()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<
        m - NULL
    }
    get <- function() x
    setmean <-
      setmean  function(mean) m <<- mean
    getmean <- function() m
    list(set = set, get = get, setmean = setmean, getmean = getmean)
  }
  
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