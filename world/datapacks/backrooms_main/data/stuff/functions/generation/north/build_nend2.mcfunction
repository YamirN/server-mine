tag @s add build_Nend2
tag @s add summon_Nend
tag @s add n_end2_chest
#
execute as @a at @s run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 0.75
scoreboard players add $number total_rooms 1
#
clone -36 15 -60 -24 8 -72 ~-6 ~-2 ~-6
tag @s remove north
tag @s remove build_Nend2