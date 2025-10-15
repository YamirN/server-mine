tag @s add build_4way4
tag @s add summon_4way
tag @s add room_4way
tag @s add room_tp
#
execute positioned ~ ~ ~-12 unless entity @e[type=marker,distance=..3] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["north"],CustomName:'{"text":"remover"}'}
execute positioned ~12 ~ ~ unless entity @e[type=marker,distance=..3] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["east"],CustomName:'{"text":"remover"}'}
execute positioned ~ ~ ~12 unless entity @e[type=marker,distance=..3] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["south"],CustomName:'{"text":"remover"}'}
#
tag @s remove summon_4way
#
execute as @a at @s run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 0.75
scoreboard players add $number total_rooms 1
#
clone -8 15 -18 4 8 -30 ~-6 ~-2 ~-6
tag @s remove build_4way4
tag @s remove east