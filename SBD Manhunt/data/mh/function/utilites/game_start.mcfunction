# Form teams
team join Runner @a[scores={JoinAsRunner=1..}]
team join Hunter @a[team=!Runner]

# Start Timer
schedule function mh:utilites/timer 1t

# Clean Start
function mh:utilites/clean_start

spreadplayers ~ ~ 50 100 true @a

# Effects for Everyone
function mh:utilites/effects_for_everyone

# Effects for Runners
function mh:utilites/effects_for_runners

# Effects for Hunters
function mh:utilites/effects_for_hunters

# Give compasses to Hunters
function mh:compass/give_compass

# Reset trigger
scoreboard players set @a StartGame 0
trigger StartGame set 0

tellraw @a "игра началась сучки"
