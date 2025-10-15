execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:light_gray_dye",tag:{rocket_rune:1b}}]},scores={crouch_time=1..,rocket_cooldown=0}] run function stuff:mauve_items/rocket_rune/rocket_activate
execute as @a[scores={rocket_cooldown=1..}] run scoreboard players remove @s rocket_cooldown 1
execute as @a[scores={rocket_cooldown=1}] run scoreboard players set @s crouch_time 0
execute as @a[scores={rocket_cooldown=1}] run tellraw @s {"text":"Rocket Rune ready!","color":"green"}
#
execute as @e[type=marker,name=rocket_proj] run function stuff:mauve_items/rocket_rune/rocket_projectile
#
execute as @a[scores={rocket_cooldown=0,rocket_rune=1}] at @s positioned ~ ~1.5 ~ positioned ^1 ^ ^0.25 run particle minecraft:crit ~ ~ ~ ^ ^ ^1000000 0.0000025 0 force @s
execute as @a[scores={rocket_cooldown=0,rocket_rune=1}] at @s positioned ~ ~1.5 ~ positioned ^-1 ^ ^0.25 run particle minecraft:crit ~ ~ ~ ^ ^ ^1000000 0.0000025 0 force @s