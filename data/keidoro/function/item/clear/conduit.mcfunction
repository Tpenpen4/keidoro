xp add @s -1 levels
scoreboard players operation @s item /= #2 item
attribute @s[level=10,scores={item=1}] minecraft:scale base reset
function keidoro:item/clear/conduit