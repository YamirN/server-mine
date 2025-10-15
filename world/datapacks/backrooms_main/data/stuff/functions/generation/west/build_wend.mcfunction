tag @s add build_Wend
tag @s add summon_Wend
#
execute as @a at @s run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 0.75
scoreboard players add $number total_rooms 1
#
clone -36 15 -18 -24 8 -30 ~-6 ~-2 ~-6
tag @s remove west
tag @s remove build_Wend