tag @s add build_4way8
tag @s add summon_4way
tag @s add room_4way
tag @s add room_tp
tag @s add blocked_room
#
execute positioned ~ ~ ~12 unless entity @e[type=marker,distance=..3] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["south"],CustomName:'{"text":"remover"}'}
execute positioned ~12 ~ ~ unless entity @e[type=marker,distance=..3] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["east"],CustomName:'{"text":"remover"}'}
execute positioned ~-12 ~ ~ unless entity @e[type=marker,distance=..3] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["west"],CustomName:'{"text":"remover"}'}
#
execute positioned ~ ~-7 ~-12 unless entity @e[type=marker,distance=..3] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["north"],CustomName:'{"text":"remover"}'}
execute positioned ~12 ~-7 ~ unless entity @e[type=marker,distance=..3] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["east"],CustomName:'{"text":"remover"}'}
execute positioned ~ ~-7 ~12 unless entity @e[type=marker,distance=..3] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["south"],CustomName:'{"text":"remover"}'}
execute positioned ~-12 ~-7 ~ unless entity @e[type=marker,distance=..3] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["west"],CustomName:'{"text":"remover"}'}
#
execute positioned ~ ~-7 ~ run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["stair_bottom","blocked_room"],CustomName:'{"text":"remover"}'}
#
tag @s remove summon_4way
#
execute as @a at @s run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 0.75
scoreboard players add $number total_rooms 2
#
clone -8 8 -74 4 22 -86 ~-6 ~-9 ~-6
tag @s remove build_4way8
tag @s remove south