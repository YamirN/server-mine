execute as @e[type=zombie,name="Entity 213"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 213",scores={generic_timer=555}] at @s run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 2.5 0.25
execute as @e[type=zombie,name="Entity 213",scores={generic_timer=555..}] run scoreboard players set @s generic_timer 0
execute as @e[type=zombie,name="Entity 213"] at @s if entity @a[gamemode=adventure,distance=..1.35] run effect give @s minecraft:glowing 1 0 true
#
execute as @e[type=zombie,name="Entity 213"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Entity 213",scores={generic_timer2=10}] at @s run particle minecraft:flash ~ ~1 ~ 0.25 0.25 0.25 0 3 force
execute as @e[type=zombie,name="Entity 213",scores={generic_timer2=10..}] run scoreboard players set @s generic_timer2 0