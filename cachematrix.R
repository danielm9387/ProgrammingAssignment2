## The following functions cache the invers of a matrix

## makeCacheMatrix defines the matrix and it's inverse

makeCacheMatrix <- function(x = matrix()) {
	inv = null
	set = function(y) {
		x <<- y
		inv <<- null
	}
	get = function () x
	setinv = function(inverse) inv <<- inverse
	getinv = function() inv
	list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## cacheSolve returns the inverser of the matrix defined in makeCacheMatrix

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
	inv = x$getinv()

	if (!is.null(inv)){
		message("getting cached data")
		return(inv)
	}

	met.data = x$get()
	inv = solve(mat.data,...)
	
	x$set(inv)
	return(inv)	
}
