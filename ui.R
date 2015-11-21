library(shiny)

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
  headerPanel("Hotdog Report!"),
  sidebarPanel(
    radioButtons("category", "Report Category: ",
                c("Calories" = "Calories",
                   "Sodium" = "Sodium")),
    actionButton("goButton", "Display"),
    p(''),
    p(''),
    p(''),
    p(''),
    p(''),
    p('Note: The data set used here is hot_dogs.csv, Original source: Consumer Reports, June 1986, pp.366 - 367')
#    p('Original source: Consumer Reports, June 1986, pp.366 - 367')
  ),
  # Show a plot of the generated distribution
  mainPanel(
    p('Current Selection: '),
    verbatimTextOutput('text1'),
    p('Current Plot is for: '),
    verbatimTextOutput('text2'),
    plotOutput("distPlot")
  )
))
