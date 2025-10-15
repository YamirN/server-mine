execute as @e[type=armor_stand,name="bacteria_stand",scores={generic_timer=2},tag=moving] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:21}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=armor_stand,name="bacteria_stand",scores={generic_timer=4},tag=moving] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:21}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=armor_stand,name="bacteria_stand",scores={generic_timer=6},tag=moving] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:20}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=armor_stand,name="bacteria_stand",scores={generic_timer=8},tag=moving] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:22}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=armor_stand,name="bacteria_stand",scores={generic_timer=10},tag=moving] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:20}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=armor_stand,name="bacteria_stand",scores={generic_timer=10..},tag=moving] run scoreboard players set @s generic_timer -1
#
execute as @e[type=armor_stand,name=bacteria_stand,scores={generic_timer=2},tag=moving] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.325 0
execute as @e[type=armor_stand,name=bacteria_stand,scores={generic_timer=6},tag=moving] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.325 0
execute as @e[type=armor_stand,name=bacteria_stand,scores={generic_timer2=200}] at @s run playsound minecraft:custom.bacteria_screech master @a ~ ~ ~ 1.75 1
execute as @e[type=armor_stand,name=bacteria_stand,scores={generic_timer2=200}] at @s run effect give @a[gamemode=adventure,distance=..20] minecraft:darkness 12 0 true
execute as @e[type=zombie,name=Bacteria] at @s run particle minecraft:dust 0 0 0 1.25 ~ ~2.5 ~ 0.75 1 0.75 0 1
#
execute as @e[type=armor_stand,name="bacteria_stand",tag=!display_entity,tag=moving] run scoreboard players add @s generic_timer 1
execute as @e[type=minecraft:armor_stand,name="bacteria_stand"] at @s unless entity @e[type=zombie,name="Bacteria",distance=..2] run kill @s
execute as @e[type=minecraft:armor_stand,name="bacteria_stand"] at @s rotated as @e[type=zombie,name="Bacteria",distance=..2] run tp @s ~ ~ ~ ~ ~
execute as @e[type=armor_stand,name="bacteria_stand"] at @s if entity @p[gamemode=adventure,distance=..50,tag=!display_entity] run scoreboard players add @s generic_timer2 1
execute as @e[type=armor_stand,name="bacteria_stand",scores={generic_timer2=800..}] run scoreboard players set @s generic_timer2 0
#
execute as @e[type=armor_stand,name="bacteria_stand"] at @s unless entity @e[distance=..2,type=zombie,name="Bacteria",nbt={Motion:[0.0,0.0,0.0]}] run tag @s add moving
execute as @e[type=armor_stand,name="bacteria_stand"] at @s if entity @e[distance=..2,type=zombie,name="Bacteria",nbt={Motion:[0.0,0.0,0.0]}] run tag @s remove moving
#
execute if entity @e[type=zombie,name=Bacteria,tag=!moving] as @e[type=armor_stand,name=bacteria_stand] run scoreboard players add @s generic_timer4 1
execute as @e[type=armor_stand,name="bacteria_stand",tag=!moving,scores={generic_timer4=0}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:20}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.00F]}
execute as @e[type=armor_stand,name="bacteria_stand",tag=!moving,scores={generic_timer4=30}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:18}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.00F]}
execute as @e[type=armor_stand,name="bacteria_stand",tag=!moving,scores={generic_timer4=35}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:19}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.00F]}
execute as @e[type=armor_stand,name="bacteria_stand",tag=!moving,scores={generic_timer4=50}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:18}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.00F]}
execute as @e[type=armor_stand,name="bacteria_stand",tag=!moving,scores={generic_timer4=60..}] run scoreboard players set @s generic_timer4 -1
#
execute as @e[type=zombie,name=Bacteria] if entity @e[type=armor_stand,name="bacteria_stand",tag=moving,tag=!display_entity] at @s if entity @p[gamemode=adventure,distance=..12] run scoreboard players add @s generic_timer3 1
execute as @e[type=zombie,name=Bacteria,scores={generic_timer3=400..}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"squid_ink",ReapplicationDelay:80,Radius:1f,RadiusPerTick:0.0215f,RadiusOnUse:-0.65f,Duration:1000,DurationOnUse:-60f,WaitTime:0,Effects:[{Id:2b,Amplifier:1b,Duration:200,ShowParticles:0b},{Id:15b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:17b,Amplifier:50b,Duration:200,ShowParticles:0b}]}
execute as @e[type=zombie,name=Bacteria,scores={generic_timer3=400..}] at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 1
execute as @e[type=zombie,name=Bacteria,scores={generic_timer3=400..}] at @a[gamemode=adventure,sort=random,limit=1] at @e[distance=30..75,type=marker,name=remover,limit=1,sort=random] run tp @s ~6 ~12 ~11
execute as @e[type=zombie,name=Bacteria,scores={generic_timer3=400..}] run scoreboard players set @s generic_timer3 0