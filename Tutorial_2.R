##### The For-Loop ##### 

class <- c('vijay', 'ashley', 'stephen', 'john', 'abanti', 'raj') # defining a vector 
grades <- c(90, 52, 89, 88, 100, 92) # defining ANOTHER vector 

gpa.sheet <- data.frame(class, grades) # defining a dataframe 

# the paste command takes multiple statements and merges them together 
paste("student X's grade was", gpa.sheet[4, 'grades']) # taking the fourth row from column grades in dataframe gpa sheet 

dim(gpa.sheet) # dimension command, gives you dimensions of whatever shit 

# general form of for-loop: 
# for(variable in list.of.values) {
#   (perform operations with variabel)
# }
# for loop will keep going till it's run through the values of the given vector 

count <- 0 

for(student in gpa.sheet [, 'class']) { 
  # inside the curly brackets we're gunna put the instructions of what we want R to do
  # always use {} for a function like this 
  
  count <- count + 1 # keeps track of how many times the loop is running, step not always necesssary
  
  tmp <- paste(student, 'had a grade of', gpa.sheet$grades[count])
  
  print(tmp) # R is cycling through a list and the variable gets updated with each cycle
}


sort(gpa.sheet$grades, decreasing = T)


##### The While-loop ##### 

# general form of while loop: 
# while (logical.statement) {
#   <do this action>
# }
# while will keep doing the thing until whatever conditions you set up is no longer true 

count <- 0 

while(count < 100) {
  count <- count + 1
  print(count)
}








