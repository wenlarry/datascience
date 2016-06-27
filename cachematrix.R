## Catching the Inverse of a Matrix

## This function creates a special matrix that cache its inverse

makeCacheMatrix<-matrix(1:9, ncol = 3)

makeCacheMatrix

        
     
## This function computes the inverse of the special matrix
## returned by makeCacheMatrix.If the inverse has already
## been calculated(and the matrix has not changed)
## then the cachesolve should retrieve the inverse from
## the cache.       
 


cacheSolve <-svd(makeCacheMatrix)

cacheSolve

cacheSolve<-chol (makeCacheMatrix)

cacheSolve
                         

## Use of any 2 solve functions i.e svd() or chol()









