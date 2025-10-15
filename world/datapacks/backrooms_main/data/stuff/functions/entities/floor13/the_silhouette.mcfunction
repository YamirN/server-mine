execute as @e[type=wither_skeleton,name="Entity 7999"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=wither_skeleton,name="Entity 7999",scores={generic_timer=770}] at @s run playsound minecraft:entity.ravager.roar master @a ~ ~ ~ 4 0
execute as @e[type=wither_skeleton,name="Entity 7999",scores={generic_timer=770..}] run scoreboard players set @s generic_timer 0
#
execute as @e[type=wither_skeleton,name="Entity 7999"] at @s if entity @a[gamemode=adventure,distance=..15] run scoreboard players add @s generic_timer2 1
execute as @e[type=wither_skeleton,name="Entity 7999",scores={generic_timer2=90}] at @s if entity @a[distance=..8,gamemode=adventure] run particle minecraft:large_smoke ~ ~1.25 ~ 0.05 0.05 0.05 0.15 100
execute as @e[type=wither_skeleton,name="Entity 7999",scores={generic_timer2=90}] at @s at @a[distance=..8,gamemode=adventure] run tp @s ^ ^ ^-2
execute as @e[type=wither_skeleton,name="Entity 7999",scores={generic_timer2=90}] at @s run tp @s ~ ~0.5 ~
effect give @e[type=minecraft:wither_skeleton,name="Entity 7999",scores={generic_timer2=90}] minecraft:slowness 1 10 true
effect give @e[type=minecraft:wither_skeleton,name="Entity 7999",scores={generic_timer2=90}] minecraft:weakness 2 10 true
execute at @e[type=minecraft:wither_skeleton,name="Entity 7999",scores={generic_timer2=90}] run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 100
execute at @e[type=minecraft:wither_skeleton,name="Entity 7999",scores={generic_timer2=90}] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0
execute as @e[type=wither_skeleton,name="Entity 7999",scores={generic_timer2=90..}] run scoreboard players set @s generic_timer2 0