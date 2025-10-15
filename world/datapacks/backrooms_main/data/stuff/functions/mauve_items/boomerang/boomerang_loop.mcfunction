#timer
execute as @e[name="boomerang_proj"] run scoreboard players add @s generic_timer 1
execute as @e[name="boomerang_proj",scores={generic_timer=100..}] run kill @s
#movement
execute as @e[name="boomerang_proj",scores={generic_timer=..20}] at @s run tp @s ^ ^ ^0.8
execute as @e[name="boomerang_proj",scores={generic_timer=25..}] at @s run tp @s ^ ^ ^0.6
#execute if entity @e[name=boomerang_proj,scores={generic_timer=21..}] as @a[tag=boomerang_out] if score @s uuid = @e[name=boomerang_proj,limit=1,sort=nearest] uuid at @e[name="boomerang_proj",limit=1,sort=nearest] rotated as @s run tp @e[name="boomerang_proj"] ~ ~ ~ ~ ~
execute as @e[name=boomerang_proj,tag=!hit_entity] at @s if entity @e[type=!player,type=!armor_stand,type=!marker,type=!item,type=!slime,distance=..1.5] run scoreboard players add @s generic_timer 20
execute as @e[name=boomerang_proj,tag=!hit_entity] at @s if entity @e[type=!player,type=!armor_stand,type=!marker,type=!item,type=!slime,distance=..1.5] run tag @s add hit_entity
#
execute as @e[name=boomerang_proj,scores={generic_timer=20..}] as @a[tag=boomerang_out] if score @s uuid = @e[name=boomerang_proj,limit=1,sort=nearest] uuid at @e[name="boomerang_proj",limit=1,sort=nearest] rotated as @s run tp @e[name="boomerang_proj"] ~ ~ ~ facing entity @s eyes
#hit block
execute as @e[name="boomerang_proj"] at @s unless block ~ ~ ~ #stuff:projectile_pass run playsound minecraft:entity.armor_stand.hit master @a ~ ~ ~ 0.85 0.75
execute as @e[name="boomerang_proj"] at @s unless block ~ ~ ~ #stuff:projectile_pass run particle minecraft:item warped_fungus_on_a_stick{CustomModelData:1} ~ ~ ~ 0.25 0.25 0.25 0.15 50 force
execute as @e[name="boomerang_proj"] at @s unless block ~ ~ ~ #stuff:projectile_pass as @a[limit=1,sort=nearest,scores={boomerang=1..}] run tellraw @s ["",{"selector":"@s ","color":"gold"},{"text":" Boomerang Cooldown: ","color":"gray"},{"score":{"name":"@s","objective":"boomerang_cd_seconds"},"color":"yellow"},{"text":"s","color":"yellow"}]
execute as @e[name="boomerang_proj"] at @s unless block ~ ~ ~ #stuff:projectile_pass run kill @s
#catch
execute as @a[gamemode=adventure] at @s positioned ~ ~1.5 ~ if entity @e[name=boomerang_proj,distance=..0.5,scores={generic_timer=30..}] run function stuff:mauve_items/boomerang/catch_boomerang
#damage to entities
execute as @e[name=boomerang_proj] at @s run effect give @e[type=!player,type=!armor_stand,type=!marker,type=!item,type=!slime,limit=1,distance=..1.5] minecraft:instant_health 1 0 true
execute as @e[name=boomerang_proj] at @s if entity @e[type=!player,type=!armor_stand,type=!marker,type=!item,type=!slime,distance=..1.5] run execute positioned ~ ~ ~ run particle minecraft:damage_indicator ~ ~ ~ 0 0 0 0.35 1
#add item damage
execute as @e[name=boomerang_proj,tag=!damaged] at @s if entity @e[type=!player,type=!armor_stand,type=!marker,type=!item,type=!slime,distance=..1.5] run scoreboard players add @s generic_timer2 1
execute as @e[name=boomerang_proj,scores={generic_timer2=1}] run tag @s add damaged
execute as @e[name=boomerang_proj,scores={generic_timer2=1..}] run scoreboard players add @p[tag=boomerang_out] dmg_boomerang 1
execute as @e[name=boomerang_proj,scores={generic_timer2=1..}] run scoreboard players set @s generic_timer2 0
#apply item damage
execute as @e[name=boomerang_proj] at @s store result entity @e[type=item,nbt={Item:{tag:{boomerang:1b}}},limit=1,sort=nearest] Item.tag.Damage int 1 run scoreboard players get @p[tag=boomerang_out] dmg_boomerang
#destroy broken item
execute as @a[scores={dmg_boomerang=100..},tag=boomerang_out] run function stuff:mauve_items/boomerang/broken_boomerang
#boomerang cooldown
execute as @a[scores={boomerang_cooldown=1..}] run scoreboard players remove @s boomerang_cooldown 1
execute as @a[scores={boomerang_cooldown=0}] run tag @s remove boomerang_out
#
#seconds thing (yes i hard coded it for some reason lol)
#
execute as @a[scores={boomerang=1..}] if score @s boomerang_cooldown matches 80..100 run scoreboard players set @s boomerang_cd_seconds 5
execute as @a[scores={boomerang=1..}] if score @s boomerang_cooldown matches 60..79 run scoreboard players set @s boomerang_cd_seconds 4
execute as @a[scores={boomerang=1..}] if score @s boomerang_cooldown matches 40..59 run scoreboard players set @s boomerang_cd_seconds 3
execute as @a[scores={boomerang=1..}] if score @s boomerang_cooldown matches 20..39 run scoreboard players set @s boomerang_cd_seconds 2
execute as @a[scores={boomerang=1..}] if score @s boomerang_cooldown matches 0..19 run scoreboard players set @s boomerang_cd_seconds 1