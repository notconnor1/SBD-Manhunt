# Stop the timer
schedule clear mh:utilites/timer

# Prepare tittle
title @a times 2s 15s 3s
title @a subtitle {"text":""}

# Reset advancement
advancement revoke @a only mh:ender_dragon

# Release tittle and cools sounds
title @a title {"text":">> Runners Win! <<","bold":true,"color":"red"}
title @a subtitle {"text":" Well Played! - ( •̀ ω •́ )","bold":false,"color":"red"}

gamemode spectator @a[team=Hunter]

execute at @a run playsound minecraft:entity.guardian.attack ambient @a ~ ~ ~ 1 0
execute at @a run playsound minecraft:entity.ender_dragon.ambient ambient @a ~ ~ ~ 1 0
