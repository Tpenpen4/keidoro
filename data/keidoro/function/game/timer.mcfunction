# -1s
scoreboard players remove times status 1
scoreboard players remove watch status 1
execute if score times status matches -1 run scoreboard players remove timem status 1 
execute if score times status matches -1 run scoreboard players set times status 59
execute if score timem status matches -1 run scoreboard players remove timeh status 1
execute if score timem status matches -1 run scoreboard players set timem status 59
execute store result bossbar keidoro:time value run scoreboard players get watch status
bossbar set keidoro:time name [{"text":"残り時間："},{"score":{"name":"timeh","objective":"status"}},{"text":":"},{"score":{"name":"timem","objective":"status"}},{"text":":"},{"score":{"name":"times","objective":"status"}}]
# ConnectionLost
execute unless score nowonline online = online online if score timem status matches 2.. run scoreboard players set watch status 0
execute unless score nowonline online = online online if score timem status matches 2.. run bossbar set keidoro:time visible false
execute unless score nowonline online = online online if score timem status matches 2.. run function keidoro:game/end
execute unless score nowonline online = online online if score timem status matches 2.. run tellraw @a "開始直後に一部のプレイヤーの通信が切断されたため無効試合になりました"
# Recursion(再帰処理)
execute if score watch status matches 6.. run schedule function keidoro:game/timer 20t
# End
execute if score watch status matches 5 run function keidoro:count/5
execute if score watch status matches 5 run scoreboard players set status status 3
execute if score watch status matches 5 run bossbar set keidoro:time visible false