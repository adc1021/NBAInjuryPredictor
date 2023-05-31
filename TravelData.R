library(airball)

buffer <- '
Sys.setenv(VROOM_CONNECTION_SIZE = 262144)
'
eval(parse(text = buffer))

travel_data <- nba_travel(start_season = 1990,
                          return_home = 3,
                          phase = c("RS", "PO"),
                          flight_speed = 550)

# Print the data frame
print(travel_data)
