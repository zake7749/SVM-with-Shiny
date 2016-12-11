source("svm.R") # include ntu svm and plotting methon.

shinyServer(function(input, output) {
  
  output$svmPlot <- renderPlot(plotResult(getSVMClassifier(input$costs)))
  
})