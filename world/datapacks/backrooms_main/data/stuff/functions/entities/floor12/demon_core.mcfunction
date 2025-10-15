execute as @e[type=zombie,name="Entity 667"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 667",scores={generic_timer=570}] at @s run playsound minecraft:entity.enderman.death master @a ~ ~ ~ 3.75 0
execute as @e[type=zombie,name="Entity 667",scores={generic_timer=570..}] run scoreboard players set @s generic_timer 0
#
execute at @e[type=zombie,name="Entity 667"] run particle minecraft:dust_color_transition 0 1 0 1 0 0.25 0 ~ ~1.75 ~ 0.25 0.25 0.25 0 1 force
execute as @e[type=zombie,name="Entity 667"] at @s run tp @s ~ ~ ~ ~3.25 ~
#
execute as @e[type=zombie,name="Entity 667"] at @s if entity @a[gamemode=adventure,distance=..35] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Entity 667",scores={generic_timer2=12}] at @s run summon marker ^ ^ ^0.15 {Small:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"667_projectile"}'}
execute at @e[type=zombie,name="Entity 667",scores={generic_timer2=12}] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1.25 0.5
execute as @e[type=zombie,name="Entity 667",scores={generic_timer2=12..}] run scoreboard players set @s generic_timer2 0
#
execute as @e[type=marker,name="667_projectile"] run scoreboard players add @s generic_timer 1
execute as @e[type=marker,name="667_projectile",scores={generic_timer=0..1}] at @s run tp @s ~ ~ ~ facing entity @e[type=zombie,name="Entity 667",sort=nearest,limit=1]
execute as @e[type=marker,name="667_projectile",scores={generic_timer=0..40}] at @s run tp @s ^ ^ ^-0.05
execute as @e[type=marker,name="667_projectile",scores={generic_timer=40..80}] at @s run tp @s ^-0.075 ^ ^0.025
execute as @e[type=marker,name="667_projectile",scores={generic_timer=80..120}] at @s run tp @s ^-0.025 ^ ^0.075
execute as @e[type=marker,name="667_projectile",scores={generic_timer=120..}] at @s run tp @s ^ ^ ^-0.05
execute as @e[type=marker,name="667_projectile"] at @s positioned ~ ~0.5 ~ run effect give @a[gamemode=adventure,distance=..0.75] minecraft:instant_damage 1 0 true
execute as @e[type=marker,name="667_projectile"] at @s if entity @a[gamemode=adventure,distance=..0.5] run kill @s
execute as @e[type=marker,name="667_projectile"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run kill @s
execute as @e[type=marker,name="667_projectile"] at @s run particle minecraft:composter ~ ~1 ~ 0 0 0 0 1
execute as @e[type=marker,name="667_projectile",scores={generic_timer=260..}] run kill @s
#
execute as @e[type=zombie,name="Entity 667"] at @s if entity @a[gamemode=adventure,distance=..25] run scoreboard players add @s generic_timer3 1
execute as @e[type=zombie,name="Entity 667",scores={generic_timer3=12}] at @s run summon marker ^ ^ ^-0.15 {Small:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"667A_projectile"}'}
execute at @e[type=zombie,name="Entity 667",scores={generic_timer3=12}] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1.25 0.25
execute as @e[type=zombie,name="Entity 667",scores={generic_timer3=12..}] run scoreboard players set @s generic_timer3 0
execute as @e[type=marker,name="667A_projectile"] run scoreboard players add @s generic_timer 1
execute as @e[type=marker,name="667A_projectile",scores={generic_timer=0..1}] at @s run tp @s ~ ~ ~ facing entity @e[type=zombie,name="Entity 667",sort=nearest,limit=1]
execute as @e[type=marker,name="667A_projectile",scores={generic_timer=0..40}] at @s run tp @s ^-0.05 ^ ^-0.05
execute as @e[type=marker,name="667A_projectile",scores={generic_timer=40..80}] at @s run tp @s ^-0.075 ^ ^0.025
execute as @e[type=marker,name="667A_projectile",scores={generic_timer=80..120}] at @s run tp @s ^-0.025 ^ ^0.075
execute as @e[type=marker,name="667A_projectile",scores={generic_timer=120..}] at @s run tp @s ^ ^ ^-0.05
execute as @e[type=marker,name="667A_projectile"] at @s positioned ~ ~0.5 ~ run effect give @a[gamemode=adventure,distance=..0.75] minecraft:instant_damage 1 0 true
execute as @e[type=marker,name="667A_projectile"] at @s if entity @a[gamemode=adventure,distance=..0.5] run kill @s
execute as @e[type=marker,name="667A_projectile"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run kill @s
execute as @e[type=marker,name="667A_projectile"] at @s run particle minecraft:composter ~ ~1 ~ 0 0 0 0 1
execute as @e[type=marker,name="667A_projectile",scores={generic_timer=260..}] run kill @s