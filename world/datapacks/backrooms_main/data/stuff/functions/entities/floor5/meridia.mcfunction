execute as @e[type=wither_skeleton,name="Entity 3114"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=wither_skeleton,name="Entity 3114",scores={generic_timer=780}] at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 3 0.5
execute as @e[type=wither_skeleton,name="Entity 3114",scores={generic_timer=780..}] run scoreboard players set @s generic_timer 0
#
execute as @e[type=wither_skeleton,name="Entity 3114"] at @s as @a[distance=..4,gamemode=adventure] at @s run tp @s ~ ~ ~ facing entity @e[type=wither_skeleton,name="Entity 3114",limit=1,sort=nearest]
execute as @e[type=wither_skeleton,name="Entity 3114"] at @s as @a[distance=..4] at @s run particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 1 5
execute as @e[type=wither_skeleton,name="Entity 3114"] at @s as @a[distance=..4,gamemode=adventure] at @s run playsound minecraft:entity.player.big_fall master @a ~ ~ ~ 0.15 0
#
execute as @e[type=wither_skeleton,name="Entity 3114"] at @s run particle minecraft:witch ~ ~1 ~ 0.25 0.25 0.25 0.025 1 force