execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{knife:1b}}},scores={rightclick=1..}] at @s if block ^ ^1 ^1 #stuff:projectile_pass run summon marker ^ ^0.5 ^1 {NoGravity:1b,Invulnerable:1b,Small:1b,NoBasePlate:1b,PersistenceRequired:1b,CustomName:'{"text":"flying_knife"}',Tags:["new_knife"],Invisible:1b}
execute at @e[type=minecraft:marker,name="flying_knife",tag=new_knife] as @p rotated as @s run tp @e[type=marker,name="flying_knife",tag=new_knife] ~ ~ ~ ~ ~
execute as @e[type=marker,name="flying_knife",tag=new_knife] at @s run clear @p minecraft:carrot_on_a_stick{knife:1b} 1
#execute as @e[type=minecraft:marker,name="flying_knife",tag=new_knife] at @s run scoreboard players set @p rightclick 0
execute as @e[type=marker,tag=new_knife] run tag @s remove new_knife
#
execute as @e[type=minecraft:marker,name="flying_knife",scores={generic_timer=..20}] at @s run tp @s ^ ^ ^0.75
execute as @e[type=marker,name="flying_knife"] run scoreboard players add @s generic_timer 1
execute as @e[type=marker,name="flying_knife",scores={generic_timer=20}] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[type=marker,name="flying_knife",scores={generic_timer=20..}] at @s run tp @s ~ ~-0.5 ~
execute as @e[type=marker,name="flying_knife",scores={generic_timer=40..}] run kill @s
#
execute as @e[type=marker,name="flying_knife",scores={generic_timer=1}] at @s run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 0.5 0
execute as @e[type=minecraft:marker,name="flying_knife"] at @s run particle minecraft:crit ~ ~0.9 ~ 0.15 0.15 0.15 0.05 5 force
execute as @e[type=minecraft:marker,name="flying_knife"] at @s run particle minecraft:electric_spark ~ ~1 ~ 0 0 0 1 2 force
execute as @e[type=marker,name="flying_knife"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run playsound minecraft:item.shield.break master @a ~ ~ ~ 2 1.5
execute as @e[type=marker,name="flying_knife"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run particle minecraft:item carrot_on_a_stick{CustomModelData:2} ~ ~1.15 ~ 0.25 0.25 0.25 0.125 50 force
execute as @e[type=minecraft:marker,name="flying_knife"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run kill @s
execute as @e[type=marker,name="flying_knife"] at @s if entity @e[type=!player,type=!armor_stand,type=!marker,distance=..0.75] run playsound minecraft:entity.player.hurt master @a ~ ~ ~ 1 1.15
execute as @e[type=marker,name="flying_knife"] at @s run effect give @e[type=!player,type=!marker,type=!armor_stand,limit=1,distance=..0.75] minecraft:instant_health 1 1 true
execute as @e[type=marker,name="flying_knife"] at @s if entity @e[type=!player,type=!armor_stand,type=!marker,distance=..0.75] run execute positioned ~ ~ ~ run particle minecraft:damage_indicator ~ ~1 ~ 0 0 0 0.75 8
execute as @e[type=marker,name="flying_knife"] at @s if entity @e[type=!player,type=!armor_stand,type=!marker,distance=..0.75] run kill @s