execute as @e[type=zombie,name="Entity 229"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 229",scores={generic_timer=825}] at @s run playsound minecraft:block.piston.extend master @a ~ ~ ~ 3.5 0.5
execute as @e[type=zombie,name="Entity 229",scores={generic_timer=875}] at @s run playsound minecraft:block.piston.contract master @a ~ ~ ~ 3.5 0.5
execute as @e[type=zombie,name="Entity 229",scores={generic_timer=875..}] run scoreboard players set @s generic_timer 0
execute as @e[type=zombie,tag=229] run effect give @s minecraft:invisibility 999999 0 true
#
#229A
#
execute as @e[type=zombie,tag=229A] at @s if entity @a[gamemode=adventure,distance=..25] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,tag=229A,scores={generic_timer2=100}] at @s run summon marker ~ ~1 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"229A_projectile"}'}
execute as @e[type=zombie,tag=229A,scores={generic_timer2=100}] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 2
execute as @e[type=zombie,tag=229A,scores={generic_timer2=100..}] run scoreboard players set @s generic_timer2 0
#
execute as @e[type=marker,name="229A_projectile"] run scoreboard players add @s generic_timer 1
execute as @e[type=marker,name="229A_projectile",scores={generic_timer=0..20}] at @s run tp @s ~ ~ ~ facing entity @a[gamemode=adventure,sort=nearest,limit=1]
execute as @e[type=marker,name="229A_projectile"] at @s run tp @s ^ ^ ^0.275
execute as @e[type=marker,name="229A_projectile"] at @s run effect give @a[gamemode=adventure,distance=..0.5] minecraft:wither 2 10 true
execute as @e[type=marker,name="229A_projectile"] at @s run effect give @a[gamemode=adventure,distance=..0.5] minecraft:blindness 3 0 true
execute as @e[type=marker,name="229A_projectile"] at @s if entity @a[gamemode=adventure,distance=..0.5] run kill @s
execute as @e[type=marker,name="229A_projectile"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run kill @s
execute as @e[type=marker,name="229A_projectile"] at @s run particle minecraft:dust 1 0 0 1.25 ~ ~1 ~ 0 0 0 0 2
execute as @e[type=marker,name="229A_projectile",scores={generic_timer=90..}] run kill @s
#
#229B
#
execute as @e[type=zombie,tag=229B] at @s if entity @a[gamemode=adventure,distance=..25] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,tag=229B,scores={generic_timer2=80}] at @s run summon marker ~ ~1 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"229B_projectile"}'}
execute as @e[type=zombie,tag=229B,scores={generic_timer2=80}] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 2
execute as @e[type=zombie,tag=229B,scores={generic_timer2=80..}] run scoreboard players set @s generic_timer2 0
#
execute as @e[type=marker,name="229B_projectile"] run scoreboard players add @s generic_timer 1
execute as @e[type=marker,name="229B_projectile",scores={generic_timer=0..15}] at @s run tp @s ~ ~ ~ facing entity @a[gamemode=adventure,sort=nearest,limit=1]
execute as @e[type=marker,name="229B_projectile"] at @s run tp @s ^0.15 ^ ^0.35
execute as @e[type=marker,name="229B_projectile"] at @s run effect give @a[gamemode=adventure,distance=..0.5] minecraft:wither 2 10 true
execute as @e[type=marker,name="229B_projectile"] at @s run effect give @a[gamemode=adventure,distance=..0.5] minecraft:nausea 12 0 true
execute as @e[type=marker,name="229B_projectile"] at @s if entity @a[gamemode=adventure,distance=..0.5] run kill @s
execute as @e[type=marker,name="229B_projectile"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run kill @s
execute as @e[type=marker,name="229B_projectile"] at @s run particle minecraft:dust 1 1 0 1.25 ~ ~1 ~ 0 0 0 0 2
execute as @e[type=marker,name="229B_projectile",scores={generic_timer=90..}] run kill @s
#
#229C
#
execute as @e[type=zombie,tag=229C] at @s if entity @a[gamemode=adventure,distance=..25] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,tag=229C,scores={generic_timer2=60}] at @s run summon marker ~ ~1 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"229C_projectile"}'}
execute as @e[type=zombie,tag=229C,scores={generic_timer2=60}] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 2
execute as @e[type=zombie,tag=229C,scores={generic_timer2=60..}] run scoreboard players set @s generic_timer2 0
#
execute as @e[type=marker,name="229C_projectile"] run scoreboard players add @s generic_timer 1
execute as @e[type=marker,name="229C_projectile",scores={generic_timer=0..15}] at @s run tp @s ~ ~ ~ facing entity @a[gamemode=adventure,sort=nearest,limit=1]
execute as @e[type=marker,name="229C_projectile"] at @s run tp @s ^-0.15 ^ ^0.35
execute as @e[type=marker,name="229C_projectile"] at @s run effect give @a[gamemode=adventure,distance=..0.5] minecraft:wither 2 10 true
execute as @e[type=marker,name="229C_projectile"] at @s run effect give @a[gamemode=adventure,distance=..0.5] minecraft:slowness 4 2 true
execute as @e[type=marker,name="229C_projectile"] at @s if entity @a[gamemode=adventure,distance=..0.5] run kill @s
execute as @e[type=marker,name="229C_projectile"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run kill @s
execute as @e[type=marker,name="229C_projectile"] at @s run particle minecraft:dust 0 1 0 1.25 ~ ~1 ~ 0 0 0 0 2
execute as @e[type=marker,name="229C_projectile",scores={generic_timer=90..}] run kill @s