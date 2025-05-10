# title
title @a[tag=cops] title "お前は警察"
title @a[tag=robbers] title "お前は泥棒"
# ScoreSetDisplay
scoreboard objectives setdisplay sidebar keidoro_score
# ReSpawnPointSet
spawnpoint @a 0 -62 0
# BossBarSetting
bossbar set keidoro:time visible true
bossbar set keidoro:time players @a
bossbar set keidoro:time color red
bossbar set keidoro:time style notched_6
# TimerSet&TimerStart
scoreboard players set watch status 180
bossbar set keidoro:time max 180
function keidoro:game/timer
# tp
tp @a[tag=cops] 20 -52 0
tp @a[tag=robbers] -19 -52 0
tag @a[tag=!robbers] add Invulnerable
tag @a[tag=!cops] remove Invulnerable
# giveItem
function keidoro:item/give
# StatusPlaying
scoreboard players set status status 2