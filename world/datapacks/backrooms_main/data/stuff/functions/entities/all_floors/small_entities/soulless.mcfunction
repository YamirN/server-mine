execute as @e[type=vex,name="Entity 7302"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=vex,name="Entity 7302",scores={generic_timer=150}] at @s run playsound minecraft:entity.vex.charge master @a ~ ~ ~ 2.5 0
execute as @e[type=vex,name="Entity 7302",scores={generic_timer=500..}] run scoreboard players set @s generic_timer 0
#
execute as @e[type=vex,name="Entity 7302"] at @s run particle minecraft:mycelium ~ ~0.7 ~ 0.05 0.05 0.05 0.025 2 force