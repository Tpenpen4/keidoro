tag @r[tag=!cops,tag=!robbers] add robbers
scoreboard players remove robbers online 1
execute unless score robbers online matches 0 run function keidoro:job/robbers
scoreboard players add ドロボー残り keidoro_score 1