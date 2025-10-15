scoreboard players set @s deaths 1
gamemode spectator @s
tag @s add in_backrooms
execute at @a[gamemode=adventure,tag=in_backrooms,limit=1,sort=random] run tp @s ~ ~ ~
#
execute at @s run playsound minecraft:entity.item.pickup player @a ~ ~ ~ 1 0
execute at @s run particle minecraft:poof ~ ~0.75 ~ 0 0 0 0.075 150