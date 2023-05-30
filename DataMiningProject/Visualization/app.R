
library(shiny)

install.packages("plotrix")
library(plotrix)
path <- "/Users/Sakshi Singh/Desktop/most_spend.csv"

# reading contents of csv file
content <- read.csv(path)
# contents of the csv file
print (content)

table(content)
vect <- c(7,3,5,24,5,11,2,4,14)
lbl <-  c( "Clothing","Cafes","Ent.","Fast Food","Gas & fuel","Groceries","H.I","M&R", "Shopping")

server <- function(input, output) {
  output$distPlot <- renderPlot({
    hist(vect, col = 'darkgray', border = 'white')
    # Plot the chart.
  })
}

ui <- fluidPage(
  
    mainPanel(plotOutput("distPlot"))
  )


shinyApp(ui = ui, server = server)