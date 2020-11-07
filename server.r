
library(shiny)

library(dplyr)

library(leaflet)

library(DT)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$data <-DT::renderDataTable(USArrests, options = list(
    pageLength = 5,
    initComplete = I('function(setting, json) { alert("done"); }')
  ))
  m1<-leaflet()
  m2<-addTiles(m1)
  m3<-addMarkers(m2,lng=72.820,lat=18.960,popup="1.Mumbai|population:12622500")	  	       
  m3<-addMarkers(m3,lng= 77.210,lat=28.670,popup="2.Dilli|population:10400900")  	      
  m3<-addMarkers(m3,lng=88.360,lat= 22.570,popup="3.Kolkata|population:4852800") 	 	       
  m3<-addMarkers(m3,lng= 77.560,lat=12.970,popup="4.Bengaluru|population:4547300")	  	      
  m3<-addMarkers(m3,lng= 80.270,lat=13.090,popup="5.Chennai|population:4466900")	    	  	      
  m3<-addMarkers(m3,lng=72.580,lat=23.030,popup="6.Ahmadabad|population:3724300")    	  	       
  m3<-addMarkers(m3,lng=78.480,lat=17.400,popup="7.Hyderabad|population:3654900")	    	  	       
  m3<-addMarkers(m3,lng=73.840,lat=18.530,popup="8.Pune|population:2691000")	    	  	       
  m3<-addMarkers(m3,lng=80.330,lat= 26.470,popup="9.Kanpur|population:2682600")	    	 	       
  m3<-addMarkers(m3,lng= 72.820,lat=21.200,popup="10.Surat|population:2578400")	  	  	      
  m3<-addMarkers(m3,lng= 75.800,lat=26.920,popup="11.Jaipur|population:2462500")	  	  	      
  m3<-addMarkers(m3,lng=80.920,lat=26.850,popup="12.Luknow|population:2338500")	  	  	       
  m3<-addMarkers(m3,lng=79.080,lat=21.160,popup="13.Nagpur|population:2173200")	  	  	       
  m3<-addMarkers(m3,lng=75.860,lat=22.720,popup="14.Indore|population:1692400")	  	  	       
  m3<-addMarkers(m3,lng= 77.400,lat=23.240,popup="15.Bhopal|population:1519100")	  	  	      
  output$bbmap <- renderLeaflet(m3)
  
  
})
