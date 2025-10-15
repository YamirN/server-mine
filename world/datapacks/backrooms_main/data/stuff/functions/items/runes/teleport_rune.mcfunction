execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:pink_dye",tag:{teleport_rune:1b}}]},scores={crouch_time=1..,teleport_cooldown=0}] run function stuff:mauve_items/teleport_rune/teleport_activate
execute as @a[scores={teleport_cooldown=1..}] run scoreboard players remove @s teleport_cooldown 1
execute as @a[scores={teleport_cooldown=1}] run scoreboard players set @s crouch_time 0
execute as @a[scores={teleport_cooldown=1}] run tellraw @s {"text":"Teleport Rune ready!","color":"green"}
#
execute as @a[scores={teleport_cooldown=0,teleport_rune=1}] at @s positioned ~ ~1 ~ run particle minecraft:dust_color_transition 0.75 0 1 0.5 1 0.75 0.75 ^ ^ ^7 0 0.125 0 0 3 force @s