execute store result score @s uuid run data get entity @s UUID[0]
execute at @s run summon marker ~ ~ ~ {CustomName:'{"text":"hyper_warp_marker"}'}
#
effect give @s nausea 6 0 true
effect give @s invisibility 12 1 true
effect give @s resistance 12 0 true
effect give @s slow_falling 12 0 true
effect give @s jump_boost 12 0 true
effect give @s speed 12 1 true
effect give @s weakness 12 9 true
#
execute at @s run playsound minecraft:entity.allay.death master @a ~ ~ ~ 2 0
execute at @s run particle minecraft:effect ~ ~1 ~ 0.5 0.5 0.5 1 500 force
tag @s add hyper_potion
#
execute as @e[type=marker,name="hyper_warp_marker"] at @s run scoreboard players operation @s uuid = @p uuid