library(shiny)
library(leaflet)
library(ggmap)
library(dplyr)

# Loading the grouped data which is the data grouped by Employer, State and summarized their Approvals and denials to display in the map

load("~/STA631/H1B-employer-data-analysis/Files/Visualization Dashboard/Grouped_data.RData")


ui <- fluidPage(
    leafletOutput(outputId = "map", width = "100%", height = "700px")
)


server <- function(input, output, session) {
    # Creating a new data frame to use it to get the latitude and longitude data with the help of geocode() function from ggmap package
    city_state <-Grouped_data[,c(2,3)] %>% unique()
    
    city_state <- geocode(paste(city_state$City, city_state$State, sep = ", "), output = "latlon") %>%select(lat,lon) %>%bind_cols(city_state)
    
    # Merging the obtained latitude and longitude data into our Grouped data
    
    map_data <- left_join(Grouped_data, city_state, by = c("City", "State"))
    
    output$map <- renderLeaflet({
        # Create the leaflet map object
        leaflet(data = Grouped_data) %>%
            # Add a basemap tile layer
            addTiles() %>%
            # Group the markers by state and city
            addCircleMarkers(group = ~State, ~City,
                             radius = 10,
                             color = "red",
                             fillOpacity = 0.8,
                             stroke = FALSE,
                             label = ~paste("City: ", City, "<br>",
                                            "State: ", State, "<br>",
                                            "Total number of Initial Approvals: ", total_initial_approvals,"<br>",
                                            "Total number of Initial Denials: ", total_initial_denials,"<br>",
                                            "Total number of Continuing Approvals: ", total_Continuing_approvals,"<br>",
                                            "Total number of continuing denials: ", total_continuing_denials,"<br>"))
    })
}

shinyApp(ui, server)
