execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:honeycomb",tag:{healing_rune:1b}}]},scores={crouch_time=1..,healing_cooldown=0}] run function stuff:mauve_items/healing_rune/healing_activate
execute as @a[scores={healing_cooldown=1..}] run scoreboard players remove @s healing_cooldown 1
execute as @a[scores={healing_cooldown=1}] run scoreboard players set @s crouch_time 0
execute as @a[scores={healing_cooldown=1}] run tellraw @s {"text":"Healing Rune ready!","color":"green"}
#
execute as @a[scores={healing_cooldown=0,healing_rune=1}] at @s positioned ~ ~ ~ run particle minecraft:landing_honey ~ ~ ~ 0.25 0.1 0.25 0 1 force @s