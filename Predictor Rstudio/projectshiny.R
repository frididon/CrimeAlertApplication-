library(caret)
library(maps)
library(leaflet)
library(shiny)
library(dplyr)
library(shinydashboard)
library(shinythemes)
library(lubridate)
library(RColorBrewer)
library(leaflet.extras)
library(rdrop2)
library(spatstat)

##Models are in virtual environment, can be loaded from finalproject.rmd


##Creating the UI of the application, with menu options of Make Prediction and View Statistics
ui <- dashboardPage(
    dashboardHeader(title="CRIME PREDICTION TOOL", titleWidth = 1400),
    dashboardSidebar(
      sidebarMenu(
        menuItem("Make Prediction", tabName = "mp"),
        menuItem("View Statistics", tabName = "vs")
      )
    ),
    
    dashboardBody(
      tabItems(
        # First tab content
        tabItem(tabName = "mp",
                h2("Predict Crime"),
                sidebarLayout(
                  sidebarPanel(
                    h3("Enter Values"),
                    selectInput(inputId = "neighbourhood", label = "Neighbourhood:",
                                choices = c(
                                  "Adair Park","Adams Park","Adamsville","Almond Park","Amal Heights","Ansley Park",
                                  "Arden/Habersham","Ardmore","Argonne Forest","Arlington Estates","Ashley Courts",
                                  "Ashview Heights","Atkins Park","Atlanta Industrial Park","Atlanta University Center",
                                  "Atlantic Station","Audobon Forest","Audobon Forest West","Baker Hills","Bakers Ferry",
                                  "Bankhead","Bankhead Courts","Bankhead/Bolton","Beecher Hills","Ben Hill","Ben Hill Acres",
                                  "Ben Hill Forest","Ben Hill Pines","Ben Hill Terrace","Benteen Park","Berkeley Park",
                                  "Betmar LaVilla","Blair Villa/Poole Creek","Blandtown","Bolton","Bolton Hills","Boulder Park",
                                  "Boulevard Heights","Brandon","Brentwood","Briar Glen","Brookhaven","Brookview Heights",
                                  "Brookwood","Brookwood Hills","Browns Mill Park","Buckhead Forest","Buckhead Heights",
                                  "Buckhead Village","Bush Mountain","Butner/Tell","Cabbagetown","Campbellton Road",
                                  "Candler Park","Capitol Gateway","Capitol View","Capitol View Manor","Carey Park",
                                  "Carroll Heights","Carver Hills","Cascade Avenue/Road","Cascade Green","Cascade Heights",
                                  "Castleberry Hill","Castlewood","Center Hill","Chalet Woods","Channing Valley",
                                  "Chastain Park","Chattahoochee","Chosewood Park","Collier Heights","Collier Hills",
                                  "Collier Hills North","Colonial Homes","Cross Creek","Custer/McDonough/Guice","Deerwood",
                                  "Dixie Hills","Downtown","Druid Hills","East Ardley Road","East Atlanta",
                                  "East Chastain Park","East Lake","Edgewood","Elmco Estates","Englewood Manor","English Avenue",
                                  "English Park","Fairburn","Fairburn Heights","Fairburn Mays","Fairburn Road/Wisteria Lane",
                                  "Fairburn Tell","Fairway Acres","Fernleaf","Florida Heights","Fort McPherson","Fort Valley",
                                  "Garden Hills","Georgia Tech","Glenrose Heights","Grant Park","Green Acres Valley",
                                  "Green Forest Acres","Greenbriar","Greenbriar Village","Grove Park","Hammond Park","Hanover West",
                                  "Harland Terrace","Harris Chiles","Harvel Homes Community","Heritage Valley","High Point",
                                  "Hills Park","Home Park","Horseshoe Community","Hunter Hills","Huntington","Inman Park","Ivan Hill",
                                  "Joyland","Just Us","Kings Forest","Kingswood","Kirkwood","Knight Park/Howell Station","Lake Claire",
                                  "Lake Estates","Lakewood","Lakewood Heights","Laurens Valley","Leila Valley","Lenox","Lincoln Homes",
                                  "Lindbergh/Morosgo","Lindridge/Martin Manor","Loring Heights","Magnum Manor","Margaret Mitchell",
                                  "Marietta Street Artery","Mays","Meadowbrook Forest","Mechanicsville","Mellwood","Memorial Park",
                                  "Midtown","Midwest Cascade","Monroe Heights","Morningside/Lenox Park","Mozley Park","Mt. Gilead Woods",
                                  "Mt. Paran Parkway","Mt. Paran/Northside","Niskey Cove","Niskey Lake","North Buckhead","Norwood Manor",
                                  "Oakcliff","Oakland","Oakland City","Old Fairburn Village","Old Fourth Ward","Old Gordon",
                                  "Orchard Knob","Ormewood Park","Paces","Peachtree Battle Alliance","Peachtree Heights East",
                                  "Peachtree Heights West","Peachtree Hills","Peachtree Park","Penelope Neighbors","Peoplestown",
                                  "Perkerson","Peyton Forest","Piedmont Heights","Pine Hills","Pittsburgh","Pleasant Hill","Polar Rock",
                                  "Pomona Park","Poncey-Highland","Princeton Lakes","Randall Mill","Rebel Valley Forest","Regency Trace",
                                  "Reynoldstown","Ridgecrest Forest","Ridgedale Park","Ridgewood Heights","Riverside","Rockdale",
                                  "Rosedale Heights","Rue Royal","Sandlewood Estates","Scotts Crossing","Sherwood Forest","South Atlanta",
                                  "South River Gardens","South Tuxedo Park","Southwest","Springlake","State Facility","Summerhill",
                                  "Swallow Circle/Baywood","Sweet Auburn","Sylvan Hills","Tampa Park","The Villages at Carver",
                                  "The Villages at Castleberry H","The Villages at East Lake","Thomasville Heights","Tuxedo Park",
                                  "Underwood Hills","Venetian Hills","Vine City","Virginia Highland","Washington Park","Wesley Battle",
                                  "West End","West Highlands","West Lake","West Manor","West Paces Ferry/Northside","Westhaven",
                                  "Westminster/Milmar","Westover Plantation","Westview","Westwood Terrace","Whitewater Creek",
                                  "Whittier Mill Village","Wildwood (NPU-C)","Wildwood (NPU-H)","Wildwood Forest","Wilson Mill Meadows",
                                  "Wisteria Gardens","Woodfield","Woodland Hills","Wyngate")),
                    selectInput(inputId = "crime", label = "Type of Crime:",
                                choices = c("Aggravated Assault", "Auto Theft", "Burglary", "Homicide", 
                                            "Larceny", "Rape", "Robbery")),
                    dateInput("date", "Date:"),
                    actionButton(inputId = "predict", label = "Make Prediction")
                   
                  ),
                  
                  mainPanel(
                    leafletOutput("mymap", width = 750, height = 650),
                    h4(textOutput("preds"), style="text-align:center; font-style: italic"),
                    h1(textOutput("pred"),style="color:red; text-align:center; font-weight: bold"))
                )),
        
        
        # Second tab content
        tabItem(tabName = "vs",
                h2("View Statistics"),
                sidebarLayout(
                  sidebarPanel(
                    selectInput(inputId = "year_choice", label = "Choose Year:",
                                choices = c("2014", "2015", "2016")),
                  ),
                  mainPanel(
                    plotOutput("lineG"),
                    br(),
                    br(),
                    plotOutput("histo")
                )
                )
        )
        )
        )
    )
    

##Creating the server side of the application that will deal with the computation, and also the map values.
server <- function(input, output, session) {
  rv <- reactiveValues()

  ##Sending the map to the UI
  output$mymap <- renderLeaflet({
    leaflet(world.cities %>%
              dplyr::filter( 
                name == "Atlanta"
              )) %>%
      addTiles() %>%
      addMarkers(lat = ~lat, lng = ~long)
  })
  
  ##Detailing the processes that should occur when the predict button is pressed.
  observeEvent(input$predict,{
    rv$b <- input$neighbourhood
    rv$c <- input$crime
    rv$d <- input$date
    
    rv$a <- factor(rv$a)
    
    rv$e <- month(rv$d)
    rv$e <- factor(rv$e) 
    
    rv$f <- day(rv$d)
    rv$f <- factor(rv$f) 
    
    rv$g <- weekdays(rv$d, abbreviate=T)
    rv$g <- factor(rv$g, levels = c("Mon","Tue","Wed","Thu","Fri","Sat","Sun"))
    
     temp <- cN %>%
      group_by(neighborhood) %>%
      dplyr::filter(neighborhood == rv$b)
     
     cluster1 <- as.numeric(temp$cluster)
     
    ##Deciding which model to use, depending on the crime type chosen
    if(rv$c == "Aggravated Assault"){
      prediction1 <-  predict(glmnet_model_aggA, data.frame(cluster = factor(cluster1), Day = rv$f, Month = rv$e, Weekday = rv$g), type='prob')
      prediction1 <- round(as.numeric(prediction1$Yes)*100, digits = 2)
      prediction2 <- toString(prediction1)
      prediction2 <- paste(prediction1, "%")
     } else if(rv$c == "Auto Theft"){
       prediction1 <-  predict(glmnet_model_AutoT, data.frame(cluster = factor(cluster1), Day = rv$f, Month = rv$e, Weekday = rv$g), type='prob')
       prediction1 <- round(as.numeric(prediction1[1])*100, digits = 2)
       prediction2 <- toString(prediction1)
       prediction2 <- paste(prediction1, "%")
     } else if(rv$c == "Burglary"){
       prediction1 <-  predict(glmnet_model_Bur, data.frame(cluster = factor(cluster1), Day = rv$f, Month = rv$e, Weekday = rv$g), type='prob')
       prediction1 <- round(as.numeric(prediction1[1])*100, digits = 2)
       prediction2 <- toString(prediction1)
       prediction2 <- paste(prediction1, "%")
     } else if(rv$c == "Homicide"){
       prediction1 <-  predict(glmnet_model_homicide, data.frame(cluster = factor(cluster1), Day = rv$f, Month = rv$e, Weekday = rv$g), type='prob')
       prediction1 <- round(as.numeric(prediction1[1])*100, digits = 2)
       prediction2 <- toString(prediction1)
       prediction2 <- paste(prediction1, "%")
     } else if(rv$c == "Larceny"){
       prediction1 <-  predict(glmnet_model_Lar, data.frame(cluster = factor(cluster1), Day = rv$f, Month = rv$e, Weekday = rv$g), type='prob')
       prediction1 <- round(as.numeric(prediction1[1])*100, digits = 2)
       prediction2 <- toString(prediction1)
       prediction2 <- paste(prediction1, "%")
     } else if (rv$c == "Rape"){
       prediction1 <-  predict(glmnet_model_rape, data.frame(cluster = factor(cluster1), Day = rv$f, Month = rv$e, Weekday = rv$g), type='prob')
       prediction1 <- round(as.numeric(prediction1[1])*100, digits = 2)
       prediction2 <- toString(prediction1)
       prediction2 <- paste(prediction1, "%")
     } else if(rv$c == "Robbery"){
       prediction1 <-  predict(glmnet_model_Robbery, data.frame(cluster = factor(cluster1), Day = rv$f, Month = rv$e, Weekday = rv$g), type='prob')
       prediction1 <- round(as.numeric(prediction1[1])*100, digits = 2)
       prediction2 <- toString(prediction1)
       prediction2 <- paste(prediction1, "%")
     } else {
       prediction2 <- "Error"
     }
      
     ##Get the latitude and longitude values for the neighbourhood selected.
     mapInfo <- lattitude %>%
       dplyr::filter(neighborhood == rv$b)

     latti <- as.numeric(mapInfo$lat)
     
     mapInfo <- longitude %>%
       dplyr::filter(neighborhood == rv$b)
     
     longi <- as.numeric(mapInfo$longg)
     
    ##Change view of the map to neighbourhood chosen when a prediction is made.
     leafletProxy("mymap", data = world.cities) %>%
        clearMarkers() %>%
        addCircleMarkers(lat = latti, lng = longi, radius = 150, color = "red") %>%
        addMarkers(lat = latti, lng = longi, popup = (sprintf("Predicted %s chance of %s occuring in %s", prediction2,rv$c, rv$b))) %>%
        setView(lng = longi, lat = latti, zoom = 15)
      
      output$pred <- renderText({
        (prediction2)
      })
      
      output$preds <- renderText({
        sprintf("Prediction of %s in %s for %s is:",rv$c, rv$b, rv$d)
      })
  })
     
  ##When year choice is selected, plot graphs according to the year choice chosen
  observeEvent(input$year_choice,{
    rv$m <- input$year_choice
  if(rv$m == 2016){
    h<- ggplot(data = c2016, aes(x = Month, y = dailycount, col = crime)) + geom_point() + geom_line() +
      scale_x_continuous(breaks= pretty_breaks()) + ggtitle("Crimes per Month for 2016")
    y<- ggplot(data = top2016crimeDaily, aes(x = neighborhood, y=total_count))+ geom_bar(stat = 'identity')+coord_flip() +xlab('Neighborhood') +ylab('Total Crime Count') + ggtitle("Total Crime Count per Neighbourhood for 2016")
  } else if(rv$m == 2015){
    h<- ggplot(data = c2015, aes(x = Month, y = dailycount, col = crime)) + geom_point() + geom_line() +
      scale_x_continuous(breaks= pretty_breaks()) + ggtitle("Crimes per Month for 2015")
    y<- ggplot(data = top2015crimeDaily, aes(x = neighborhood, y=total_count))+ geom_bar(stat = 'identity')+coord_flip() +xlab('Neighborhood') +ylab('Total Crime Count') + ggtitle("Total Crime Count per Neighbourhood for 2015")
  } else if(rv$m == 2014){
    h<- ggplot(data = c2014, aes(x = Month, y = dailycount, col = crime)) + geom_point() + geom_line() +
      scale_x_continuous(breaks= pretty_breaks()) + ggtitle("Crimes per Month for 2014")
    y<- ggplot(data = top2014crimeDaily, aes(x = neighborhood, y=total_count))+ geom_bar(stat = 'identity') +coord_flip() +xlab('Neighborhood') +ylab('Total Crime Count') + ggtitle("Total Crime Count per Neighbourhood for 2014")
  }
    
  ##Output the line graph plotted above
  output$lineG <- renderPlot({
    h
  })
  
  ##Output the histogram plotted above
  output$histo <- renderPlot({
    y
  })
  })
}

shinyApp(ui = ui, server = server)
