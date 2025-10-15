execute as @e[type=zombie,name="Entity 6353"] run effect give @s minecraft:fire_resistance 10 0 true
#
execute as @e[type=zombie,name="Entity 6353"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer=825}] at @s run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 3 0.5
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer=825..}] run scoreboard players set @s generic_timer 0
#
execute as @e[type=zombie,name="Entity 6353"] at @s run particle minecraft:enchant ~ ~1.75 ~ 0.05 0.05 0.05 1 2 force
#
execute as @e[type=zombie,name="Entity 6353"] at @s if entity @p[gamemode=adventure,distance=..20] run scoreboard players add @s generic_timer2 1
#
#teleports
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=60}] at @s if block ^2 ^ ^ #stuff:projectile_pass run tp @s ^2 ^ ^
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=60}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=60}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=80}] at @s if block ^2 ^ ^ #stuff:projectile_pass run tp @s ^2 ^ ^
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=80}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=80}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=100}] at @s if block ^2 ^ ^ #stuff:projectile_pass run tp @s ^2 ^ ^
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=100}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=100}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=140}] at @s if block ^-2 ^ ^ #stuff:projectile_pass run tp @s ^-2 ^ ^
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=140}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=140}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=160}] at @s if block ^-2 ^ ^ #stuff:projectile_pass run tp @s ^-2 ^ ^
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=160}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=160}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=200}] at @s if block ^ ^ ^5 #stuff:projectile_pass run tp @s ^ ^ ^5
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=200}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=200}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=220}] at @s if block ^-2 ^ ^ #stuff:projectile_pass run tp @s ^-2 ^ ^
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=220}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=220}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=240}] at @s if block ^4 ^ ^ #stuff:projectile_pass run tp @s ^4 ^ ^
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=240}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=240}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=400}] at @s if block ^ ^ ^-5 #stuff:projectile_pass run tp @s ^ ^ ^-5
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=400}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=400}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=440}] at @s if block ^2 ^ ^ #stuff:projectile_pass run tp @s ^2 ^ ^
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=440}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=440}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=460}] at @s if block ^-2 ^ ^ #stuff:projectile_pass run tp @s ^-2 ^ ^
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=460}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=460}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=480}] at @s if block ^-2 ^ ^ #stuff:projectile_pass run tp @s ^-2 ^ ^
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=480}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=480}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=520}] at @s if block ^ ^ ^5 #stuff:projectile_pass run tp @s ^ ^ ^5
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=520}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=520}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=540..550}] at @s if block ^1 ^ ^ #stuff:projectile_pass run tp @s ^1 ^ ^
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=540..550}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=540..550}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=580..590}] at @s if block ^-1 ^ ^ #stuff:projectile_pass run tp @s ^-1 ^ ^
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=580..590}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=580..590}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=620}] at @s if block ^2 ^ ^2 #stuff:projectile_pass run tp @s ^2 ^ ^2
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=620}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=620}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=650}] at @s if block ^-2 ^ ^ #stuff:projectile_pass run tp @s ^-2 ^ ^
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=650}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=650}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=655}] at @s if block ^2 ^ ^ #stuff:projectile_pass run tp @s ^2 ^ ^
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=655}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=655}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=660}] at @s if block ^2 ^ ^ #stuff:projectile_pass run tp @s ^2 ^ ^
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=660}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=660}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=665}] at @s if block ^-2 ^ ^ #stuff:projectile_pass run tp @s ^-2 ^ ^
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=665}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=665}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=670}] at @s if block ^ ^ ^5 #stuff:projectile_pass run tp @s ^ ^ ^5
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=670}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=670}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=710..720}] at @s if block ^ ^ ^1 #stuff:projectile_pass run tp @s ^ ^ ^1
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=710..720}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=710..720}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=750..760}] at @s if block ^-1 ^ ^0.5 #stuff:projectile_pass run tp @s ^-1 ^ ^0.5
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=750..760}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=750..760}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=790..800}] at @s if block ^0.5 ^ ^-0.5 #stuff:projectile_pass run tp @s ^0.5 ^ ^-0.5
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=790..800}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.25 50
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=790..800}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
#
#
#
execute as @e[type=zombie,name="Entity 6353",scores={generic_timer2=820..}] run scoreboard players set @s generic_timer2 0