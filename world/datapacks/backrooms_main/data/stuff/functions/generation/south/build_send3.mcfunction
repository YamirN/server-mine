tag @s add build_Send3
tag @s add summon_Send
tag @s add artifact_marker
#
execute as @a at @s run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 0.75
scoreboard players add $number total_rooms 1
scoreboard players add $number artifact_rooms 1
#
clone -50 15 -74 -38 8 -86 ~-6 ~-2 ~-6
tag @s remove south
tag @s remove build_Send3