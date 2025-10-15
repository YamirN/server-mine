execute as @e[type=zombie,name="Mauve Mimic",scores={generic_timer=0}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:31}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mauve Mimic",scores={generic_timer=2}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:32}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mauve Mimic",scores={generic_timer=4}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:33}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mauve Mimic",scores={generic_timer=6}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:34}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mauve Mimic",scores={generic_timer=10}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:34}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mauve Mimic",scores={generic_timer=12}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:33}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mauve Mimic",scores={generic_timer=14}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:32}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mauve Mimic",scores={generic_timer=16}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:31}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mauve Mimic",scores={generic_timer=18}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:30}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Mauve Mimic",scores={generic_timer=20}] at @s run particle minecraft:witch ~ ~1 ~ 0.25 0 0.25 0 5
execute as @e[type=zombie,name="Mauve Mimic",scores={generic_timer=20}] at @s run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ 0.75 0
execute as @e[type=zombie,name="Mauve Mimic",scores={generic_timer=20..}] at @s run tp @s ~ ~ ~ facing entity @p[distance=2.5..15,gamemode=adventure]
execute as @e[type=zombie,name="Mauve Mimic",scores={generic_timer=20}] at @s if block ~ ~-0.45 ~ air run playsound minecraft:block.chest.close master @a ~ ~ ~ 0.5 0
execute as @e[type=zombie,name="Mauve Mimic",scores={generic_timer=20..}] run scoreboard players set @s generic_timer 1
#
execute as @e[type=zombie,name="Mauve Mimic"] run scoreboard players add @s generic_timer 1
execute as @e[type=slime,name="mauve_mimic_mount"] at @s unless entity @e[type=zombie,name="Mauve Mimic",distance=..1] run kill @s
execute as @e[type=zombie,name="Mauve Mimic",nbt={HurtTime:10s}] at @s run playsound minecraft:entity.goat.horn_break master @a ~ ~ ~ 0.25 0
#
execute as @e[type=zombie,name="Mauve Mimic"] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Mauve Mimic",scores={generic_timer2=95..}] at @s run function stuff:mimic_functions/mauve_mimic_fire
#
execute as @e[type=marker,name=mauve_projectile] run scoreboard players add @s generic_timer 1
execute as @e[type=marker,name=mauve_projectile,scores={generic_timer=..10}] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure]
execute as @e[type=marker,name=mauve_projectile] at @s run tp @s ^ ^ ^0.175
execute as @e[type=marker,name=mauve_projectile] at @s unless block ~ ~ ~ #stuff:projectile_pass run tp @s ~ ~ ~ facing entity @p[gamemode=adventure] eyes
execute as @e[type=marker,name=mauve_projectile,scores={generic_timer=450..}] run kill @s
execute as @e[type=marker,name=mauve_projectile] at @s run particle minecraft:dust_color_transition 1 1 1 1 1 0 1 ~ ~ ~ 0 0 0 0 3
execute as @e[type=marker,name=mauve_projectile] at @s positioned ~ ~-1 ~ as @p[gamemode=adventure,distance=..0.875] run function stuff:mimic_functions/projectile_hit_player