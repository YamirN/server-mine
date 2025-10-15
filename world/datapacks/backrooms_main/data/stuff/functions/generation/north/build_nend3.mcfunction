tag @s add build_Nend3
tag @s add summon_Nend
tag @s add artifact_marker
#
execute as @a at @s run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 0.75
scoreboard players add $number total_rooms 1
scoreboard players add $number artifact_rooms 1
#
clone -64 15 -60 -52 8 -72 ~-6 ~-2 ~-6
tag @s remove north
tag @s remove build_Nend3