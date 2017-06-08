##### Functions ##### 

# General Form of a Function 
# func.name <- function (whatever arguments you want the function to take) {

#  instructions 

#  return (result) - option, tells the function what the output should be, otherwise it will be the last thing that was produced in the function 
#}

#

test.func <- function(x, y) {
  
  vector <<- c(x, y) # <<- outputs the variable to the global workspace only if there is a variable of the same name in the global workspace 
  
  ans <- mean(vector)
  
  print(paste('The mean is', ans))
  
  return(ans)

}

##### Default Value ##### 
test.func <- function(x, y = 10) { #assumes default value of y as 10 if not specified 
  
  vector <<- c(x, y) # <<- outputs the variable to the global workspace only if there is a variable of the same name in the global workspace 
  
  ans <- mean(vector)
  
  print(paste('The mean is', ans))
  
  return(ans)
  
}

##### ANOVA ##### 
# data should be structured such that all factors are in different columns

site <- c(twan02$Site, twan02$Site, twan02$Site)
site <- rep(twan02$Site, 3) #another way to do the above command 
density <- c(twan02$`50-100`, twan02$`101-150`,twan02$`151-200`)
depth <- c(rep(colnames(twan02) [2], 7), rep(colnames(twan02) [3], 7), rep(colnames(twan02) [4], 7))

dataset <- data.frame(density, site, depth)


abanti.is.better.than.john <- function(dataset, y, x1, x2) {

  model <- paste(y, ' ~ ', x1, ' * ', x2)
  result <- lm(formula = model, data = dataset)
  result <- anova(result)
  

}

dataset2 <- read.csv('/Users/abantitagore/Documents/R Lessons/prob2.csv') #import csv file from commandline 

yy <- abanti.is.better.than.john(dataset = dataset2, y = 'X', x1 = 'Method', x2 = 'Time')

source(file = '/Users/abantitagore/Documents/R Lessons/Abanti_Function.R') #call functions saved in other scripts to working script


