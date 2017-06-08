##### Basic Operations #####

x <- 5 # defining a variable 

x * 2 # performing operations on variables 

x <- x * 2 # redefining a variable 


##### Defining a Character Variable #####

y <- 'Abanti' # this is a character 


##### Vectors #####

z <- c(2, 3, 4) # defining a vector

z <- c(z, y) # concatonate 


##### Matricies ##### 

A <- matrix(data = c(1:10), nrow = 2)
B <- matrix(data = 91:100, nrow = 2)

C <- A + B # operations with matricies 

D <- A * B # this operation should not have worked bc of incompatible dimensions 

D <- A %*% B # how to do matrix multiplication in R, put % around the operation 

a11 <- A [1,1] # subseting a matrix, calling the number from the first row, first column in matrix A
b23 <- B [2,3] # subsetting a matrrix, calling the number from the second row, third column in matrix B

b2j <- B [2, ] # subsetting an entire row
bi2 <- B [, 2] # subsetting an entire column

colnames(A) <- c('Chandler', 'Monica', 'Rachel', 'Ross', 'Phoebe') # adding names to columns in matricies
rownames(A) <- c('hookups', 'breakups') # adding names to rows in matricies 

chandler <- A [, 'Chandler'] # subetting a matrix through column names already defined 

hookups <- A ['hookups', ] # subsetting a matrix through row names already defined

tmp_row <- c(21:25)

A <- rbind(A, tmp_row) # binding row to bottom of matrix A
A <- rbind(tmp_row, A) # binding row to top of matrix A 

B <- rbind(B [1, ], tmp_row, B [2, ]) # binding row in between rows of matrix A

tmp_col <- c(40:42)

B <- cbind(B, tmp_col) # binding column to end of matrix B 

B [c(1, 3), ] # subsetting a matrix via vector, called rows 1 and 3 from matrix B

A [, c('Chandler', 'Monica')] # subsetting a matrix via vector names, called columns Chandler and Monica from matrix A

A <- A [2:4, ] # a way to get rid of a row/extracts whateever row you specify, calls only the 2nd to 4th rows, doesn't present the first row 
A <- A [-1, ] # a way to get rid of a row, gets rid of the row number after the - sign 
A <- A [, -5] # a way to get rid of a column, gets rid of the column number af the - sign


##### Dataframes #####

# dataframes can have multiple classes of data, however columns must have the same class 
# cannot perform matrix operations on dataframes 

col1 <- c(0:4)
col2 <- c(5:9)
col3 <- c('a', 'b', 'c', 'd', 'e')

dA <- data.frame(col1, col2, col3) # created a dataframe 

col4 <- dA [, 'col1'] + dA [, 'col2'] # performing operations on a subset of dataframe columns

dA <- cbind(dA, col4) # adding a column to the end of a dataframe, same way as we did for matricies

dA$col1 # method of subsetting a column in a dataframe and lists, add the $ before column name


##### Lists ##### 

# container that you can put anything in, dataframes, vectors, matricies, single values, factors and they remain in their proper formats
# powerful and helps keep a clean workplace, good for organization where you don't want so many variables, just clump them in a list and call them whenever needed 

list.1 <- list(A, dA, col3, x) 

names(list.1) <- c('smoothie', 'milkshake', 'hosico', 'colby') # naming different list entries

list.1$smoothie # method of calling a list entry 
list.1[['smoothie']] # method of calling a list entry, double brackets only for lists 
list.1[[1]] # method of calling a list entry via number, double brackets only for lists 

list.1[[2]]$col1 # method of subsetting column 1 held inside the smoothie (2) entry, works the same for rows
list.1[[2]] [1, ] # method subsetting row 1 held inside the smoothie (2) entry, works the same for columns 














