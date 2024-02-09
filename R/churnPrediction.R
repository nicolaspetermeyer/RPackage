churnPrediction <- function(data, id) {
  #check if customer id exists
  if (!id %in% data$CustomerId) {
    stop("Customer ID not found")
  }
  Exit <- glm(Exited ~ CreditScore + Gender + Age + Tenure + Balance  + NumOfProducts + HasCrCard + IsActiveMember + EstimatedSalary, family = binomial, data = data)
  cust <- data[data$CustomerId == id,]
  data$predict <- predict(Exit, data, type="response")
  return(data$predict[data$CustomerId == id])
}


