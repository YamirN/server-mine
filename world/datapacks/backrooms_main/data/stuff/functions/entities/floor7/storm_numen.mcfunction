execute as @e[type=zombie,name="Entity 8967"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 8967",scores={generic_timer=900}] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 4 0
execute as @e[type=zombie,name="Entity 8967",scores={generic_timer=900..}] run scoreboard players set @s generic_timer 0
execute as @e[type=zombie,name="Entity 8967"] at @s run particle minecraft:fishing ~ ~1 ~ 0.5 0.5 0.5 0.05 1 force
#
execute as @e[type=zombie,name="Entity 8967"] at @s if entity @p[gamemode=adventure,distance=..20] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Entity 8967",scores={generic_timer2=165..}] at @s run particle minecraft:electric_spark ~ ~1 ~ 0 0 0 2 12
execute as @e[type=zombie,name="Entity 8967",scores={generic_timer2=168..}] run effect give @s minecraft:slowness 1 10 true
execute as @e[type=zombie,name="Entity 8967",scores={generic_timer2=200}] at @s run summon minecraft:lightning_bolt ~5 ~ ~
execute as @e[type=zombie,name="Entity 8967",scores={generic_timer2=200}] at @s run summon minecraft:lightning_bolt ~-5 ~ ~
execute as @e[type=zombie,name="Entity 8967",scores={generic_timer2=200}] at @s run summon minecraft:lightning_bolt ~ ~ ~5
execute as @e[type=zombie,name="Entity 8967",scores={generic_timer2=200}] at @s run summon minecraft:lightning_bolt ~ ~ ~-5
execute as @e[type=zombie,name="Entity 8967",scores={generic_timer2=200}] at @s run summon minecraft:lightning_bolt ~3.5 ~ ~3.5
execute as @e[type=zombie,name="Entity 8967",scores={generic_timer2=200}] at @s run summon minecraft:lightning_bolt ~3.5 ~ ~-3.5
execute as @e[type=zombie,name="Entity 8967",scores={generic_timer2=200}] at @s run summon minecraft:lightning_bolt ~-3.5 ~ ~3.5
execute as @e[type=zombie,name="Entity 8967",scores={generic_timer2=200}] at @s run summon minecraft:lightning_bolt ~-3.5 ~ ~-3.5
execute as @e[type=zombie,name="Entity 8967",scores={generic_timer2=200..}] run scoreboard players set @s generic_timer2 0