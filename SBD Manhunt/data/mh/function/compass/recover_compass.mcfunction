execute as @s[team=Hunter,scores={Deaths=1..}, nbt={DeathTime:0s}] run function mh:compass/give_compass
execute as @s[team=Hunter,scores={Deaths=1..}, nbt={DeathTime:0s}] run scoreboard players set @s Deaths 0

schedule function mh:compass/recover_compass 100