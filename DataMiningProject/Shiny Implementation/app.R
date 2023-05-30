

ggplot(
  data = df,
  aes(x="", y=Age)
) + geom_point(color='darkgreen')

sp <- fluidPage(
  
  sidebarLayout(
    
    sidebarPanel(
      selectInput(
        inputId = 'var1',
        label = 'Column X Axis',
        choices = colnames(df)
      ),
      
      selectInput(
        inputId= 'var2',
        label = 'Column Y Axis',
        choices = colnames(df)
      )
    ),
    
    mainPanel(
      plotOutput("scatter")
    )
  )
)


server <- function(input, output) {
  output$scatter <- renderPlot({
    ggplot(
      data = df,
      aes_string(x=input$var1, y=input$var2)
    ) + geom_point(color='darkgreen')
  })
}

shinyApp(sp, server)