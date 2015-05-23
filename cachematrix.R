## This functions calculate de inversed of a non square matrix

## THis function create a list that manipulate a matrix using gets and sets of the data and 
## the inversed matrix

makeCacheMatrix <- function(x = matrix()) {
        inversedMatrix <- NULL
        set <- function(y)
        {
                x <<- y
                inversedMatrix <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inversedMatrix <<- inverse
        getInverse <- function() inversedMatrix
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## This function try to get the inversed matrix at the cached data and if doesn't exist then calculate

cacheSolve <- function(x, ...) {
        library(MASS)
        inversedMatrix <- x$getInverse()
        if(!is.null(inversedMatrix)) {
                return(inversedMatrix)
        }
        data <- x$get()
        inversedMatrix <- ginv(matX)
        x$setInverse(inversedMatrix)
        inversedMatrix
}


