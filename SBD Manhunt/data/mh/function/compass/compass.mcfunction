# Update compass
execute store result block 0 0 0 Items[0].components.minecraft:lodestone_tracker.target.pos[0] int 1 run data get entity @a[team=Runner, sort=nearest, limit=1] Pos[0]
execute store result block 0 0 0 Items[0].components.minecraft:lodestone_tracker.target.pos[1] int 1 run data get entity @a[team=Runner, sort=nearest, limit=1] Pos[1]
execute store result block 0 0 0 Items[0].components.minecraft:lodestone_tracker.target.pos[2] int 1 run data get entity @a[team=Runner, sort=nearest, limit=1] Pos[2]


# Update compass, if Player holds it (but it will wotk with usual compass too because im dumbass and dont know how to do it right)
execute as @a[team=Hunter] at @s in minecraft:overworld if entity @s[nbt={SelectedItem:{id:"minecraft:compass", count:1}}] if entity @a[team=Runner,distance=0..] run data modify block 0 0 0 Items[0] set from storage mh:storage Item
execute as @a[team=Hunter] at @s in minecraft:the_nether if entity @s[nbt={SelectedItem:{id:"minecraft:compass", count:1}}] if entity @a[team=Runner,distance=0..] run data modify block 0 0 0 Items[0] set from storage mh:storage Item
execute as @a[team=Hunter] at @s in minecraft:the_end if entity @s[nbt={SelectedItem:{id:"minecraft:compass", count:1}}] if entity @a[team=Runner,distance=0..] run data modify block 0 0 0 Items[0] set from storage mh:storage Item


execute as @a[team=Hunter] at @s in minecraft:overworld if entity @s[nbt={SelectedItem:{id:"minecraft:compass", count:1}}] if entity @a[team=Runner,distance=0..] run item replace entity @s weapon.mainhand from block 0 0 0 container.0
execute as @a[team=Hunter] at @s in minecraft:the_nether if entity @s[nbt={SelectedItem:{id:"minecraft:compass", count:1}}] if entity @a[team=Runner,distance=0..] run item replace entity @s weapon.mainhand from block 0 0 0 container.0
execute as @a[team=Hunter] at @s in minecraft:the_end if entity @s[nbt={SelectedItem:{id:"minecraft:compass", count:1}}] if entity @a[team=Runner,distance=0..] run item replace entity @s weapon.mainhand from block 0 0 0 container.0
