execute as @e[type=zombie,name="Entity 1969"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 1969",scores={generic_timer=810}] at @s run playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 4 0
execute as @e[type=zombie,name="Entity 1969",scores={generic_timer=810..}] run scoreboard players set @s generic_timer 0
#
execute as @e[type=armor_stand,name="1969_projectile"] run scoreboard players add @s generic_timer 1
execute as @e[type=armor_stand,name="1969_projectile"] at @s run tp @s ^ ^ ^0.35
execute as @e[type=armor_stand,name="1969_projectile"] at @s positioned ~ ~1 ~ run effect give @a[gamemode=adventure,distance=..0.5] minecraft:wither 2 10 true
execute as @e[type=armor_stand,name="1969_projectile"] at @s if entity @a[gamemode=adventure,distance=..0.5] run kill @s
execute as @e[type=armor_stand,name="1969_projectile"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run kill @s
execute as @e[type=armor_stand,name="1969_projectile"] at @s run particle minecraft:small_flame ~ ~1 ~ 0.125 0.125 0.125 0.025 5
execute as @e[type=armor_stand,name="1969_projectile"] at @s run particle minecraft:dust 1 0.5 0 0.75 ~ ~1 ~ 0 0 0 0 5
execute as @e[type=armor_stand,name="1969_projectile",scores={generic_timer=40..}] run kill @s
execute as @e[type=zombie,name="Entity 1969"] at @s run particle minecraft:electric_spark ~ ~1 ~ 0 0 0 0.75 1 force
execute as @e[type=zombie,name="Entity 1969"] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure,distance=1.5..9,limit=1,sort=nearest]
#
execute as @e[type=zombie,name="Entity 1969"] at @s if entity @p[gamemode=adventure,distance=..12] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Entity 1969",scores={generic_timer2=40}] at @s run summon armor_stand ^ ^-1 ^1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"1969_projectile"}'}
execute as @e[type=zombie,name="Entity 1969",scores={generic_timer2=40}] at @s run summon armor_stand ^1 ^-1 ^1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"1969_projectile"}'}
execute as @e[type=zombie,name="Entity 1969",scores={generic_timer2=40}] at @s run summon armor_stand ^2 ^-1 ^1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"1969_projectile"}'}
execute as @e[type=zombie,name="Entity 1969",scores={generic_timer2=40}] at @s run summon armor_stand ^-1 ^-1 ^1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"1969_projectile"}'}
execute as @e[type=zombie,name="Entity 1969",scores={generic_timer2=40}] at @s run summon armor_stand ^-2 ^-1 ^1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"1969_projectile"}'}
execute as @e[type=armor_stand,name=1969_projectile] at @s rotated as @e[type=zombie,name="Entity 1969",sort=nearest,limit=1,scores={generic_timer2=40}] run tp @s ~ ~ ~ ~ ~
execute as @e[type=armor_stand,name=1969_projectile] at @s run tp @s ~ ~ ~ ~ 0
execute at @e[type=zombie,name="Entity 1969",scores={generic_timer2=40}] run particle minecraft:firework ~ ~1 ~ 0 0 0 0.25 10
execute at @e[type=zombie,name="Entity 1969",scores={generic_timer2=40}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 1.5
execute as @e[type=zombie,name="Entity 1969",scores={generic_timer2=40..}] run scoreboard players set @s generic_timer2 0