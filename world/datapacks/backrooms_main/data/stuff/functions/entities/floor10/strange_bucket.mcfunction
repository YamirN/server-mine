execute as @e[type=zombie,name="Entity 3027"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 3027",scores={generic_timer=430}] at @s run playsound minecraft:item.bucket.fill master @a ~ ~ ~ 3.75 0.75
execute as @e[type=zombie,name="Entity 3027",scores={generic_timer=430..}] run scoreboard players set @s generic_timer 0
execute at @e[type=zombie,name="Entity 3027"] run particle minecraft:fishing ~ ~1.15 ~ 0.05 0.05 0.05 0.05 1 force
#
execute as @e[type=zombie,name="Entity 3027"] at @s if entity @a[gamemode=adventure,distance=..25] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Entity 3027",scores={generic_timer2=80}] at @s run summon armor_stand ^ ^-0.5 ^1.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,Passengers:[{id:"minecraft:pufferfish",DeathLootTable:"backrooms:chests/nothing",Tags:["small_entity"],CustomName:'{"text":"Entity 3027A"}'}],CustomName:'{"text":"3027_projectile"}'}
execute as @e[type=zombie,name="Entity 3027",scores={generic_timer2=80}] at @s run playsound minecraft:entity.fishing_bobber.throw master @a ~ ~ ~ 1 1
execute as @e[type=zombie,name="Entity 3027",scores={generic_timer2=80..}] run scoreboard players set @s generic_timer2 0
execute as @e[type=armor_stand,name="3027_projectile"] run scoreboard players add @s generic_timer 1
execute as @e[type=armor_stand,name="3027_projectile",scores={generic_timer=0..1}] at @s run tp @s ~ ~ ~ facing entity @a[gamemode=adventure,sort=nearest,limit=1]
execute as @e[type=armor_stand,name="3027_projectile"] at @s run tp @s ^ ^-0.0125 ^0.625
execute as @e[type=armor_stand,name="3027_projectile"] at @s if entity @a[gamemode=adventure,distance=..0.5] run kill @s
execute as @e[type=armor_stand,name="3027_projectile"] at @s unless block ^ ^2 ^0.5 #stuff:projectile_pass run kill @s
execute as @e[type=armor_stand,name="3027_projectile"] at @s run particle minecraft:fishing ~ ~1.9 ~ 0 0 0 0.05 10
execute as @e[type=armor_stand,name="3027_projectile",scores={generic_timer=32..}] run kill @s