execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:green_dye",tag:{seeker_rune:1b}}]},scores={crouch_time=1..,seeker_cooldown=0}] run function stuff:mauve_items/seeker_rune/seeker_activate
execute as @a[scores={seeker_cooldown=1..}] run scoreboard players remove @s seeker_cooldown 1
execute as @a[scores={seeker_cooldown=1}] run scoreboard players set @s crouch_time 0
execute as @a[scores={seeker_cooldown=1}] run tellraw @s {"text":"Seeker Rune ready!","color":"green"}
#
execute as @a[scores={seeker_cooldown=0,seeker_rune=1}] at @s run particle minecraft:sculk_charge 0 ~ ~0.25 ~ 1 0 1 0 2 force @s