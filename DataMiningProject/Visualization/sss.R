path <- "/Users/Sakshi Singh/Desktop/M-spend.csv"

# reading contents of csv file
content <- read.csv(path)
# contents of the csv file
print (content)

table(content)

pie3D(vect,col = hcl.colors(length(vect), "Spectral"),
      border = "white",labels = lbl,explode = 0.1, main = "Spending habits of adolescents")

pie3D(v<-c(1,4,3,12,3,3,14,9),col = hcl.colors(length(v), "Spectral"),
      border = "white",labels = lbl,explode = 0.1, main = "Spending habits of working data")

pie3D(c(2,1,9,3,2,11,3),col = hcl.colors(length(mid_sr), "Spectral"),
      border = "white",labels = c("Ent.","Gas & Fuel","Groceries","Home Imp.","Insurances","M&R","Shopping"),explode = 0.1, main = "Middle Age & above spending data")

table(mid_sr)
mid_sr<-c("Insurances",
"Mortgage & Rent",
"Groceries",
"Mortgage & Rent",
"Shopping",
"Groceries",
"Gas & fuel",
"Entertainment",
"Home Improvement",
"Groceries",
"Home Improvement",
"Mortgage & Rent",
"Insurances",
"Groceries",
"Home Improvement",
"Shopping",
"Groceries",
"Groceries",
"Mortgage & Rent",
"Mortgage & Rent",
"Mortgage & Rent",
"Groceries",
"Mortgage & Rent",
"Groceries",
"Groceries",
"Entertainment",
"Mortgage & Rent",
"Mortgage & Rent",
"Shopping",
"Mortgage & Rent",
"Mortgage & Rent")

path <- "/Users/Sakshi Singh/Desktop/gender.csv"

# reading contents of csv file
content <- read.csv(path)
# contents of the csv file
print (content)

table(content)

f <- c(6,3,3,14,3,11,2,2,3,18)
m <- c(2,1,6,10,5,12,3,1,15,5)
l <- c("Clothing","Coffee Shops","Entertainment","Fast Food","Gas & fuel","Groceries","Home Imp","Insurances","M&R","Shopping")

pie3D(f,col = hcl.colors(length(f), "Spectral"),
      border = "white",labels = l,explode = 0.1, main = "Influence of Gender on Spending(Female)")

pie3D(m,col = hcl.colors(length(m), "Spectral"),
      border = "white",labels = l,explode = 0.1, main = "Influence of Gender on Spending(Male)")
