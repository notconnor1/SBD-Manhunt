#execute if score @r[scores={JoinAsRunner=1}] JoinAsRunner matches 1 run scoreboard players add @s[scores={JoinAsRunner=1}] MessageCounter 1
#execute if score @s[scores={JoinAsRunner=1}] JoinAsRunner matches 1 run function mh:messages/msg_for_runners
#execute if score @s[scores={JoinAsRunner=1}] JoinAsRunner matches 1 run scoreboard players set @s[scores={JoinAsRunner=1}] MessageCounter 0


# Loop itself
#schedule function mh:messages/message_loop 1t