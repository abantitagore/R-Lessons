##### Logical Statements #####

1 == 1 # this means is 1 is equal to 1, this is a logical comparison 
1 == 2 
1 == '1' # this is not supposed to work because they are different classes 
12 == '12'

A <- matrix(data = 1:4)
B <- matrix(data = c(1, 2, 3 ,5), nrow = 1)

A == B # this will run a logical comparison for every entry in both matricies 

C <- matrix(data = c(1, 2, 3 ,5), nrow = 1)

A == C # this will not work because dimensions are different 

##### If Statements ##### 

# general if statement structure 
# if (logical) {
#   do this 
# }

students <- c('Abanti', 'John', 'Bela', 'Beyonce', 'Rihanna')
grades <- c(95, 59, 100, 94, 60)

class <- data.frame(students = students, grades = grades) 

for (row in 1:dim(class)[1]) {
  tmp.row <- class[row,]
  if (tmp.row$grades == 100) {
    msg <- paste0(tmp.row$students, ' is a God.')
    print (msg)
  }
  else if (tmp.row$grades >= 90 && tmp.row$grades < 100) { # && means and, both conditions need to be met
    msg <- paste0(tmp.row$students, ' is a genius.') # merges whatever you want with no spaces in bewteen
    print(msg)
  }
  else if (tmp.row$grades >= 60) {
    msg <- paste0(tmp.row$students, ' is not that dumb.')
    print(msg)
  }
  else {
    msg <- paste0(tmp.row$students, ' is an idiot.')
    print(msg)
  }
}

##### If using or #####
student.extreme <- 3 

if (student.extreme > 95 | student.extreme < 5) { # | means or, either one condition needs to be met
  print('student is extreme')
}


##### Logical Comparisons as Numbers #####

x <- 6 
y <- 10 
z <- 6 

x.y <- x == y 
x.z <- x == z

# turning the logical statements into numbers 

x.y <- as.numeric(x.y)
x.z <- as.numeric(x.z)

x.y 
x.z

##### The Which Statement ##### 

# the which command helps you find variables you're looking for
p <- c(100:1)

which (p == 20) # tells you in which location the condition is met 

which(p < 20)

P <- matrix(data = 1:100, nrow = 10)

which(P > 60)
which(P > 60, arr.ind = TRUE)

P.data <- as.data.frame(P) # turns P into a data frame instead of a matrix

which(P.data > 60)
which(P.data > 60, arr.ind = TRUE) # arr.ind gives the row and column values 

##### Combining Principles #####

P.data.ind <- which(P.data > 60 & P.data <= 90, arr.ind = TRUE)
P.data.ind <- P.data.ind [, 'col'] # gunna look for the column named column
P.data.ind <- unique(P.data.ind) #removes all the doubles and only counts unqiue values 

P.data[, P.data.ind] # we want all columns but only these specific rows





