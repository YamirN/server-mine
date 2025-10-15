execute at @e[type=item_frame,tag=west_frame,sort=random,limit=1] run setblock ~-1 ~ ~ minecraft:redstone_block
#
tellraw phaic {"text":"W tile","color":"aqua"}
scoreboard players set @a generator_timer 40
kill @e[type=item]
#
execute as @e[type=marker,name=remover] at @s run forceload add ~ ~ ~ ~