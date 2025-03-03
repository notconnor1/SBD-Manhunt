# Stopwatch timer 
scoreboard players add Ticks Tick 1 

execute if score Ticks Tick matches 20.. run scoreboard players add Secs Sec 1
execute if score Ticks Tick matches 20.. run scoreboard players set Ticks Tick 0

execute if score Secs Sec matches 60.. run scoreboard players add Mins Min 1
execute if score Secs Sec matches 60.. run scoreboard players set Secs Sec 0

execute if score Mins Min matches 60.. run scoreboard players add Hours Hour 1
execute if score Mins Min matches 60.. run scoreboard players set Mins Min 0


#title @a actionbar ["",{"score":{"name":"","objective":"Min"},"bold":true,"underlined":true,"color":"dark_green"},{"text":":","bold":true,"underlined":true,"color":"dark_green"},{"score":{"name":"","objective":"Sec"},"bold":true,"underlined":true,"color":"dark_green"},{"text":":","bold":true,"italic":true,"color":"dark_green"},{"score":{"name":"","objective":"Tick"},"bold":true,"underlined":true,"color":"dark_green"}]
#execute if score 0 Sec matches ..6 run title @a actionbar ["",{"score":{"name":"0","objective":"Sec"},"bold":true,"color":"green"},{"score":{"name":"1","objective":"Sec"},"bold":true,"color":"green"}]
#execute if score 1 Min matches 1.. run title @a actionbar ["",{"score":{"name":"0","objective":"Min"},"bold":true,"color":"green"},{"score":{"name":"1","objective":"Min"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"score":{"name":"0","objective":"Sec"},"bold":true,"color":"green"},{"score":{"name":"1","objective":"Sec"},"bold":true,"color":"green"}]


# Loop itself (1t)
schedule function mh:utilites/timer 1t
