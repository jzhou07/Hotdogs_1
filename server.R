library(shiny)

hotdogs <- read.csv("hot_dogs.csv")
# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$text1 = renderText({input$category})
    output$text2 <- renderText({
      input$goButton
      isolate(input$category)
    })

    output$distPlot <- renderPlot({
      input$goButton
      isolate(
      if (input$category == "Calories") {with(hotdogs, boxplot(Calories ~ Type, main = "Calories"))}
      else
      {with(hotdogs, boxplot(Sodium ~ Type, main = "Sodium"))}
      )
    })
})
