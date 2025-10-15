tag @s add build_Eend1
tag @s add summon_Eend
#
execute as @a at @s run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 0.75
scoreboard players add $number total_rooms 1
#
clone -22 15 -32 -10 8 -44 ~-6 ~-2 ~-6
tag @s remove east
tag @s remove build_Eend1