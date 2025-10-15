execute as @e[type=zombie,name="Entity 576"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 576",scores={generic_timer=240}] at @s run playsound minecraft:entity.evoker.ambient master @a ~ ~ ~ 2.5 0
execute as @e[type=zombie,name="Entity 576",scores={generic_timer=240..}] run scoreboard players set @s generic_timer 0
#
execute as @e[type=zombie,name="Entity 576"] at @s if entity @p[gamemode=adventure,distance=..8] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Entity 576",scores={generic_timer2=96}] at @s run particle minecraft:angry_villager ~ ~1 ~ 0.5 0.5 0.5 0 10
execute as @e[type=zombie,name="Entity 576",scores={generic_timer2=120}] at @s run item replace entity @p[gamemode=adventure,limit=1,distance=..10] weapon.mainhand with air
execute as @e[type=zombie,name="Entity 576",scores={generic_timer2=120}] at @s at @p run particle minecraft:poof ~ ~1 ~ 0 0 0 0.25 25
execute as @e[type=zombie,name="Entity 576",scores={generic_timer2=120}] at @s at @p run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0
execute as @e[type=zombie,name="Entity 576",scores={generic_timer2=120..}] run scoreboard players set @s generic_timer2 0