#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr)
#~/DataScienceSpecialization/09DataProducts/
# Load the data
data <- read.csv("Forbes2000_2017_WorldBank.csv", nrows = 2000, header = TRUE)
data<-data[,-1]


# Create the shiny server
shinyServer(function(input, output) {
  
  # Data filtering reaction on input parameters
  dataFilter <- reactive({
     #if(input$byRanking==TRUE){
      paste0("data[data$Rank > ", input$rank[1], " & data$Rank < ", input$rank[2],
      ifelse(input$country != "all", paste0(" & data$Country == '", input$country,"'"),paste0("")),
      ifelse(input$sector != "all", paste0(" & data$Sector == '", input$sector,"'"),paste0("")),
      ifelse(input$industry != "all", paste0(" & data$Industry == '", input$industry,"'"),paste0("")),
      ifelse(input$region != "all", paste0(" & data$Region == '", input$region,"'"),paste0("")),
      ",]")
  })
  
  # Data filtering
  output$dataTable <- renderDataTable({
    eval(parse(text = dataFilter()))
  })
  

  
})