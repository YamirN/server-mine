execute as @e[type=zombie,name="Entity 457"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 457",scores={generic_timer=220}] at @s run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 3.75 0.5
execute as @e[type=zombie,name="Entity 457",scores={generic_timer=220..}] run scoreboard players set @s generic_timer 0
#
execute as @e[type=zombie,name="Entity 457"] run data merge entity @s {Fire:20}
execute as @e[type=zombie,name="Entity 457"] at @s run particle minecraft:lava ~ ~1 ~ 0 0 0 0 1