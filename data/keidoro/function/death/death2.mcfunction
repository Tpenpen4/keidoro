execute as @a at @s[scores={status=2..3}] run effect give @s blindness infinite 255 true
tp @s[scores={status=2..3}] 0 -62 0
title @s[scores={status=2..3}] title "逮捕だ！"
execute if score @s status matches 2 run setblock 25 -58 26 redstone_block
execute if score @s status matches 3 run setblock -26 -58 -24 redstone_block
execute if score @s status matches 2 run setblock 27 -58 26 air
execute if score @s status matches 3 run setblock -24 -58 -24 air
schedule function keidoro:death/death3 3s