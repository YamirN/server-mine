execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:cyan_dye",tag:{shock_rune:1b}}]},scores={crouch_time=1..,shock_cooldown=0}] run function stuff:mauve_items/shock_rune/shock_activate
execute as @a[scores={shock_cooldown=1..}] run scoreboard players remove @s shock_cooldown 1
execute as @a[scores={shock_cooldown=1}] run scoreboard players set @s crouch_time 0
execute as @a[scores={shock_cooldown=1}] run tellraw @s {"text":"Shock Rune ready!","color":"green"}
#
execute as @a[scores={shock_cooldown=0,shock_rune=1}] at @s run particle minecraft:wax_off ~ ~0.05 ~ 0.25 0 0.25 3 1 force @s