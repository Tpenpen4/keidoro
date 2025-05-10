# JailLib
$scoreboard players set status lib $(id)
execute if score status lib matches 1 run setblock 25 -58 26 air
execute if score status lib matches 2 run setblock -26 -58 -24 air
execute if score status lib matches 1 run setblock 27 -58 26 redstone_block
execute if score status lib matches 2 run setblock -24 -58 -24 redstone_block
execute if score status lib matches 1 run say が[牢屋１]を解放した！
execute if score status lib matches 2 run say が[牢屋２]を解放した！
execute if score status lib matches 1 run scoreboard players operation ドロボー残り keidoro_score += 牢屋1 keidoro_score
execute if score status lib matches 2 run scoreboard players operation ドロボー残り keidoro_score += 牢屋2 keidoro_score
execute if score status lib matches 1 run scoreboard players set 牢屋1 keidoro_score 0
execute if score status lib matches 2 run scoreboard players set 牢屋2 keidoro_score 0

execute if score status lib matches 1 run scoreboard players set @a[scores={status=2}] status 1
execute if score status lib matches 2 run scoreboard players set @a[scores={status=3}] status 1

execute if score status lib matches 1 run tag @a[tag=rou1] add Invulnerable
execute if score status lib matches 2 run tag @a[tag=rou2] add Invulnerable
execute if score status lib matches 1 run effect give @a[tag=rou1] speed 2 3 false
execute if score status lib matches 2 run effect give @a[tag=rou2] speed 2 3 false
schedule function keidoro:lib/effect 2s