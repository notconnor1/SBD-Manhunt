# Form teams
execute run team join Runner @a[tag=AddRunner]
team join Hunter @a[tag=!AddRunner]

# Start Timer
schedule function mh:utilites/timer 1t

# Clean Start
function mh:start/clean_start
spreadplayers ~ ~ 50 100 true @a[team=Runner]

# Effects for Everyone
function mh:start/effects_for_everyone
# Effects for Runners
function mh:start/effects_for_hunters
# Effects for Hunters
function mh:start/effects_for_runners

# Give compasses to Hunters
function mh:compass/give_compass

# Reset trigger
scoreboard players set @a StartGame 0
trigger StartGame set 0

# Start teammate tracking
function mh:utilites/track_teammates

# Tellraw
function mh:messages/tellraw_start
