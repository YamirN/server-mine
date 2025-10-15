execute as @e[type=zombie,name="Entity 583"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 583",scores={generic_timer=510}] at @s run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 3.75 0
execute as @e[type=zombie,name="Entity 583",scores={generic_timer=510..}] run scoreboard players set @s generic_timer 0
execute at @e[type=zombie,name="Entity 583"] run particle minecraft:small_flame ~ ~1.75 ~ 0 0 0 0.0375 1 force
#
execute as @e[type=zombie,name="Entity 583"] at @s if entity @a[gamemode=adventure,distance=..12] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Entity 583",scores={generic_timer2=3}] at @s run summon armor_stand ^ ^ ^0.75 {Small:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"583_projectile"}'}
execute at @e[type=zombie,name="Entity 583",scores={generic_timer2=3}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.25 1.25
execute as @e[type=zombie,name="Entity 583",scores={generic_timer2=3..}] run scoreboard players set @s generic_timer2 0
#
execute as @e[type=armor_stand,name="583_projectile"] run scoreboard players add @s generic_timer 1
execute as @e[type=armor_stand,name="583_projectile",scores={generic_timer=0..1}] at @s run tp @s ~ ~ ~ facing entity @a[gamemode=adventure,sort=nearest,limit=1]
execute as @e[type=armor_stand,name="583_projectile"] at @s run tp @s ^ ^ ^0.3375
execute as @e[type=armor_stand,name="583_projectile"] at @s positioned ~ ~0.5 ~ run effect give @a[gamemode=adventure,distance=..0.75] minecraft:wither 2 10 true
execute as @e[type=armor_stand,name="583_projectile"] at @s if entity @a[gamemode=adventure,distance=..0.5] run kill @s
execute as @e[type=armor_stand,name="583_projectile"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run kill @s
execute as @e[type=armor_stand,name="583_projectile"] at @s run particle minecraft:small_flame ~ ~1.8 ~ 0.0025 0.0025 0.0025 0.0115 2
execute as @e[type=armor_stand,name="583_projectile",scores={generic_timer=40..}] run kill @s