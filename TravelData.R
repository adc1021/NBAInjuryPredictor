library(airball)

buffer <- '
Sys.setenv(VROOM_CONNECTION_SIZE = 262144)
'
eval(parse(text = buffer))

travel_data_1990 <- nba_travel(start_season = 1970,
                          end_season = 1970,
                          phase = c("RS", "PO"))

total_distance <- sum(travel_data_1990$Distance)


print(total_distance)
