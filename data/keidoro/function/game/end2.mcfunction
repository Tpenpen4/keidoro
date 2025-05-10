# tp
tp @a -5 -63 -11
# win
execute if score ドロボー残り keidoro_score matches 0 run title @a title "警察のかち！"
execute unless score ドロボー残り keidoro_score matches 0 run title @a title "泥棒のかち！"
# StatusNotPlaying
scoreboard players set @a status 0
# Control
execute as @a at @s run attribute @s minecraft:jump_strength base reset
execute as @a at @s run attribute @s minecraft:movement_speed base reset
# etc
clear @a