## Put comments here that give an overall description of what your
## functions do
## cachematrix.r: made my InakiFLZ

## Write a short comment describing this function


	## makeCacheMatrix is a function that gets a matrix as an input, the sets a value for that matrix,
	get its value and set the inverse to finish getting that inverse.
	

makeCacheMatrix <-function(x=matrix()) {    ##take a matrix as an input
	invMatrix <-NULL  
	setMatrix <-function(y) {   			##set the value of the Matrix
		x <<-y
		invMatrix <<- NULL
	}
	
	getMatrix <-function()x 								##get the value
	setInverse <-function(inverse) invMatrix <<-inverse		##set the value of the InverMatrix
	getInverse <-function () invMatrix						##get the value of the InverMatrix
	list(setMatrix=setMatrix, getMatrix=getMatrix, setInverse=setInverse, getInverse=getInverse)
															##a list with the four argumments
}


## Write a short comment describing this function

	##cacheSolve is a function that takes the result of makeCacheMatrix. If inverseMatrix is empty,it gets the original matrix. If it has any value, it retturns the message "Getting Cached Matrix" with the cached matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        #First, the function gets the value of the InverMatrix
        invMatrix<- x$getInverse()
        if (!is.null(invMatrix)) {							##if inverseMatrix is not null (!)
        	message("Getting Cached Matrix")				##Type the message (function message)
        	return (invMatrix)								##Also returns the InverMatrix
        }
        else												##if invMatrix is NULL
        MatrixData<-x$getMatrix()							##get the original Matrix Data
        invMatrix <-solve(MatrixData,...)					##use solve to Inverse the argumments
        x$setInverse(invMatrix)								##set the InverMatrix
        return(invMatrix)									##returns the new InverMatrix
}

