execute at @e[type=item_frame,tag=4way_frame,sort=random,limit=1] run setblock ~-1 ~ ~ minecraft:redstone_block
#
tellraw phaic {"text":"4way tile","color":"white"}
scoreboard players set @a generator_timer 40
kill @e[type=item]
#
execute as @e[type=marker,name=remover] at @s run forceload add ~ ~ ~ ~