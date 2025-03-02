scoreboard players set @a[scores={JoinAsRunner=1}] MessageCounter 1
tellraw @a[scores={MessageCounter=1}] ["",{"text":"You are in a ","bold":true,"color":"white"},{"text":"Runners","bold":true,"italic":true,"underlined":true,"color":"dark_red"},{"text":" Team now!","bold":true,"color":"white"}]
playsound minecraft:entity.player.attack.crit
playsound minecraft:block.note_block.bit
scoreboard players set @a[scores={MessageCounter=1}] MessageCounter 0

#tellraw @a ["",{"text":"You are in a ","bold":true,"color":"white"},{"text":"Runners","bold":true,"italic":true,"underlined":true,"color":"dark_red"},{"text":" Team now!","bold":true,"color":"white"}]