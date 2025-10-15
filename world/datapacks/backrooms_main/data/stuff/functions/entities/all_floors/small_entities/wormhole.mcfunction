execute as @e[type=marker,name="Entity 3022"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=marker,name="Entity 3022",scores={generic_timer=200}] at @s run playsound minecraft:block.portal.ambient master @a ~ ~ ~ 1.75 0.75
execute as @e[type=marker,name="Entity 3022",scores={generic_timer=200..}] run scoreboard players set @s generic_timer 0
execute as @e[type=marker,name="Entity 3022"] run scoreboard players add @s generic_timer2 1
execute as @e[type=marker,name="Entity 3022",scores={generic_timer2=3500..}] run kill @s
#
execute as @e[type=minecraft:ocelot,name="wormhole_cat"] at @s if entity @p[gamemode=adventure,distance=..8] run scoreboard players add @s generic_timer 1
execute as @e[scores={generic_timer=120..},type=minecraft:ocelot,name="wormhole_cat"] run kill @s
#
execute as @e[type=marker,name="Entity 3022"] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[type=marker,name="Entity 3022"] at @s run particle minecraft:dust_color_transition 0 0 0 1 1 0 1 ^ ^0.5 ^1 0 0 0 0 5 force
execute as @e[type=marker,name="Entity 3022"] at @s run particle minecraft:dust_color_transition 0 0 0 1 1 0 1 ^ ^0.5 ^-1 0 0 0 0 5 force
execute as @e[type=marker,name="Entity 3022"] at @s run particle minecraft:witch ~ ~0.25 ~ 0.5 0.15 0.5 0 1 force
#
execute as @e[type=marker,name="Entity 3022"] at @s as @a[gamemode=adventure,distance=..1,limit=1,sort=nearest] run function stuff:random_tp