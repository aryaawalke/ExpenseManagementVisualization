install.packages("shiny")
library(shiny)


install.packages("ggplot")
library(ggplot2)

f <- c(6,3,3,14,3,11,2,2,3,18)
m <- c(2,1,6,10,5,12,3,1,15,5)
l <- c("Clothing","Coffee Shops","Entertainment","Fast Food","Gas & fuel","Groceries","Home Imp","Insurances","M&R","Shopping")

data<- data.frame(f,l,m)
data

path <- "F:/MIT/Data Mining/Data Mining Project/Form_Responses.csv"

# reading contents of csv file
content <- read.csv(path)
# contents of the csv file
print (content)

table(content)

table(content$Financial_Concerns)



Age<-content$Age
Gender<-content$Gender
Qualification<-content$Qualification
Occupation<-content$Occupation

df<-data.frame(Age,Gender,Qualification,Occupation)
df
