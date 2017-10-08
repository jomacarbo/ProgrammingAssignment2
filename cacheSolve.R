
cacheSolve <- function(x, ...) {
inv <- x$getinv()
if(!is.null(inv)) {
	message("getting cached result")
	return(inv)
  	}
data <- x$get()
inv <- solve(data, ...)
x$setinv(inv)
inv
}
