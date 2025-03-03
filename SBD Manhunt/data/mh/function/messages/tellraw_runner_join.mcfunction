execute at @a[scores={JoinAsRunner=1}] run playsound minecraft:entity.player.attack.crit ambient @a ~ ~ ~ 0.5 1
execute at @a[scores={JoinAsRunner=1}] run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 0.9 1

tellraw @a[scores={JoinAsRunner=1}] ["",{"text":"You are in a ","color":"white"},{"text":"Runners","bold":true,"underlined":true,"color":"dark_red"},{"text":" Team now!","color":"white"}]
