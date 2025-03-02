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

scoreboard objectives add MessageCounter dummy

scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time

scoreboard objectives add Min dummy "Mins"
scoreboard objectives add Sec dummy "Secs"
scoreboard objectives add Tick dummy "Ticks"

scoreboard players set Secs Sec 0
scoreboard players set Mins Min 0

# Forceload
execute in minecraft:overworld run forceload add 0 0
execute in minecraft:the_nether run forceload add 0 0
execute in minecraft:the_end run forceload add 0 0

execute in minecraft:overworld run setblock 0 0 0 yellow_shulker_box
execute in minecraft:the_nether run setblock 0 0 0 yellow_shulker_box
execute in minecraft:the_end run setblock 0 0 0 yellow_shulker_box

# Storage and add stuff
data modify storage mh:storage Item set value {id:"minecraft:compass", count:1, components:{"minecraft:custom_name":'{"color":"aqua", "italic":false, "text":"Tracker Compass"}', "minecraft:lodestone_tracker": {tracked: 0b, target: {pos:[I;0,0,0], dimension:"minecraft:overworld"}}  }}
 
execute in minecraft:overworld run data modify block 0 0 0 Items append from storage mh:storage Item
execute in minecraft:the_nether run data modify block 0 0 0 Items append from storage mh:storage Item
execute in minecraft:the_end run data modify block 0 0 0 Items append from storage mh:storage Item

# Schedule Looping Functions
schedule function mh:utilites/clean_start 1t
schedule function mh:loop_main 1t

schedule function mh:fun/fun_loop 1t
schedule function mh:messages/greeting 1t
schedule function mh:compass/recover_compass 1t

schedule function mh:messages/message_loop 1t

#Chat Greeting
#tellraw @a "SBD Manhunt Datapack is loaded!"