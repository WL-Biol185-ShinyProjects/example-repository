library(shiny)
library(leaflet)
library(tidyverse)
library(shinydashboard)

source("map.r")
source("button.r")

dashboardPage(
  dashboardHeader(title = "this is my app x"),
  dashboardSidebar(),
  dashboardBody(plotOutput("plot"),
                selectInput("filter", "Filter", choices = colnames(mtcars))
                )
)

