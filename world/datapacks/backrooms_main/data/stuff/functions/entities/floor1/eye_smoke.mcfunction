execute as @e[type=zombie,name="Entity 3792"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 3792",scores={generic_timer=700}] at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 3 0
execute as @e[type=zombie,name="Entity 3792",scores={generic_timer=700..}] run scoreboard players set @s generic_timer 0
execute as @e[type=zombie,name="Entity 3792"] at @s run effect give @a[distance=..5.5] minecraft:darkness 3 0 true
execute as @e[type=zombie,name="Entity 3792"] at @s run particle minecraft:large_smoke ~ ~1 ~ 1.25 1.25 1.25 0.025 15 force