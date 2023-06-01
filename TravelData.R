library(airball)

buffer <- '
Sys.setenv(VROOM_CONNECTION_SIZE = 262144)
'
eval(parse(text = buffer))

# travel_data_1990 <- nba_travel(start_season = 1970,
#                           end_season = 1970,
#                           phase = c("RS", "PO"))

# total_distance <- sum(travel_data_1990$Distance)


# print(total_distance)

player_metrics <- nba_player_travel(
    start_season = 1960,
    end_season = 1961,
    return_home = 3,
    team = "Boston Celtics",
    player = "Bill Russell"
)

print(player_metrics)
