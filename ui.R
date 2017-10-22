#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
data <- read.csv("Forbes2000_2017_WorldBank.csv", nrows = 2000, header = TRUE)
chooseCountry<-names(table(data$Country))
chooseCountry<-append(chooseCountry,"all",0)

chooseSector<-names(table(data$Sector))
chooseSector<-append(chooseSector,"all",0)

chooseIndustry<-names(table(data$Industry))
chooseIndustry<-append(chooseIndustry,"all",0)

chooseRegion<-names(table(data$Region))
chooseRegion<-append(chooseRegion,"all",0)

# Define UI for Fake Contacts Generator application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Forbes 2000 Rankig 2017"),

  sidebarPanel(
    
    #checkboxInput("byRanking", h5("Filter by Ranking"), TRUE),
    h3("Filter by"),
    sliderInput("rank", "Rank:",
                min = 0, max = 2000, value = c(0,2000)),
    
    selectInput("country", "Choose Country",
                list("Country" = c(chooseCountry)),
                selected = "all"),
    selectInput("region", "Choose Region",
                list("Region" = c(chooseRegion)),
                selected = "all"),
    selectInput("sector", "Choose Sector",
                list("Sector" = c(chooseSector)),
                selected = "all"),
    selectInput("industry", "Choose Industry",
                list("Industry" = c(chooseIndustry)),
                selected = "all"),

    h6("- Note -"),
    h6("The original data set can be found here:"),
    tags$a("kaggle/ash316", href="https://www.kaggle.com/ash316/forbes-top-2000-companies")
    
  ),

  
  # Main panel displying the filtered data
  mainPanel(
    dataTableOutput('dataTable')
  )
))