execute at @e[type=item_frame,tag=north_frame,sort=random,limit=1] run setblock ~-1 ~ ~ minecraft:redstone_block
#
tellraw phaic {"text":"N tile","color":"red"}
scoreboard players set @a generator_timer 40
kill @e[type=item]
#
execute as @e[type=marker,name=remover] at @s run forceload add ~ ~ ~ ~