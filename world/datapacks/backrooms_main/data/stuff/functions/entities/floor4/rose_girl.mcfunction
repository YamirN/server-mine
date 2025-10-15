execute as @e[type=zombie,name="Entity 3815"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 3815",scores={generic_timer=680}] at @s run playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 4 1.5
execute as @e[type=zombie,name="Entity 3815",scores={generic_timer=680..}] run scoreboard players set @s generic_timer 0
#
execute as @e[type=zombie,name="Entity 3815"] at @s run particle minecraft:portal ~ ~1 ~ 0.25 0.25 0.25 1 1 force
execute as @e[type=zombie,name="Entity 3815"] if entity @a[gamemode=adventure] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Entity 3815",scores={generic_timer2=120}] run setblock 103 10 29 minecraft:redstone_block
execute as @e[type=zombie,name="Entity 3815",scores={generic_timer2=121..}] run scoreboard players set @s generic_timer2 0