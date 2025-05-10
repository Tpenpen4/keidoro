advancement revoke @s only keidoro:damage
execute if entity @a[nbt={HurtTime:10s},tag=cops] run scoreboard players set @s[tag=cops] itemTime 10
execute as @a[scores={itemTime=10}] run clear @s[tag=cops] breeze_rod
execute as @a[scores={itemTime=10}] run xp set @s[tag=cops] 10 levels
execute as @a[scores={itemTime=0..}] run scoreboard players remove @s[tag=cops] itemTime 1
execute as @a[scores={itemTime=0..}] run xp add @s[tag=cops] -1 levels
give @a[scores={itemTime=0,item=1}] breeze_rod
execute as @a[scores={itemTime=-1..},tag=cops] run schedule function keidoro:item/cops/damage 1s