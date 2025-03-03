# Untrap players
execute at @a[team=Hunter] run setblock ~1 ~1 ~ minecraft:air
execute at @a[team=Hunter] run setblock ~-1 ~1 ~ minecraft:air
execute at @a[team=Hunter] run setblock ~ ~1 ~1 minecraft:air
execute at @a[team=Hunter] run setblock ~ ~1 ~-1 minecraft:air


execute at @a[team=Hunter] run setblock ~1 ~ ~ minecraft:air
execute at @a[team=Hunter] run setblock ~-1 ~ ~ minecraft:air
execute at @a[team=Hunter] run setblock ~ ~ ~1 minecraft:air
execute at @a[team=Hunter] run setblock ~ ~ ~-1 minecraft:air


# Clear Saturation
effect clear @a saturation