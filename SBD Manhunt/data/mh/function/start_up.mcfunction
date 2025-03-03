# Teams
team add Runner
team modify Runner color red
team modify Runner seeFriendlyInvisibles true
team add Hunter
team modify Hunter color blue
team modify Hunter seeFriendlyInvisibles true


# Scoreboards
scoreboard objectives add Dimension dummy
scoreboard objectives add Deaths deathCount

scoreboard objectives add JoinAsRunner trigger
scoreboard players enable @a JoinAsRunner
scoreboard objectives add StartGame trigger
scoreboard players enable @a StartGame

scoreboard objectives add GameOver dummy "GameOver"

scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time

scoreboard objectives add Hour dummy "Hours"
scoreboard objectives add Min dummy "Mins"
scoreboard objectives add Sec dummy "Secs"
scoreboard objectives add Tick dummy "Ticks"

scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy


scoreboard players set Secs Sec 0
scoreboard players set Mins Min 0

scoreboard objectives add reload trigger

title @a times 3s 3s 3s

# Forceload
execute in minecraft:overworld run forceload add 0 0
execute in minecraft:the_nether run forceload add 0 0
execute in minecraft:the_end run forceload add 0 0

execute in minecraft:overworld run setblock 0 0 0 yellow_shulker_box
execute in minecraft:overworld run setblock 0 1 0 bedrock
execute in minecraft:overworld run setblock 0 -1 0 bedrock
execute in minecraft:overworld run setblock 1 0 0 bedrock
execute in minecraft:overworld run setblock -1 0 0 bedrock
execute in minecraft:overworld run setblock 0 0 1 bedrock
execute in minecraft:overworld run setblock 0 0 -1 bedrock


execute in minecraft:the_nether run setblock 0 0 0 yellow_shulker_box
execute in minecraft:the_nether run setblock 0 1 0 bedrock
execute in minecraft:the_nether run setblock 0 -1 0 bedrock
execute in minecraft:the_nether run setblock 1 0 0 bedrock
execute in minecraft:the_nether run setblock -1 0 0 bedrock
execute in minecraft:the_nether run setblock 0 0 1 bedrock
execute in minecraft:the_nether run setblock 0 0 -1 bedrock

execute in minecraft:the_end run setblock 0 0 0 yellow_shulker_box
execute in minecraft:the_end run setblock 0 1 0 bedrock
execute in minecraft:the_end run setblock 0 -1 0 bedrock
execute in minecraft:the_end run setblock 1 0 0 bedrock
execute in minecraft:the_end run setblock -1 0 0 bedrock
execute in minecraft:the_end run setblock 0 0 1 bedrock
execute in minecraft:the_end run setblock 0 0 -1 bedrock

# Storage and add stuff
data modify storage mh:storage Item set value {id:"minecraft:compass", count:1, components:{"minecraft:custom_name":'{"color":"aqua", "italic":false, "text":"Tracker Compass"}', "minecraft:lodestone_tracker": {tracked: 0b, target: {pos:[I;0,0,0], dimension:"minecraft:overworld"}}  }}
 
execute in minecraft:overworld run data modify block 0 0 0 Items append from storage mh:storage Item
execute in minecraft:the_nether run data modify block 0 0 0 Items append from storage mh:storage Item
execute in minecraft:the_end run data modify block 0 0 0 Items append from storage mh:storage Item

# Schedule Looping Functions
schedule function mh:loop_main 1t
schedule function mh:messages/tellraw_greeting 1t
schedule function mh:compass/recover_compass 1t

# Shit and Giggles
#schedule function mh:fun/fun_loop 1t
#schedule function mh:fun/tittle 120s
