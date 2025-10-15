execute as @e[type=zombie,name="Entity 4335"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 4335",scores={generic_timer=625}] at @s run playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 3 0
execute as @e[type=zombie,name="Entity 4335",scores={generic_timer=625..}] run scoreboard players set @s generic_timer 0
execute as @e[type=zombie,name="Entity 4335"] at @s if entity @p[gamemode=adventure,distance=..10] run effect give @s minecraft:slowness 3 3 true
#
execute as @e[type=zombie,name="Entity 4335"] at @s run particle minecraft:squid_ink ~ ~1 ~ 0.5 0.5 0.5 0.05 1 force
execute as @e[type=zombie,name="Entity 4335"] at @s if entity @a[gamemode=adventure,distance=..20] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Entity 4335",scores={generic_timer2=65}] at @s run summon marker ^1 ^1 ^1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"4335_projectile"}'}
execute as @e[type=zombie,name="Entity 4335",scores={generic_timer2=65}] at @s run summon marker ^-1 ^1 ^1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"4335_projectile"}'}
execute at @e[type=zombie,name="Entity 4335",scores={generic_timer2=65}] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 0.5 0.5
execute as @e[type=zombie,name="Entity 4335",scores={generic_timer2=65..}] run scoreboard players set @s generic_timer2 0
execute as @e[type=marker,name="4335_projectile"] run scoreboard players add @s generic_timer 1
execute as @e[type=marker,name="4335_projectile",scores={generic_timer=0..60}] at @s run tp @s ~ ~ ~ facing entity @a[gamemode=adventure,sort=nearest,limit=1]
execute as @e[type=marker,name="4335_projectile"] at @s run tp @s ^ ^ ^0.15
execute as @e[type=marker,name="4335_projectile"] at @s run effect give @a[gamemode=adventure,distance=..0.5] minecraft:wither 2 10 true
execute as @e[type=marker,name="4335_projectile"] at @s run effect give @a[gamemode=adventure,distance=..0.5] minecraft:blindness 3 0 true
execute as @e[type=marker,name="4335_projectile"] at @s if entity @a[gamemode=adventure,distance=..0.5] run kill @s
execute as @e[type=marker,name="4335_projectile"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run kill @s
execute as @e[type=marker,name="4335_projectile"] at @s run particle minecraft:dust 0.15 0.15 0.15 2 ~ ~1 ~ 0 0 0 0 2
execute as @e[type=marker,name="4335_projectile",scores={generic_timer=100..}] run kill @s