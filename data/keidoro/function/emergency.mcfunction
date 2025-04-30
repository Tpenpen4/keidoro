# JailOpen
setblock 27 -58 26 redstone_block
setblock -24 -58 -24 redstone_block
# JailReset
setblock 27 -58 26 air
setblock -24 -58 -24 air
setblock 25 -58 26 air
setblock -26 -58 -24 air
# StatusReset
scoreboard players reset @a status 
scoreboard players reset watch status
scoreboard players reset times status
scoreboard players reset timem status
scoreboard players reset timeh status
scoreboard players set watch status 0
# BossBar&TagRemove
bossbar remove keidoro:time
tag @a remove cops
tag @a remove robbers
# AdvancementReset
advancement revoke @a only keidoro:libdetect
advancement revoke @a only keidoro:death
# ScoreboardRemove
scoreboard objectives remove online
scoreboard objectives remove lib
scoreboard objectives remove keidoro_score
scoreboard objectives remove status
scoreboard objectives remove item
# ReStartup
function keidoro:setting