advancement revoke @s only keidoro:damage
execute if entity @e[nbt={HurtTime:10s},tag=cops] run scoreboard players set @s itemTime 10
execute as @a[scores={itemTime=10}] run clear @s breeze_rod
execute as @a[scores={itemTime=10}] run xp set @s 10 levels
execute as @a[scores={itemTime=0..}] run scoreboard players remove @s itemTime 1
execute as @a[scores={itemTime=0..}] run xp add @s -1 levels
give @a[scores={itemTime=0}] breeze_rod
execute as @a[scores={itemTime=0..}] run schedule function keidoro:item/cops/damage 1s