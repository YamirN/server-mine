execute as @e[type=zombie,name="Nightmare",tag=!bite,tag=!fire] run scoreboard players add @s generic_timer 1
#generic
execute as @e[type=zombie,name="Nightmare",scores={generic_timer=0},tag=!bite,tag=!fire] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:43}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Nightmare",scores={generic_timer=4},tag=!bite,tag=!fire] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:44}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Nightmare",scores={generic_timer=8},tag=!bite,tag=!fire] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:45}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Nightmare",scores={generic_timer=12},tag=!bite,tag=!fire] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:46}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Nightmare",scores={generic_timer=40},tag=!bite,tag=!fire] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:45}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Nightmare",scores={generic_timer=48},tag=!bite,tag=!fire] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:44}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Nightmare",scores={generic_timer=54},tag=!bite,tag=!fire] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:43}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
#
#execute as @e[type=zombie,name="Nightmare",scores={generic_timer=28}] at @s run particle minecraft:block redstone_block ~ ~1.25 ~ 0.25 0 0.25 0 3
#execute as @e[type=zombie,name="Nightmare",scores={generic_timer=28}] at @s run playsound minecraft:block.bone_block.hit master @a ~ ~ ~ 1 0
execute as @e[type=zombie,name="Nightmare",scores={generic_timer=80..}] run scoreboard players set @s generic_timer 0
#
#
#
execute as @e[type=zombie,name="Nightmare",tag=bite] run scoreboard players add @s generic_timer2 1
#
execute as @e[type=zombie,name="Nightmare",scores={generic_timer2=0},tag=bite] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:42}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Nightmare",scores={generic_timer2=4},tag=bite] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:40}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Nightmare",scores={generic_timer2=8},tag=bite] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:41}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Nightmare",scores={generic_timer2=48},tag=bite] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:40}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Nightmare",scores={generic_timer2=54},tag=bite] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:42}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
#
execute as @e[type=zombie,name="Nightmare",scores={generic_timer2=60},tag=bite] run tag @s remove bite
#
#
#
execute as @e[type=zombie,name="Nightmare",tag=fire] run scoreboard players add @s generic_timer2 1
#
execute as @e[type=zombie,name="Nightmare",scores={generic_timer2=0},tag=fire] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:42}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Nightmare",scores={generic_timer2=2},tag=fire] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:40}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Nightmare",scores={generic_timer2=4},tag=fire] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:41}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Nightmare",scores={generic_timer2=8},tag=fire] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:40}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
execute as @e[type=zombie,name="Nightmare",scores={generic_timer2=10},tag=fire] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:42}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F]}
#
execute as @e[type=zombie,name="Nightmare",scores={generic_timer2=10},tag=fire] run tag @s remove fire