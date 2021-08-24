## sorry, my english not very good so if you read my comment and feel confused， i am sorry about that.
## by the way,thank you take your time for read this code!

## Put comments here that give an overall description of what your
## functions do
## 此程序对矩阵进行求逆，同时将结果进行缓存//this code computes the inverse and cache it's outcome
## 

## Write a short comment describing this function
## 创建一组函数，里面包括设置矩阵、取出矩阵、设置矩阵求逆值、取出矩阵求逆值// create a code,the code could do
## 1. set a matrix 
## 2. get the matrix
## 3. set the computes outcome of matrix inversion
## 4. get the computes outcome of matrix inversion

makeCacheMatrix <- function(x = matrix()) {
  inversion <- NULL
  set <- function(y){
    x <<- y
    inversion <<- NULL
  }
  get <- function() {x}
  set_inversion <- function(inversion_sub) {inversion <<- inversion_sub}
  get_inversion <- function() {inversion}
  list(set = set,get = get,set_inversion =set_inversion,get_inversion=get_inversion)
  
}


## Write a short comment describing this function
## 该函数取出inversion,并判断其值是否为空，不为空则返回其值，为空则对矩阵进行求逆//
## this code get the variable of inversion and use if function to judgment return inversion or computes inversion

cacheSolve <- function(x, ...) {
  inversion <- x$get_inversion()   #!!!!注意，若get_inversion后不带（），则输出结果有误
  
  #inversion <- NULL
  if (!is.null(inversion)){
    message("getting cached data")
    return(inversion)
  }
  data <- x$get()
  inversion <- solve(data)
  x$set_inversion(inversion)
  inversion
  ## Return a matrix that is the invmerse of 'x'
}
