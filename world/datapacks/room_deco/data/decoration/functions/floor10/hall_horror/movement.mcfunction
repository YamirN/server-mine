execute as @e[type=wither_skeleton,name="Hall Horror",scores={hall_horror_face=1..}] run scoreboard players remove @s hall_horror_face 1
execute as @e[type=wither_skeleton,name="Hall Horror",scores={hall_horror_face=1..}] run tag @s add facing_player
execute as @e[type=wither_skeleton,name="Hall Horror",scores={hall_horror_face=1..}] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure]
execute as @e[type=wither_skeleton,name="Hall Horror",scores={hall_horror_face=0}] run tag @s remove facing_player
#
execute as @e[type=wither_skeleton,name="Hall Horror",nbt={HurtTime:10s}] run tag @s add hurt
execute as @e[type=wither_skeleton,name="Hall Horror",nbt={HurtTime:1s}] run tag @s remove hurt
#
#diagonal
#
execute as @e[type=wither_skeleton,name="Hall Horror",tag=!hurt] at @s if block ~ ~-2 ~ minecraft:pink_concrete run tp @s ~0.285 ~ ~0.285
execute as @e[type=wither_skeleton,name="Hall Horror",tag=hurt] at @s if block ~ ~-2 ~ minecraft:pink_concrete run tp @s ~0.5 ~ ~0.5
execute as @e[type=wither_skeleton,name="Hall Horror",tag=!facing_player] at @s if block ~ ~-2 ~ minecraft:pink_concrete run tp @s ~ ~ ~ -45 0
#
execute as @e[type=wither_skeleton,name="Hall Horror",tag=!hurt] at @s if block ~ ~-2 ~ minecraft:purple_concrete run tp @s ~-0.285 ~ ~0.285
execute as @e[type=wither_skeleton,name="Hall Horror",tag=hurt] at @s if block ~ ~-2 ~ minecraft:purple_concrete run tp @s ~-0.5 ~ ~0.5
execute as @e[type=wither_skeleton,name="Hall Horror",tag=!facing_player] at @s if block ~ ~-2 ~ minecraft:purple_concrete run tp @s ~ ~ ~ 45 0
#
execute as @e[type=wither_skeleton,name="Hall Horror",tag=!hurt] at @s if block ~ ~-2 ~ minecraft:gray_concrete run tp @s ~-0.285 ~ ~-0.285
execute as @e[type=wither_skeleton,name="Hall Horror",tag=hurt] at @s if block ~ ~-2 ~ minecraft:gray_concrete run tp @s ~-0.5 ~ ~-0.5
execute as @e[type=wither_skeleton,name="Hall Horror",tag=!facing_player] at @s if block ~ ~-2 ~ minecraft:gray_concrete run tp @s ~ ~ ~ 135 0
#
execute as @e[type=wither_skeleton,name="Hall Horror",tag=!hurt] at @s if block ~ ~-2 ~ minecraft:black_concrete run tp @s ~0.285 ~ ~-0.285
execute as @e[type=wither_skeleton,name="Hall Horror",tag=hurt] at @s if block ~ ~-2 ~ minecraft:black_concrete run tp @s ~0.5 ~ ~-0.5
execute as @e[type=wither_skeleton,name="Hall Horror",tag=!facing_player] at @s if block ~ ~-2 ~ minecraft:black_concrete run tp @s ~ ~ ~ -135 0
#
#cardinal
#
execute as @e[type=wither_skeleton,name="Hall Horror",tag=!hurt] at @s if block ~ ~-2 ~ minecraft:red_concrete run tp @s ~ ~ ~-0.25
execute as @e[type=wither_skeleton,name="Hall Horror",tag=hurt] at @s if block ~ ~-2 ~ minecraft:red_concrete run tp @s ~ ~ ~-0.9
execute as @e[type=wither_skeleton,name="Hall Horror",tag=!facing_player] at @s if block ~ ~-2 ~ minecraft:red_concrete run tp @s ~ ~ ~ 180 0
#
execute as @e[type=wither_skeleton,name="Hall Horror",tag=!hurt] at @s if block ~ ~-2 ~ minecraft:yellow_concrete run tp @s ~0.25 ~ ~
execute as @e[type=wither_skeleton,name="Hall Horror",tag=hurt] at @s if block ~ ~-2 ~ minecraft:yellow_concrete run tp @s ~0.9 ~ ~
execute as @e[type=wither_skeleton,name="Hall Horror",tag=!facing_player] at @s if block ~ ~-2 ~ minecraft:yellow_concrete run tp @s ~ ~ ~ -90 0
#
execute as @e[type=wither_skeleton,name="Hall Horror",tag=!hurt] at @s if block ~ ~-2 ~ minecraft:lime_concrete run tp @s ~ ~ ~0.25
execute as @e[type=wither_skeleton,name="Hall Horror",tag=hurt] at @s if block ~ ~-2 ~ minecraft:lime_concrete run tp @s ~ ~ ~0.9
execute as @e[type=wither_skeleton,name="Hall Horror",tag=!facing_player] at @s if block ~ ~-2 ~ minecraft:lime_concrete run tp @s ~ ~ ~ 0 0
#
execute as @e[type=wither_skeleton,name="Hall Horror",tag=!hurt] at @s if block ~ ~-2 ~ minecraft:blue_concrete run tp @s ~-0.25 ~ ~
execute as @e[type=wither_skeleton,name="Hall Horror",tag=hurt] at @s if block ~ ~-2 ~ minecraft:blue_concrete run tp @s ~-0.9 ~ ~
execute as @e[type=wither_skeleton,name="Hall Horror",tag=!facing_player] at @s if block ~ ~-2 ~ minecraft:blue_concrete run tp @s ~ ~ ~ 90 0