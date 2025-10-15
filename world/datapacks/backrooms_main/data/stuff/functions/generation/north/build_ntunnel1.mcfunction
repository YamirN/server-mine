tag @s add build_Ntunnel1
tag @s add summon_Ntunnel
#
execute positioned ~ ~ ~-12 unless entity @e[type=marker,name=remover,distance=..1] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["north"],CustomName:'{"text":"remover"}'}
#
tag @s remove summon_Ntunnel
#
execute as @a at @s run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 0.75
scoreboard players add $number total_rooms 1
#
clone -22 15 24 -10 8 12 ~-6 ~-2 ~-6
tag @s remove north
tag @s remove build_Ntunnel1