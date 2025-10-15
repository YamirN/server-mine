execute as @e[type=zoglin,name="Entity 6613"] run effect give @s minecraft:fire_resistance 10 0 true
#
execute as @e[type=zoglin,name="Entity 6613"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zoglin,name="Entity 6613",scores={generic_timer=425}] at @s run playsound minecraft:entity.zoglin.ambient master @a ~ ~ ~ 3.5 0.5
execute as @e[type=zoglin,name="Entity 6613",scores={generic_timer=425..}] run scoreboard players set @s generic_timer 0
execute at @e[type=minecraft:zoglin,name="Entity 6613"] run particle minecraft:dust 1 0 0 0.5 ~ ~0.75 ~ 0.5 0.5 0.5 0 5