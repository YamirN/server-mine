tag @s add build_Wtunnel6
tag @s add summon_Wtunnel
tag @s add w_tunnel6_chest
#
execute positioned ~-12 ~ ~ unless entity @e[type=marker,name=remover,distance=..1] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["west"],CustomName:'{"text":"remover"}'}
#
tag @s remove summon_Wtunnel
#
execute as @a at @s run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 0.75
scoreboard players add $number total_rooms 1
#
clone -64 15 -32 -52 8 -44 ~-6 ~-2 ~-6
tag @s remove west
tag @s remove build_Wtunnel6