tag @s add build_Eend2
tag @s add summon_Eend
tag @s add e_end2_chest
#
execute as @a at @s run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 0.75
scoreboard players add $number total_rooms 1
#
clone -22 15 -60 -10 8 -72 ~-6 ~-2 ~-6
tag @s remove east
tag @s remove build_Eend2