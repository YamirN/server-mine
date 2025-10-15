execute as @e[type=zombie,name="Entity 106"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 106",scores={generic_timer=635}] at @s run playsound minecraft:entity.zombie_villager.ambient master @a ~ ~ ~ 3 0.5
execute as @e[type=zombie,name="Entity 106",scores={generic_timer=635..}] run scoreboard players set @s generic_timer 0
execute as @e[type=zombie,name="Entity 106"] run scoreboard players add @s generic_timer3 1
execute as @e[type=zombie,name="Entity 106",scores={generic_timer3=4600..}] run kill @s
#
execute as @e[type=zombie,name="Entity 106",nbt=!{NoAI:1b}] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Entity 106",scores={generic_timer2=200}] run data merge entity @s {NoAI:1b}
execute as @e[type=zombie,name="Entity 106",nbt={HurtTime:10s}] run scoreboard players set @s generic_timer2 0
execute as @e[type=zombie,name="Entity 106",nbt={HurtTime:10s}] run data merge entity @s {NoAI:0b}