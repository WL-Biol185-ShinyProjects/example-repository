library(shiny)
library(leaflet)
library(tidyverse)
library(shinydashboard)


function(input, output, session) {
  
  output$plot <- renderPlot({
    
    val <- mean(mtcars[[input$filter]])
    mtcars %>%
      filter_(input$filter > val) %>%
      ggplot(aes(mpg, hp)) + geom_point()
    
  })
  
}
  