scoreboard players set time revive_timer 0
scoreboard players set limit revive_timer 800
execute as @a[gamemode=spectator] run tag @s add dead
execute as @a[gamemode=adventure] run tag @s add alive
#
execute as @a[tag=dead] at @a[tag=alive,sort=random,limit=1] run tp @s ~ ~ ~
#
setblock ~ ~ ~ air
setblock ~ ~2 ~ air destroy
scoreboard players set @a maj_entity_time 1780
scoreboard players set @a min_entity_time 780
#
execute at @a run particle minecraft:end_rod ~ ~1 ~ 1 1 1 0 50
execute as @a at @s run playsound minecraft:custom.noclip_sound master @s ~ ~ ~ 1 1
#
effect give @e[team=small_entity] minecraft:speed 10 1 true
effect give @e[team=large_entity] minecraft:speed 10 1 true
#
execute as @e[team=large_entity,limit=1,sort=random] at @a[tag=alive,limit=1,sort=random] at @e[type=marker,name=remover,limit=1,sort=random,distance=..25] run tp @s ~6 ~12 ~11
#
tellraw @a ["",{"text":"REVIVE PROCESS INITIATED","bold":true,"color":"aqua"},{"text":"\n"},{"text":"If you are ","color":"gray"},{"text":"DEAD","color":"red"},{"text":" stay near any alive players to cleanse them of blindness\nAfter ","color":"gray"},{"text":"40 seconds","color":"yellow"},{"text":" all dead players will be ","color":"gray"},{"text":"revived","color":"aqua"},{"text":"!","color":"gray"}]