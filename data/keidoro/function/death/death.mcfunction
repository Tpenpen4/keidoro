# JailRandomSelect
execute store result score @s[tag=robbers] status run random value 2..3
execute if entity @s[tag=robbers] run function keidoro:death/death2
# Scoreboard&TagSet
execute if entity @s[tag=robbers] run scoreboard players remove ドロボー残り keidoro_score 1
execute if score @s status matches 2 run scoreboard players add 牢屋1 keidoro_score 1
execute if score @s status matches 3 run scoreboard players add 牢屋2 keidoro_score 1
execute if score @s status matches 2 run tag @s add rou1
execute if score @s status matches 3 run tag @s add rou2
execute if score @s status matches 2..3 run tag @s add Invulnerable
# etc
clear @s[tag=robbers]
# AdvancementReset
advancement revoke @s only keidoro:death