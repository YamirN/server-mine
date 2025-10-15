execute as @e[type=zombie,name="Entity 4434"] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 4434",scores={generic_timer=1}] at @s run playsound minecraft:music_disc.chirp voice @a ~ ~ ~ 3.15 0.75
execute as @e[type=zombie,name="Entity 4434",scores={generic_timer=4900..}] run scoreboard players set @s generic_timer 0
#
execute as @a at @s if entity @e[type=zombie,name="Entity 4434",nbt={HurtTime:10s},distance=..15] run stopsound @s voice
execute at @e[type=zombie,name="Entity 4434"] run particle minecraft:note ~ ~1.35 ~ 0.075 0.075 0.075 1 1
execute as @e[type=zombie,name="Entity 4434"] run scoreboard players add @s generic_timer3 1
execute as @e[type=zombie,name="Entity 4434",scores={generic_timer3=5000..}] run kill @s
#
execute as @e[type=zombie,name="Entity 4434"] at @s run tp @s ~ ~ ~ ~3.5 ~
execute as @e[type=zombie,name="Entity 4434"] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Entity 4434",scores={generic_timer2=10}] at @s run summon marker ^ ^ ^0.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"4434_projectile"}'}
execute at @e[type=zombie,name="Entity 4434",scores={generic_timer2=10}] run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 0.15 0.75
execute as @e[type=zombie,name="Entity 4434",scores={generic_timer2=10..}] run scoreboard players set @s generic_timer2 0
#
execute as @e[type=marker,name="4434_projectile"] run scoreboard players add @s generic_timer 1
execute as @e[type=marker,name="4434_projectile",scores={generic_timer=1}] at @s rotated as @e[type=zombie,name="Entity 4434",sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @e[type=marker,name="4434_projectile"] at @s run tp @s ^ ^ ^0.15
execute as @e[type=marker,name="4434_projectile"] at @s run effect give @a[gamemode=adventure,distance=..0.5] minecraft:wither 2 1 true
execute as @e[type=marker,name="4434_projectile"] at @s if entity @a[gamemode=adventure,distance=..0.5] run kill @s
execute as @e[type=marker,name="4434_projectile"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run kill @s
execute as @e[type=marker,name="4434_projectile"] at @s run particle minecraft:sweep_attack ~ ~0.95 ~ 0 0 0 0.5 1
execute as @e[type=marker,name="4434_projectile"] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0 1
execute as @e[type=marker,name="4434_projectile",scores={generic_timer=80..}] run kill @s