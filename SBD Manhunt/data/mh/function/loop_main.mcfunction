# Waiting to Start the Game
scoreboard players enable @a JoinAsRunner
scoreboard players enable @a StartGame
scoreboard players enable @a reload

execute if score @r reload matches 1.. run function mh:utilites/reload
execute if score @r reload matches 1.. run scoreboard players set @a reload 0

execute if score @r StartGame matches 1.. run function mh:utilites/game_start
execute if score @r StartGame matches 1.. run scoreboard players set @a StartGame 0

# IDK doesnt work

#execute if score @r JoinAsRunner matches 1.. run function mh:messages/msg_for_runners

# Update compass dimension
function mh:compass/detect_dimension

# Update Compass
function mh:compass/compass

# Remove compasses from runners
clear @a[team=Runner] minecraft:compass

# Win Screen
#execute if score @r[team=Runner] Deaths matches 1.. run function mh:messages/win_screen

# Loop itself
schedule function mh:loop_main 10t