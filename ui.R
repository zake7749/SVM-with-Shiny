library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Visualization of Support Vector Machine"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("costs",
                  "Cost value",
                  min = 1,
                  max = 1000,
                  value = 10)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      p("Hi there, this is a simple demo of svmlib and shinyapp."),
      p("You can observe how the cost value in svm influence the decesion surface by sliding the bar."),
      p("Hope this project is able to give you a deeper view of suppor vector machine."),
      br(),
      p("Fork this proj on",a("Github",href="https://github.com/zake7749/SVM-with-Shiny")),
      p("Author: Justin Yang"),
      plotOutput("svmPlot")
    )
  )
))