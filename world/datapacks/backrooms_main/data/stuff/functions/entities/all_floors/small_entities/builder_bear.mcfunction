execute as @e[type=zombie,name="Entity 1048"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 1048",scores={generic_timer=490}] at @s run playsound minecraft:entity.bat.hurt master @a ~ ~ ~ 2.5 0.25
execute as @e[type=zombie,name="Entity 1048",scores={generic_timer=490..}] run scoreboard players set @s generic_timer 0
#
execute as @e[type=zombie,name="Entity 1048"] at @s if entity @a[gamemode=adventure,distance=..3] run effect give @s minecraft:speed 2 14 true
execute as @e[type=zombie,name="Entity 1048"] at @s if entity @a[gamemode=adventure,distance=..3] run particle dust 0.75 0 0 1 ~ ~0.75 ~ 0.25 0.25 0.25 0 3
execute as @e[type=zombie,name="Entity 1048"] at @s if entity @a[gamemode=adventure,distance=..3] run playsound minecraft:entity.bat.ambient master @a ~ ~ ~ 0.05 0