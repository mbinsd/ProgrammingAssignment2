###Programming Assignment 2
#Data Science - John Hopkins
#Mark Blackman

makeCacheMatrix<-function(m){
  mi<-NULL
  #### Create or "set" Matrix  
  set<-function(y){
    m<<-y
    mi<<-NULL
  } 
  #### Retrieve or "get" matrix  
  get<-function() m
  #### Cache the inverse of m or the set matrix
  setmi<-function(matrixinverse) mi <<- matrixinverse
  ###Retrieve or "get" the cached matrix inver
  getmi<-function() mi
  list(set = set, get = get,setmi = setmi, getmi=getmi)
}
#####Use makeCacheMatrix to see if there's cached version of the inverse matrix
#if not solve(matrix) and cache

cacheSolve<-function(m, ...){
  mi<-m$getmi()
  if(!is.null(mi)) {
    message("getting cached inverse matrix")
    return(mi)
  }
  data<-m$get()
  mi<-solve(data)
  m$setmi(mi)
  mi
}
