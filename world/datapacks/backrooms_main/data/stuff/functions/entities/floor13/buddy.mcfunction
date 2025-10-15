execute as @e[type=zombie,name="Grumm"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Grumm",scores={generic_timer=100}] at @s run playsound minecraft:entity.ravager.ambient master @a ~ ~ ~ 2 0
execute as @e[type=zombie,name="Grumm",scores={generic_timer=100..}] run scoreboard players set @s generic_timer 0
execute at @e[type=zombie,name="Grumm"] run particle smoke ~ ~ ~ 0 0 0 0.045 1