execute as @e[type=skeleton,name="Entity 7462"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=skeleton,name="Entity 7462",scores={generic_timer=520}] at @s run playsound minecraft:entity.skeleton_horse.death master @a ~ ~ ~ 3.75 0.25
execute as @e[type=skeleton,name="Entity 7462",scores={generic_timer=520..}] run scoreboard players set @s generic_timer 0
execute as @e[type=minecraft:skeleton_horse,name="Entity 7462A"] at @s if entity @p[gamemode=adventure,distance=..5] run effect give @s minecraft:slowness 2 2 true
execute as @e[type=minecraft:skeleton,name="Entity 7462"] at @s if entity @p[gamemode=adventure,distance=..6] run effect give @s minecraft:slowness 2 2 true
execute at @e[type=skeleton,name="Entity 7462"] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.25 0.25 0.25 0.035 1 force
#
execute as @e[type=skeleton,name="Entity 7462"] at @s if entity @a[gamemode=adventure,distance=..25] run scoreboard players add @s generic_timer2 1
execute as @e[type=skeleton,name="Entity 7462",scores={generic_timer2=30}] at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"7462_projectile"}'}
execute at @e[type=skeleton,name="Entity 7462",scores={generic_timer2=30}] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.25 1
execute as @e[type=skeleton,name="Entity 7462",scores={generic_timer2=30..}] run scoreboard players set @s generic_timer2 0
#
execute as @e[type=armor_stand,name="7462_projectile"] run scoreboard players add @s generic_timer 1
execute as @e[type=armor_stand,name="7462_projectile",scores={generic_timer=0..2}] at @s run tp @s ~ ~ ~ facing entity @a[gamemode=adventure,sort=nearest,limit=1]
execute as @e[type=armor_stand,name="7462_projectile"] at @s run tp @s ^ ^ ^0.275
execute as @e[type=armor_stand,name="7462_projectile"] at @s run effect give @a[gamemode=adventure,distance=..0.5] minecraft:wither 2 10 true
execute as @e[type=armor_stand,name="7462_projectile"] at @s if entity @a[gamemode=adventure,distance=..0.5] run kill @s
execute as @e[type=armor_stand,name="7462_projectile"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run kill @s
execute as @e[type=armor_stand,name="7462_projectile"] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.025 1
execute as @e[type=armor_stand,name="7462_projectile",scores={generic_timer=60..}] run kill @s