## these functions will take in a squared matrix,
## calculate and cache the inverse matrix

## this function will set and get a 2 x 2 matrix
## and cache(set) and get the matrix's inverse

makeCacheMatrix <- function(x = matrix()) {

		## declare variable for the inverse matrix
		matInv <- NULL  

		## declare constructor function as a new matrix is
		## recieved it sets the inverse matrix to null
		setMatrx <- function(y){ 
				matInv <<- NULL
				x <<- y
		}

		## gets matrix
		getMatrx <- function() x

		## sets inverse matrix
		setInv <- function(inv) matInv <<- inv

		## gets inverse matrix
		getInv <- function() matInv

		## returns to user list of functions
		list( setMatrx = setMatrx, 
			getMatrx = getMatrx,
			setInv = setInv, 
			getInv = getInv)
}


## this function will test if the inverse of matrix exists,
## and it will set and/or return the inverse matrix

cacheSolve <- function(x, ...) {

		## gets value of inverse matrix 
		## for current object instance variable
		invMat <- x$getInv()

		## logical test if inverse matrix variable is null or not
		if(!is.null(invMat)){

				## if logical test is true print message
				message("getting cached inverse")

				## returns to user inverse matrix variable
				return(invMat)
		}

		## if logical test is false
		## gets matrix
		mat <- x$getMatrx()

		## calculates inverse matrix
		invMat <- solve(mat)

		## sets inverse matrix to object instance variable
		x$setInv(invMat)

		## returns to user inverse matrix variable
		invMat		
}
