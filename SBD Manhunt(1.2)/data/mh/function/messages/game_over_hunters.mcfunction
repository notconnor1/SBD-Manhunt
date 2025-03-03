# Stop the timer
schedule clear mh:utilites/timer

# Prepare tittle
title @a times 2s 15s 3s
title @a subtitle {"text":""}

# Reset GameOver scoreboard
scoreboard players set @a[scores={Deaths=1..}] Deaths 0
scoreboard players set "GameOver" GameOver 0

# Release tittle and play cool sound
title @a title {"text":">> Hunters Win! <<","bold":true,"color":"blue"}
title @a subtitle {"text":"We got 'em, guys! - ( •̀ ω •́ )","bold":false,"color":"blue"}

gamemode spectator @a

execute at @a run playsound minecraft:ui.toast.challenge_complete ambient @a ~ ~ ~ 1 1
