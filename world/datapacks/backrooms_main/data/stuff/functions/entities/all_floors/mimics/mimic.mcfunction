execute as @e[type=zombie,name="Mimic",scores={generic_timer=0}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:11}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mimic",scores={generic_timer=2}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:12}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mimic",scores={generic_timer=4}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:13}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mimic",scores={generic_timer=6}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:14}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mimic",scores={generic_timer=10}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:14}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mimic",scores={generic_timer=12}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:13}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mimic",scores={generic_timer=14}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:12}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mimic",scores={generic_timer=16}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:11}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mimic",scores={generic_timer=18}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:10}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mimic",scores={generic_timer=20}] at @s run particle minecraft:smoke ~ ~1.25 ~ 0.25 0 0.25 0 3
execute as @e[type=zombie,name="Mimic",scores={generic_timer=20}] at @s run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ 0.75 0
execute as @e[type=zombie,name="Mimic",scores={generic_timer=20..}] at @s run tp @s ~ ~ ~ facing entity @p[distance=2.5..15,gamemode=adventure]
execute as @e[type=zombie,name="Mimic",scores={generic_timer=20}] at @s if block ~ ~-0.45 ~ air run playsound minecraft:block.chest.close master @a ~ ~ ~ 0.5 0
execute as @e[type=zombie,name="Mimic",scores={generic_timer=20..}] run scoreboard players set @s generic_timer 1
#
execute as @e[type=zombie,name="Mimic"] run scoreboard players add @s generic_timer 1
execute as @e[type=slime,name="mimic_mount"] at @s unless entity @e[type=zombie,name="Mimic",distance=..1] run kill @s
execute as @e[type=zombie,name="Mimic",nbt={HurtTime:10s}] at @s run playsound minecraft:entity.goat.horn_break master @a ~ ~ ~ 0.25 0