execute as @e[name="Entity 893"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[name="Entity 893",scores={generic_timer=290}] at @s run playsound minecraft:entity.ghast.hurt master @a ~ ~ ~ 3.5 0
execute as @e[name="Entity 893",scores={generic_timer=290..}] run scoreboard players set @s generic_timer 0