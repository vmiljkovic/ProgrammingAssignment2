
## first function is the same as example, 
## just with data type matrix and function names changed

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(inverse) m <<- inverse
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}


## second function is the same as in the example, 
## just with the call of "solved" function for inverse matrix calculation. 

cacheSolve <- function(x=matrix()) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        
        m <- solve(data)
        
        x$setmatrix(m)
        m        
}
