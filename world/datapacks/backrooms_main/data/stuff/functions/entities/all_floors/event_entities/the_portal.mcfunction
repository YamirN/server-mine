execute as @e[type=marker,name="the_portal"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=marker,name="the_portal",scores={generic_timer=200}] at @s run playsound minecraft:block.portal.ambient master @a ~ ~ ~ 2.25 0
execute as @e[type=marker,name="the_portal",scores={generic_timer=200..}] run scoreboard players set @s generic_timer 0
#
execute as @e[type=marker,name="the_portal"] run scoreboard players add @s generic_timer2 1
execute as @e[type=marker,name="the_portal",scores={generic_timer2=4500..}] run kill @s
#
execute as @e[type=marker,name="the_portal"] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=marker,name="the_portal"] at @s run particle minecraft:dust_color_transition 0.25 0 0 1.5 1 0 0 ^ ^0.5 ^1 0 0 0 0 1
execute as @e[type=marker,name="the_portal"] at @s run particle minecraft:dust_color_transition 0.25 0 0 1.5 1 0 0 ^ ^0.5 ^-1 0 0 0 0 1
execute as @e[type=marker,name="the_portal"] at @s run particle minecraft:dust_color_transition 0.25 0 0 1.5 1 0 0 ^1 ^0.5 ^ 0 0 0 0 1
execute as @e[type=marker,name="the_portal"] at @s run particle minecraft:dust_color_transition 0.25 0 0 1.5 1 0 0 ^-1 ^0.5 ^ 0 0 0 0 1
execute as @e[type=marker,name="the_portal"] at @s run particle minecraft:small_flame ~ ~0.25 ~ 0.5 0.15 0.5 0.05 1 force
#
execute as @e[type=marker,name="the_portal"] at @s run effect give @a[gamemode=adventure,distance=..1,limit=1,sort=nearest] minecraft:blindness 2 0 true
#
execute as @e[type=marker,name="the_portal"] at @s as @a[gamemode=adventure,distance=..1,limit=1,sort=nearest] run tag @a add in_portal
#
execute as @e[type=marker,name="the_portal"] at @s as @a[gamemode=adventure,distance=..1,limit=1,sort=nearest] run tag @a add teleporting
execute as @e[type=marker,name="the_portal"] at @s as @a[gamemode=adventure,distance=..1,limit=1,sort=nearest] run tp @a 64.0001 18 96.0001
execute as @a[tag=teleporting] at @s run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 0
execute as @a[tag=teleporting] run scoreboard players set @e[type=marker,name="the_portal"] generic_timer2 3880
execute if entity @a[tag=teleporting] run setblock 53 18 101 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
execute if entity @a[tag=teleporting] run setblock 69 18 108 barrel[facing=up]{LootTable:"backrooms:chests/weapon_chest"} destroy
execute if entity @a[tag=teleporting] run setblock 75 18 90 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
execute if entity @a[tag=teleporting] run setblock 63 18 84 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
execute if entity @a[tag=teleporting] run summon husk 61.5 18 104.5 {Silent:0b,PersistenceRequired:1b,Health:900f,Tags:["small_entity"],CustomName:'{"text":"Reddred"}',ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1623083277,405424282,-1705826693,-1745505858],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTRkNjYxZTE0YTQ4NjM2NWQ3OWZiMGNiZTdiYWQ1MjAzZDQ5YzBlY2RlZjBhMGFmMmM5MDFhOGVlMzI5In19fQ=="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:900},{Name:generic.follow_range,Base:100},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:0.255},{Name:generic.attack_damage,Base:9},{Name:generic.armor,Base:4},{Name:generic.attack_knockback,Base:2}]}
execute if entity @a[tag=teleporting] run kill @e[type=item]
execute as @a[tag=teleporting] run tag @s remove teleporting
#
execute as @a[tag=in_portal] run scoreboard players add @s the_portal_timer 1
execute as @a[scores={the_portal_timer=600}] run function stuff:random_tp
execute as @a[scores={the_portal_timer=600}] run tag @s remove in_portal
execute as @a[scores={the_portal_timer=600}] run kill @e[type=husk,name="Reddred"]
execute at @a[scores={the_portal_timer=600}] run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 0
execute as @a[scores={the_portal_timer=600..}] run scoreboard players set @s the_portal_timer 0
#
execute as @a[tag=in_portal] run effect give @s minecraft:blindness 2 0 true
execute as @a[tag=in_portal] run effect give @s minecraft:slowness 2 1 true