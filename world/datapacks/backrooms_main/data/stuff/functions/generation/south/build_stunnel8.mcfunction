tag @s add build_Stunnel8
tag @s add summon_Stunnel
tag @s add s_tunnel8_chest
#
execute positioned ~ ~ ~12 unless entity @e[type=marker,name=remover,distance=..1] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["south"],CustomName:'{"text":"remover"}'}
#
tag @s remove summon_Stunnel
#
execute as @a at @s run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 0.75
scoreboard players add $number total_rooms 1
#
clone -36 15 94 -24 8 82 ~-6 ~-2 ~-6
tag @s remove south
tag @s remove build_Stunnel8