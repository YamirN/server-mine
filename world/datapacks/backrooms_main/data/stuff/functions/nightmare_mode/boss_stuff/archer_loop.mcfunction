execute as @e[type=skeleton,tag=archer] at @s as @e[type=arrow,distance=..3] run tag @s add nightmare_arrow
#
execute as @e[type=arrow,tag=nightmare_arrow] at @s run summon marker ~ ~ ~ {Tags:["bullet"],CustomName:'{"text":"nightmare_arrow"}'}
execute as @e[type=arrow,tag=nightmare_arrow] run kill @s
#
execute as @e[type=marker,name=nightmare_arrow] run scoreboard players add @s generic_timer 1
#
execute as @e[type=marker,name=nightmare_arrow,scores={generic_timer=1},limit=1] at @s run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.5 2
execute as @e[type=marker,name=nightmare_arrow,scores={generic_timer=1}] at @s run particle minecraft:soul ~ ~ ~ 0 0 0 0.05 5 force
#
execute as @e[type=marker,name=nightmare_arrow,scores={generic_timer=1..}] at @s run particle minecraft:soul ~ ~ ~ 0 0 0 0 2 force
#
execute as @e[type=marker,name=nightmare_arrow,scores={generic_timer=..2}] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure] eyes
execute as @e[type=marker,name=nightmare_arrow,scores={generic_timer=1..}] at @s run tp @s ^ ^ ^0.65
#
execute as @e[type=marker,name=nightmare_arrow] at @s positioned ~ ~-1 ~ run effect give @p[gamemode=adventure,distance=..1] wither 4 1 true
execute as @e[type=marker,name=nightmare_arrow] at @s positioned ~ ~-1 ~ run effect give @p[gamemode=adventure,distance=..1] slowness 4 0 true
execute as @e[type=marker,name=nightmare_arrow] at @s positioned ~ ~-1 ~ if entity @p[gamemode=adventure,distance=..1] run particle minecraft:soul ~ ~1 ~ 1 1 1 0.15 50 force
execute as @e[type=marker,name=nightmare_arrow] at @s positioned ~ ~-1 ~ if entity @p[gamemode=adventure,distance=..1] run playsound minecraft:entity.arrow.hit master @a ~ ~ ~ 1 1.5
execute as @e[type=marker,name=nightmare_arrow] at @s positioned ~ ~-1 ~ if entity @p[gamemode=adventure,distance=..1] run kill @s
#
execute as @e[type=marker,name=nightmare_arrow] at @s unless block ~ ~ ~ #stuff:projectile_pass run particle minecraft:soul ~ ~ ~ 0 0 0 0.15 50 force
execute as @e[type=marker,name=nightmare_arrow] at @s unless block ~ ~ ~ #stuff:projectile_pass run playsound minecraft:entity.arrow.hit master @a ~ ~ ~ 1.25 1.5
execute as @e[type=marker,name=nightmare_arrow] at @s unless block ~ ~ ~ #stuff:projectile_pass run kill @s
#
execute as @e[type=marker,name=nightmare_arrow,scores={generic_timer=40..}] run kill @s