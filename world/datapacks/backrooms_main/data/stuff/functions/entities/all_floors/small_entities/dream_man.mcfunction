execute as @e[type=zombie,name="Entity 990"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 990",scores={generic_timer=400}] at @s run playsound minecraft:entity.pillager.ambient master @a ~ ~ ~ 2 0.75
execute as @e[type=zombie,name="Entity 990",scores={generic_timer=400..}] run scoreboard players set @s generic_timer 0
#
execute as @e[type=zombie,name="Entity 990",nbt={HurtTime:10s}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 2
execute as @e[type=zombie,name="Entity 990",nbt={HurtTime:10s}] at @s run particle minecraft:falling_dust white_concrete ~ ~1 ~ 0.75 0.75 0.75 0 100
execute as @e[type=zombie,name="Entity 990",nbt={HurtTime:10s}] at @p[gamemode=adventure] at @e[tag=clear_room,limit=1,sort=random,distance=..40] run tp @s ~ ~ ~
execute as @e[type=zombie,name="Entity 990",nbt={HurtTime:10s}] at @s run playsound minecraft:entity.pillager.ambient master @a ~ ~ ~ 2.5 0.75