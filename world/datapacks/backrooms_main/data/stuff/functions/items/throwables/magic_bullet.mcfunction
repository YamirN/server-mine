execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magicbullet:1b}}},scores={rightclick=1..}] at @s if block ^ ^1 ^1 #stuff:projectile_pass run summon marker ^ ^0.5 ^1 {NoGravity:1b,Invulnerable:1b,Small:1b,NoBasePlate:1b,PersistenceRequired:1b,CustomName:'{"text":"magic_bullet"}',Tags:["new_bullet","bullet"],Invisible:1b}
execute at @e[type=minecraft:marker,name="magic_bullet",tag=new_bullet] as @p rotated as @s run tp @e[type=marker,name="magic_bullet",tag=new_bullet] ~ ~ ~ ~ ~
execute as @e[type=minecraft:marker,name="magic_bullet",tag=new_bullet] at @s run clear @p minecraft:carrot_on_a_stick{magicbullet:1b} 1
#execute as @e[type=minecraft:marker,name="magic_bullet",tag=new_bullet] at @s run scoreboard players set @p rightclick 0
execute as @e[type=marker,name=magic_bullet,tag=new_bullet] run tag @s remove new_bullet
#
execute as @e[type=minecraft:marker,name="magic_bullet"] at @s run tp @s ^ ^ ^1.25
execute as @e[type=marker,name="magic_bullet"] run scoreboard players add @s generic_timer 1
execute as @e[type=marker,name="magic_bullet",scores={generic_timer=40..}] run kill @s
#
execute as @e[type=marker,name="magic_bullet",scores={generic_timer=1}] at @s run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 1.5
execute as @e[type=minecraft:marker,name="magic_bullet"] at @s run particle minecraft:end_rod ~ ~1 ~ 0.05 0.05 0.05 0.0175 3 force
execute as @e[type=minecraft:marker,name="magic_bullet"] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.0875 1 force
#
execute as @e[type=marker,name="magic_bullet"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 2 1.5
execute as @e[type=marker,name="magic_bullet"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run particle minecraft:poof ~ ~1 ~ 0.25 0.25 0.25 0.25 50 force
execute as @e[type=minecraft:marker,name="magic_bullet"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run kill @s
execute as @e[type=marker,name="magic_bullet"] at @s if entity @e[type=!player,type=!armor_stand,type=!marker,distance=..1] run playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 1.15
execute as @e[type=marker,name="magic_bullet"] at @s run effect give @e[type=!player,type=!marker,type=!armor_stand,limit=1,distance=..1] minecraft:instant_health 1 2 true
execute as @e[type=marker,name="magic_bullet"] at @s run effect give @e[type=!player,type=!marker,type=!armor_stand,limit=1,distance=..1] minecraft:slowness 3 2 true
execute as @e[type=marker,name="magic_bullet"] at @s if entity @e[type=!player,type=!armor_stand,type=!marker,distance=..1] run execute positioned ~ ~ ~ run particle minecraft:damage_indicator ~ ~1 ~ 0 0 0 0.75 8