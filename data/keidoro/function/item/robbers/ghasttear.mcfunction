advancement revoke @s only keidoro:ghasttear
attribute @s minecraft:scale base set 0.6
execute as @s[scores={itemTime=1..}] run tellraw @s "小さくなった！"
xp set @s 10 levels
scoreboard players set @s itemTime 10
execute as @a[scores={itemTime=0..}] run scoreboard players remove @s itemTime 1
execute as @a[scores={itemTime=0..}] run xp add @s -1 levels
execute as @a[scores={itemTime=0}] run attribute @s minecraft:scale base reset
execute as @a[scores={itemTime=0..}] run schedule function keidoro:item/robbers/ghasttear 1s