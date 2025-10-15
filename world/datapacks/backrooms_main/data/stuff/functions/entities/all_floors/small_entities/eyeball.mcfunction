execute as @e[type=zombie,name="Entity 718"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 718",scores={generic_timer=505}] at @s run playsound minecraft:entity.slime.squish master @a ~ ~ ~ 2.5 0.25
execute as @e[type=zombie,name="Entity 718",scores={generic_timer=505..}] run scoreboard players set @s generic_timer 0
#
execute as @e[type=zombie,name="Entity 718"] at @s if entity @a[gamemode=adventure,distance=..20] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Entity 718",scores={generic_timer2=35}] at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"718_projectile"}'}
execute at @e[type=zombie,name="Entity 718",scores={generic_timer2=35}] run playsound minecraft:entity.slime.jump master @a ~ ~ ~ 0.5 0.5
execute as @e[type=zombie,name="Entity 718",scores={generic_timer2=35..}] run scoreboard players set @s generic_timer2 0
#
execute as @e[type=armor_stand,name="718_projectile"] run scoreboard players add @s generic_timer 1
execute as @e[type=armor_stand,name="718_projectile",scores={generic_timer=0..5}] at @s run tp @s ~ ~ ~ facing entity @a[gamemode=adventure,sort=nearest,limit=1]
execute as @e[type=armor_stand,name="718_projectile"] at @s run tp @s ^ ^ ^0.45
execute as @e[type=armor_stand,name="718_projectile"] at @s run effect give @a[gamemode=adventure,distance=..0.5] minecraft:wither 2 1 true
execute as @e[type=armor_stand,name="718_projectile"] at @s if entity @a[gamemode=adventure,distance=..0.5] run kill @s
execute as @e[type=armor_stand,name="718_projectile"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run kill @s
#
execute as @e[type=armor_stand,name="718_projectile"] at @s run particle minecraft:block moss_block ~ ~1 ~ 0.05 0.05 0.05 0.5 5
execute as @e[type=armor_stand,name="718_projectile",scores={generic_timer=200..}] run kill @s