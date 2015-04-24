"""
set - Takes a row and column value and sets this in the matrix.
get - Returns the (non-inverted) matrix.
setInverse  - set the variable 'i' to contain the inverse
getInverse  - get the variable 'i' and display to user.

# Function should be able to set the values of a matrix
"""
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL # Variable to store inverse matrix
        
        set <- function(row, col)
        {
                #  Creates a new matrix entry based on row and column values
                x <<- rbind(x, c(row, col))
                i <<- NULL
        }
        
        get <- function()
        {
                x
        }
        setInverse = function(inverse)
        {
               i <<- inverse 
        }
        getInverse = function()
        {
               i 
        }
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


'''
cacheSolve gets the inverse from the makeCacheMatrix function. If
it is not null we get the value and return it. Otherwise we 
calculate the inverse, cache the value and display it.
'''
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getInverse()
        if(!is.null(inverse))
        {
                message("Inverse precalculated - Extracting from cache...")
                return(inverse)
        }
        
        data <- x$get()
        inverse <- solve(data)
        x$setInverse(inverse)
        inverse
}
