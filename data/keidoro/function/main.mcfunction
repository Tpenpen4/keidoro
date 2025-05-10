execute store result score nowonline online if entity @a
# テスト用
execute if score debug status matches 1 run scoreboard players set nowonline online 3

# 警棒
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:breeze_rod"}}] run attribute @s attack_damage base set 20.5
execute as @a at @s[nbt=!{SelectedItem:{id:"minecraft:breeze_rod"}}] run attribute @s attack_damage base reset

kill @e[type=minecraft:eye_of_ender]

# Invulnerable
execute as @a at @s[tag=Invulnerable] run attribute @s armor base set 30
execute as @a at @s[tag=Invulnerable] run attribute @s knockback_resistance base set 1
execute as @a at @s[tag=Invulnerable] run effect give @s minecraft:instant_health infinite 1 true
execute as @a at @s[tag=!Invulnerable] run attribute @s armor base reset
execute as @a at @s[tag=!Invulnerable] run attribute @s knockback_resistance base reset
execute as @a at @s[tag=!Invulnerable] run effect clear @s minecraft:instant_health
