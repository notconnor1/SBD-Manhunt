# Waiting to Start the Game
scoreboard players enable @a JoinAsRunner
scoreboard players enable @a StartGame
scoreboard players enable @a reload

execute run tag @a[scores={JoinAsRunner=1}] add AddRunner
execute at @a[scores={JoinAsRunner=1}] run function mh:messages/tellraw_runner_join
execute run scoreboard players set @a[scores={JoinAsRunner=1}] JoinAsRunner 0
 
execute if score @r reload matches 1.. run function mh:utilites/reload
execute if score @r reload matches 1.. run scoreboard players set @a reload 0

execute if score @r StartGame matches 1.. run function mh:start/game_start
execute if score @r StartGame matches 1.. run scoreboard players set @a StartGame 0

# IDK doesnt work

#execute if score @r JoinAsRunner matches 1.. run function mh:messages/msg_for_runners

# Update compass dimension
function mh:compass/detect_dimension

# Update Compass
function mh:compass/compass

# Remove compasses from runners
clear @a[team=Runner] minecraft:compass

# Display Timer 
function mh:utilites/timer_display

# Win Screen for Hunters (for Runners made via Advancement)
execute if score @r[team=Runner] Deaths matches 1.. run scoreboard players set "GameOver" GameOver 1
execute if score @r[team=Runner] Deaths matches 1.. run function mh:messages/game_over_hunters

# Loop itself
schedule function mh:loop_main 1s
