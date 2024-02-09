data_cust <- fread("data_customer.csv")
data_pers <- fread("data_personal.csv")

data <- merge(data_cust, data_pers, by = "CustomerId")
