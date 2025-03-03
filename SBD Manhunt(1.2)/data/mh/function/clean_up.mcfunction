# Remove dependencies in case of /reload
team remove Hunter
team remove Runner
scoreboard objectives remove Deaths
scoreboard objectives remove Dimension

scoreboard objectives remove JoinAsRunner
scoreboard players reset @a JoinAsRunner

scoreboard objectives remove StartGame
scoreboard players reset @a StartGame

tag @a remove AddRunner

scoreboard players reset Ticks
scoreboard players reset Secs
scoreboard players reset Ticks
scoreboard players reset Hours

scoreboard objectives remove X
scoreboard objectives remove Y
scoreboard objectives remove Z

scoreboard objectives remove reload

advancement revoke @a everything

execute in minecraft:overworld run forceload remove 0 0
execute in minecraft:the_end run forceload remove 0 0
execute in minecraft:the_nether run forceload remove 0 0

execute in minecraft:overworld run setblock 0 0 0 bedrock
execute in minecraft:the_end run setblock 0 0 0 bedrock
execute in the_end run setblock 0 0 0 bedrock

data remove storage mh:storage Item
data remove storage manhunt:test Item

schedule clear mh:loop_main 
schedule clear mh:fun/fun_loop
schedule clear mh:utilites/timer


# Set up dependencies
schedule function mh:start_up 1t