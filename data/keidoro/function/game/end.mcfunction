title @a title "終了"
# ControlLost
execute as @a at @s run attribute @s minecraft:jump_strength base set 0
execute as @a at @s run attribute @s minecraft:movement_speed base set 0
schedule function keidoro:game/end2 3s
# TagReset
tag @a remove cops
tag @a remove robbers