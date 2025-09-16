#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

#library(readr)
library(dplyr)
#library(readxl)
library(ggplot2)
library(shiny)
library(lubridate)


# data importation
#data_allocine <- read_csv2("data/data_allocine.csv")

# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("Application Allocine"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput("choix_genre", 
                        "choix du genre : ", 
                        choices = unique(data_allocine$genre),
                        selected = "Documentaire")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("plot_evolution")
        )
    )
)
