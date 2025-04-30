# PlayerOpenJail
execute as @a at @s[tag=robbers,z=20,dz=1] run function keidoro:lib/lib {id:1}
execute as @a at @s[tag=robbers,z=-20,dx=0,dy=0,dz=0] run function keidoro:lib/lib {id:2}
advancement revoke @s only keidoro:libdetect