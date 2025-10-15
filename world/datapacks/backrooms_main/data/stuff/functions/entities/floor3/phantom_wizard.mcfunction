execute as @e[type=zombie,name="Entity 6023"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 6023",scores={generic_timer=655}] at @s run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 3 0.25
execute as @e[type=zombie,name="Entity 6023",scores={generic_timer=655..}] run scoreboard players set @s generic_timer 0
execute as @e[type=zombie,name="Entity 6023"] at @s if entity @a[gamemode=adventure,distance=..20] run effect give @s minecraft:glowing 5 0 true
execute as @e[type=zombie,name="Entity 6023"] at @s if entity @a[gamemode=adventure,distance=..8] run effect give @s minecraft:slowness 1 1 true
#
execute as @e[type=zombie,name="Entity 6023"] at @s if entity @a[gamemode=adventure,distance=..16] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Entity 6023",scores={generic_timer2=180}] at @s run summon armor_stand ^ ^0.5 ^1.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bullet"],DisabledSlots:4144959,CustomName:'{"text":"6023_projectile"}'}
execute as @e[type=zombie,name="Entity 6023",scores={generic_timer2=180..}] run scoreboard players set @s generic_timer2 0
#
execute as @e[type=armor_stand,name="6023_projectile"] run scoreboard players add @s generic_timer 1
execute as @e[type=armor_stand,name="6023_projectile"] at @s run tp @s ^ ^ ^0.5
execute as @e[type=armor_stand,name="6023_projectile"] at @s run summon minecraft:evoker_fangs ~ ~ ~
execute as @e[type=armor_stand,name="6023_projectile"] at @s run particle minecraft:firework ~ ~0.5 ~ 0 0 0 0.35 2
execute as @e[type=armor_stand,name="6023_projectile",scores={generic_timer=140..}] run kill @s
#
execute as @e[type=armor_stand,name="6023_projectile",scores={generic_timer=0..1}] at @s run tp @s ~ ~ ~ facing entity @a[gamemode=adventure,sort=nearest,limit=1]
execute as @e[type=armor_stand,name="6023_projectile",scores={generic_timer=40..41}] at @s run tp @s ~ ~ ~ facing entity @a[gamemode=adventure,sort=nearest,limit=1]
execute as @e[type=armor_stand,name="6023_projectile",scores={generic_timer=100..101}] at @s run tp @s ~ ~ ~ facing entity @a[gamemode=adventure,sort=nearest,limit=1]