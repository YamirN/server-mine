execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:brown_dye",tag:{barricade_rune:1b}}]},scores={crouch_time=1..,barricade_cooldown=0}] run function stuff:mauve_items/barricade_rune/barricade_activate
execute as @a[scores={barricade_cooldown=1..}] run scoreboard players remove @s barricade_cooldown 1
execute as @a[scores={barricade_cooldown=1}] run scoreboard players set @s crouch_time 0
execute as @a[scores={barricade_cooldown=1}] run tellraw @s {"text":"Barricade Rune ready!","color":"green"}
#
execute as @e[type=marker,name=barricade_stand] run function stuff:mauve_items/barricade_rune/barricade_stand
#
execute as @a[scores={barricade_cooldown=0,barricade_rune=1}] at @s positioned ~ ~0.65 ~ run particle minecraft:dust_color_transition 0.5 0.5 0.5 1.25 0 0 0 ^ ^ ^2.65 0 0.125 0 0 1 force @s