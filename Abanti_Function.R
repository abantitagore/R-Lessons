abanti.is.better.than.john <- function(dataset, y, x1, x2) {
  
  model <- paste(y, ' ~ ', x1, ' * ', x2)
  result <- lm(formula = model, data = dataset)
  result <- anova(result)
  
  
}