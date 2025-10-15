tag @s add build_Etunnel6
tag @s add summon_Etunnel
tag @s add e_tunnel6_chest
#
execute positioned ~12 ~ ~ unless entity @e[type=marker,name=remover,distance=..1] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["east"],CustomName:'{"text":"remover"}'}
#
tag @s remove summon_Etunnel
#
execute as @a at @s run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 0.75
scoreboard players add $number total_rooms 1
#
clone -64 15 -46 -52 8 -58 ~-6 ~-2 ~-6
tag @s remove east
tag @s remove build_Etunnel6