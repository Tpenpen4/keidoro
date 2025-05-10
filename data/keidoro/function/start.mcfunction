# ScoreBoardSetting
execute unless score status status matches 0 run function keidoro:emergency
execute unless score status status matches 0 run return fail
scoreboard players set status status 1
 # item
execute store result score @a item run random value 2..3
scoreboard players set @a status 1
scoreboard players set watch status 0
scoreboard players set times status 1
scoreboard players set timem status 3
scoreboard players set timeh status 0
scoreboard players set ドロボー残り keidoro_score 0
scoreboard players set 牢屋1 keidoro_score 0
scoreboard players set 牢屋2 keidoro_score 0
scoreboard players set @a itemTime -1
clear @a
# Tag&AdvancementReset
tag @a remove cops
tag @a remove robbers
tag @a remove rou1
tag @a remove rou2
tag @s remove Invulnerable
advancement revoke @a only keidoro:libdetect
advancement revoke @a only keidoro:death
# TimeSetting
bossbar add keidoro:time "time"
# GameRuleSetting
gamerule keepInventory true
gamerule showDeathMessages true
gamerule doImmediateRespawn true
gamerule announceAdvancements false
gamerule fallDamage false
difficulty peaceful
# OnlineCount
execute store result score online online run tellraw @a "ケイドロを開始しています..."
execute if score debug status matches 1 run scoreboard players set online online 3
# PlayerLimit
execute if score online online matches 0..1 run tellraw @a [{"score":{"name":"online","objective":"online"},"color":"red"},{"text":"人ではプレイできません。2人からプレイできます。","color":"red"}]
execute if score online online matches 0..1 run function keidoro:setting
execute if score online online matches 0..1 run return fail
# AllotJob
scoreboard players operation cops online = online online
scoreboard players operation robbers online = online online
scoreboard players set #2 online 2
 # coops(警察)
scoreboard players operation cops online /= #2 online
 # robbers(泥棒)
scoreboard players operation robbers online %= #2 online
execute if score robbers online matches 0 run scoreboard players operation robbers online = cops online
execute if score robbers online matches 1 run scoreboard players operation robbers online += cops online
# JobSet
function keidoro:job/cops
function keidoro:job/robbers
scoreboard players set @a item 1
# CountStart
function keidoro:count/5