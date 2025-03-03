# Trap players in bedrock
execute at @a[team=Hunter] run setblock ~1 ~1 ~ minecraft:bedrock
execute at @a[team=Hunter] run setblock ~-1 ~1 ~ minecraft:bedrock
execute at @a[team=Hunter] run setblock ~ ~1 ~1 minecraft:bedrock
execute at @a[team=Hunter] run setblock ~ ~1 ~-1 minecraft:bedrock

execute at @a[team=Hunter] run setblock ~1 ~ ~ minecraft:bedrock
execute at @a[team=Hunter] run setblock ~-1 ~ ~ minecraft:bedrock
execute at @a[team=Hunter] run setblock ~ ~ ~1 minecraft:bedrock
execute at @a[team=Hunter] run setblock ~ ~ ~-1 minecraft:bedrock


# Give effects
effect give @a[team=Hunter] blindness 120 255 true
effect give @a[team=Hunter] mining_fatigue 120 255 true
effect give @a[team=Hunter] slowness 120 255 true 

# Clear effects
schedule function mh:start/effects_clear 120s