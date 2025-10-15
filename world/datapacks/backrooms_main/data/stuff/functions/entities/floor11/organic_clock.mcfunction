execute as @e[type=zombie,name="Entity 760"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 760",scores={generic_timer=580}] at @s run playsound minecraft:block.bone_block.place master @a ~ ~ ~ 3.75 0.75
execute as @e[type=zombie,name="Entity 760",scores={generic_timer=600}] at @s run playsound minecraft:block.bone_block.place master @a ~ ~ ~ 3.75 0.75
execute as @e[type=zombie,name="Entity 760",scores={generic_timer=620}] at @s run playsound minecraft:block.bone_block.place master @a ~ ~ ~ 3.75 0.75
execute as @e[type=zombie,name="Entity 760",scores={generic_timer=640..}] run scoreboard players set @s generic_timer 0
#
execute as @e[type=zombie,name="Entity 760"] at @s if entity @a[gamemode=adventure,distance=..25] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Entity 760",scores={generic_timer2=30}] at @s run summon armor_stand ~ ~0.9 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"760_projectile"}'}
execute at @e[type=zombie,name="Entity 760",scores={generic_timer2=30}] run playsound minecraft:entity.drowned.shoot master @a ~ ~ ~ 0.5 0
execute as @e[type=zombie,name="Entity 760",scores={generic_timer2=50}] at @s run summon armor_stand ~ ~0.9 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"760_projectile"}'}
execute at @e[type=zombie,name="Entity 760",scores={generic_timer2=50}] run playsound minecraft:entity.drowned.shoot master @a ~ ~ ~ 0.5 0
execute as @e[type=zombie,name="Entity 760",scores={generic_timer2=70}] at @s run summon armor_stand ~ ~0.9 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"760_projectile"}'}
execute at @e[type=zombie,name="Entity 760",scores={generic_timer2=70}] run playsound minecraft:entity.drowned.shoot master @a ~ ~ ~ 0.5 0
execute as @e[type=zombie,name="Entity 760",scores={generic_timer2=100..}] run scoreboard players set @s generic_timer2 0
#
execute as @e[type=armor_stand,name="760_projectile"] run scoreboard players add @s generic_timer 1
execute as @e[type=armor_stand,name="760_projectile",scores={generic_timer=0..10}] at @s run tp @s ~ ~ ~ facing entity @a[gamemode=adventure,sort=nearest,limit=1]
execute as @e[type=armor_stand,name="760_projectile"] at @s run tp @s ^ ^ ^0.3
execute as @e[type=armor_stand,name="760_projectile"] at @s run effect give @a[gamemode=adventure,distance=..0.5] minecraft:slowness 2 10 true
execute as @e[type=armor_stand,name="760_projectile"] at @s run effect give @a[gamemode=adventure,distance=..0.5] minecraft:jump_boost 2 128 true
execute as @e[type=armor_stand,name="760_projectile"] at @s if entity @a[gamemode=adventure,distance=..0.5] run playsound minecraft:block.portal.travel master @a ~ ~ ~ 0.15 1.5
execute as @e[type=armor_stand,name="760_projectile"] at @s if entity @a[gamemode=adventure,distance=..0.5] run particle minecraft:portal ~ ~1 ~ 0 0 0 1 500
execute as @e[type=armor_stand,name="760_projectile"] at @s if entity @a[gamemode=adventure,distance=..0.5] run kill @s
execute as @e[type=armor_stand,name="760_projectile"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run kill @s
execute as @e[type=armor_stand,name="760_projectile"] at @s run particle minecraft:effect ~ ~1 ~ 0.05 0.05 0.05 0 3
execute as @e[type=armor_stand,name="760_projectile",scores={generic_timer=60..}] run kill @s