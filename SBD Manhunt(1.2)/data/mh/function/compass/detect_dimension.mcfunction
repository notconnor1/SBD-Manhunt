# happens every 10t

# Get current dimension of all players and store it in scoreboard
execute as @a store result score @s Dimension run data get entity @s Dimension

# Check if Hunter is in the same dimension as Runner / and update compass
execute as @a[team=Hunter,nbt={SelectedItem: {id: "minecraft:compass"}}] at @s if score @s Dimension = @a[team=Runner,gamemode=!spectator,limit=1,sort=nearest] Dimension run function mh:compass/locate

# Return result to player
execute as @a[team=Hunter,nbt={SelectedItem: {id: "minecraft:compass"}}] at @s if score @s Dimension = @a[team=Runner,gamemode=!spectator,limit=1,sort=nearest] Dimension run title @s actionbar [{"text":"Compass Refreshed","color":"green"}]
execute as @a[team=Hunter,nbt={SelectedItem: {id: "minecraft:compass"}}] at @s unless entity @a[team=Runner,gamemode=!spectator,distance=0..] run title @s actionbar [{"text":"No player to track","color":"red"}]

# Update the dimension scoreboard to reflect the current dimension
execute as @a store result score @s Dimension run data get entity @s Dimension