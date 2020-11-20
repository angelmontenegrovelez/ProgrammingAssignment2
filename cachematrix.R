## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

## Hi, my name is Angel Montenegro Velez. The change was to aggregate an extra function for
##the user define a 3x3 matrix, where each vector is a column of the final matrix.

define_matrix<- function(c1,c2,c3){
  c1
  c2
  c3
  matrix(c(c1,c2,c3),nrow=3,ncol=3)
}

makeCacheMatrix<- function(x=define_matrix()){
  inv<- NULL
  set<- function(y){
    x<<- y
    inv<<- NULL
  }
  get<- function(){x}
  setinverse<- function(inverse){inv<<-inverse}
  getinverse<- function(){inv}
  list(set=set, get=get,setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

## This function calculate the inverse of the matrix defined in the first function

cacheSolve<- function(x,...){
  inv<- x$getinverse()
  if(!is.null(inv)){
    message("Getting Cached Data")
  }
  mat<-x$get()
  inv<- solve(mat,...)
  x$setinverse(inv)
  inv
}
