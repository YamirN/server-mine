scoreboard players set @s deaths 0
gamemode adventure @s
tp @s 27.5 8 68.5 180 0
scoreboard players set @s music_timer 0
#
execute at @s run playsound minecraft:entity.item.pickup player @a ~ ~ ~ 1 0
execute at @s run particle minecraft:poof ~ ~0.75 ~ 0 0 0 0.075 150