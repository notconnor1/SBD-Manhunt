# Get coordinates of closest teammate
execute store result score @e[team=Hunter,sort=nearest, limit=1] X run data get entity @e[team=Hunter,sort=nearest,limit=1] Pos[0]
execute store result score @e[team=Hunter,sort=nearest, limit=1] Y run data get entity @e[team=Hunter,sort=nearest,limit=1] Pos[1]
execute store result score @e[team=Hunter,sort=nearest, limit=1] Z run data get entity @e[team=Hunter,sort=nearest,limit=1] Pos[2]

# Display in chat
function mh:messages/tellraw_closest_teammate

# Loop itself
schedule function mh:utilites/track_teammates 60s