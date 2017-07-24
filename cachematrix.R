## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#Function who recover a cached matrix, contain a get and set statement. 
#Care with chenges in original matrix, can cause inconsistency in cache.
makeCacheMatrix <- function(x = matrix()) {
        inverso <- NULL
        
        set <- function(mt){
                x <<- mt
                inverso <<- NULL
        }
        get <- function() x
        
        setInverso <- function(setinverso) inverso <- setinverso
        getInverso <- function() inverso
        
        list(set = set, 
             get = get, 
             setInverso = setInverso,
             getInverso = getInverso)
}

## Write a short comment describing this function

#verify if have a cache from matriz, and return if find.
#Else, solve the inversion, store i cache and return the correctly answer.
cacheSolve <- function(x, ...) {
        reverso <- x$getInverso()
        if(!is.null(reverso)){
                message('Data already in cache!')
                message('Recovering from cache...')
                return(reverso)
        }else{
                dados <- x$get()
                reverso <- solve(data, ...)
                x$setInverso(reverso)
                return(reverso)        
        }
}
