tag @s add build_Send2
tag @s add summon_Send
tag @s add s_end2_chest
#
execute as @a at @s run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 0.75
scoreboard players add $number total_rooms 1
#
clone -22 15 -74 -10 8 -86 ~-6 ~-2 ~-6
tag @s remove south
tag @s remove build_Send2