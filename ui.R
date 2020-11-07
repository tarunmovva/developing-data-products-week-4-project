library(shiny)
library(leaflet)

navbarPage("MY PROJECT", id="main",
           tabPanel("THE MAP CONTAINS THE CITIES I HAVE VISITED IN INDIA", leafletOutput("bbmap", height=1000)),
           tabPanel("Data OF TYPES OF CRIMES IN THE USA", DT::dataTableOutput("data")))