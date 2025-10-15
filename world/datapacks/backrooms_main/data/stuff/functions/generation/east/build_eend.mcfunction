tag @s add build_Eend
tag @s add summon_Eend
#
execute as @a at @s run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 0.75
scoreboard players add $number total_rooms 1
#
clone -22 15 -4 -10 8 -16 ~-6 ~-2 ~-6
tag @s remove east
tag @s remove build_Eend