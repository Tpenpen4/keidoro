# PlayerOpenJail
execute as @a at @s[tag=robbers,z=20,dz=1] run function keidoro:lib/lib {id:1}
execute as @a at @s[tag=robbers,z=-20,dx=0,dy=0,dz=0] run function keidoro:lib/lib {id:2}
advancement revoke @s only keidoro:libdetect
# Effect
execute as @a at @s[tag=robbers,z=20,dz=1] run tag @s add Invulnerable
execute as @a at @s[tag=robbers,z=-20,dx=0,dy=0,dz=0] run tag @s add Invulnerable
execute as @a at @s[tag=robbers,z=20,dz=1] run effect give @s speed 2 3 false
execute as @a at @s[tag=robbers,z=-20,dx=0,dy=0,dz=0] run effect give @s speed 2 3 false