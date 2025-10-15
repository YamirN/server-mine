execute as @e[type=husk,name="Entity 2466"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=husk,name="Entity 2466",scores={generic_timer=50}] at @s run playsound minecraft:entity.villager.ambient master @a ~ ~ ~ 1.5 0.25
execute as @e[type=husk,name="Entity 2466",scores={generic_timer=50..}] run scoreboard players set @s generic_timer 0
execute as @e[type=husk,name="Entity 2466"] at @s run effect give @a[distance=..6] minecraft:weakness 15 0 true
execute as @e[type=husk,name="Entity 2466"] at @s run effect give @e[type=!player,type=!husk,distance=..6] minecraft:strength 15 0 false
#
execute as @e[type=minecraft:husk,name="Entity 2466"] at @s if entity @e[type=!player,type=!husk,nbt={HurtTime:10s},distance=..5] run effect give @p[limit=1,gamemode=adventure] minecraft:wither 1 1 true
execute as @e[type=minecraft:husk,name="Entity 2466"] at @s if entity @e[type=!player,type=!husk,nbt={HurtTime:10s},distance=..5] run playsound minecraft:entity.generic.eat master @a ~ ~ ~ 1.25 1