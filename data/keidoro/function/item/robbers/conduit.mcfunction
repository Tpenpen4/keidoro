xp set @s 10 levels
scoreboard players operation @s item *= #2 item
attribute @s minecraft:scale base set 0.6
advancement revoke @s only keidoro:conduit
function keidoro:item/clear/conduit