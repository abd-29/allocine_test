#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)
library(lubridate)


# Define server logic required to draw a histogram
function(input, output, session) {

    output$plot_evolution <- renderPlot({

      data_allocine %>%  
        filter(genre == input$choix_genre) %>% 
        mutate(annee_sortie = year(date_sortie)) %>% 
        count(annee_sortie) %>% 
        ggplot() + geom_line(aes(x = annee_sortie, y = n)) +
        labs(title = "Evolution du nombre de film par an",
             subtitle = input$choix_genre)
    })

}
